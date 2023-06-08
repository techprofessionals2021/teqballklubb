<?php

namespace App\Http\Controllers;

use App\Models\CombineSubscriptionPlanProgram;
use App\Models\ExerciseProgress;
use App\Models\MySubscription;
use App\Models\SetupFixedProgram;
use App\Models\Subscription as UserSubscription;
use App\Models\ProgramSetup;
use App\Models\SetupProgram;
use App\Models\Statistic;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Laravel\Cashier\Subscription;
use phpDocumentor\Reflection\Type;

class FrontUserController extends Controller
{
    protected $stripe;

    public function __construct()
    {

        $this->stripe = new \Stripe\StripeClient(Config::get('app.stripe_secret'));
    }
    /**
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index()
    {
        $user = Auth::user();
//        $userPrograms = ProgramSetup::with('setupProgramsByRegProgram.programWithVideo.exVideo')
//            ->where('user_id',$user->id)->get();

//        New work for users Subscription
//        $userSubsriptions = UserSubscription::with(['subsItem'])->where('user_id',$user->id)->first();
//
//        $userSubLists = MySubscription::with(['getProgramSetupBySubscription'])
//            ->where('stripe_plan',$userSubsriptions->subsItem->stripe_product)
//            ->orWhere('stripe_plan_6',$userSubsriptions->subsItem->stripe_product)
//            ->first();
//
//        $userProgLists = $userSubLists->getProgramSetupBySubscription->pluck('program_setup_id')->toArray();
//
//        $userPrograms = ProgramSetup::with('setupProgramsByRegProgram.programWithVideo.exVideo')
//            ->whereIn('id',$userProgLists)->get();
//============
        $userSubsriptions = UserSubscription::with(['subsItem'])->where('user_id',$user->id)->get();
        $userProgLists = [];
        $userProgIds = [];
        foreach ($userSubsriptions as $userSubs){
            $userSubLists = MySubscription::with(['getProgramSetupBySubscription'])
                ->where('stripe_plan',$userSubs->subsItem->stripe_product)
                ->orWhere('stripe_plan_6',$userSubs->subsItem->stripe_product)
                ->first();
            if (isset($userSubLists)){
                if (count($userSubLists->getProgramSetupBySubscription) == 0){
                    continue;
                }
                array_push($userProgLists, $userSubLists->getProgramSetupBySubscription->pluck('program_setup_id')->toArray());
            }
        }
        foreach ($userProgLists as $progIdsMain){
            foreach ($progIdsMain as $progIds){
                $userProgIds[$progIds]= $progIds;
            }
        }

        $userSetupFixedPrograms = SetupFixedProgram::with('setupProgramsByRegProgram.programWithVideo.exVideo')
            ->whereIn('id',$userProgIds)->get(); // form subscription

//        $userPrograms = ProgramSetup::with('setupProgramsByRegProgram.programWithVideo.exVideo')
//            ->whereIn('id',$userProgIds)->orWhere('user_id',$user->id)->get();

        $userPrograms = ProgramSetup::with('setupProgramsByRegProgram.programWithVideo.exVideo')
            ->where('user_id',$user->id)->get(); // directly give by admin

//        $usersSubscriptions = CombineSubscriptionPlanProgram::with('subscription')->where('user_id',$user->id)->get();
        $allUserSubLists = MySubscription::with(['getProgramSetupBySubscription','programSetup','group','combineSubsProgram.subscription'])->where('group_id',$user->group_id)->get();
//        dd($allUserSubLists);
        //for user subscription ends auto updates
        foreach ($allUserSubLists as $item){
            if (isset($item->combineSubsProgram) && $item->combineSubsProgram->user_id == $user->id){
                $subsInfo = $item->combineSubsProgram->subscription;
                if ($subsInfo->ends_at == null){
                    //dd($subsInfo->subscription_ends_at , $subsInfo->created_at);
                    if ($subsInfo->subscription_ends_at >= $subsInfo->created_at ) {
                        $remaining_days = Carbon::now()->diffInDays(Carbon::parse($subsInfo->subscription_ends_at))+1;
                    } else {
                        $remaining_days = 0;
                    }
                    if ($remaining_days == 0){
                        $subsInfo->subscription_ends_at = null;

                        $subsInfo->save();
                        if ($item->combineSubsProgram->is_6_month == 1) {
                            $subsInfo->subscription_ends_at = date('Y-m-d h:i:s',strtotime(Carbon::now()->subMonths(-6)));
                        } else {
                            $subsInfo->subscription_ends_at = date('Y-m-d h:i:s',strtotime(Carbon::now()->subMonths(-1)));
                        }
                        $subsInfo->save();
                    }
                }
            }

        }

        return view('user.main-info',['userPrograms' => $userPrograms,'userSetupFixedPrograms' => $userSetupFixedPrograms]);
    }


    public function myVideos($id,$type)
    {
        $user = Auth::user();

//        $userPrograms = ProgramSetup::with('setupProgramsByRegProgram.programWithVideo.exVideo')
//            ->where('user_id',$user->id)->get();

        $userSubsriptions = UserSubscription::with(['subsItem'])->where('user_id',$user->id)->get();
        $userProgLists = [];
        $userProgIds = [];
        foreach ($userSubsriptions as $userSubs){
            $userSubLists = MySubscription::with(['getProgramSetupBySubscription'])
                ->where('stripe_plan',$userSubs->subsItem->stripe_product)
                ->orWhere('stripe_plan_6',$userSubs->subsItem->stripe_product)
                ->first();
            if (isset($userSubLists)){
                if (count($userSubLists->getProgramSetupBySubscription) == 0){
                    continue;
                }
                array_push($userProgLists, $userSubLists->getProgramSetupBySubscription->pluck('program_setup_id')->toArray());
            }
        }
        foreach ($userProgLists as $progIdsMain){
            foreach ($progIdsMain as $progIds){
                $userProgIds[$progIds]= $progIds;
            }
        }

        $userSetupFixedPrograms = SetupFixedProgram::with('setupProgramsByRegProgram.programWithVideo.exVideo')
            ->whereIn('id',$userProgIds)->get(); // form subscription

        $userPrograms = ProgramSetup::with('setupProgramsByRegProgram.programWithVideo.exVideo')
            ->where('user_id',$user->id)->get(); // directly give by admin

        if($type == 'setup'){
            $programInfo = ProgramSetup::with('setupProgramsByRegProgram.programWithVideo.exVideo')
//            ->whereIn('id',$userProgIds)->orWhere('id',$id)->get();
//            ->where('user_id',$user->id)
                ->where('id',$id)->first();

        }elseif ($type == 'subs'){
            $programInfo = SetupFixedProgram::with('setupProgramsByRegProgram.programWithVideo.exVideo')
                ->where('id',$id)->first(); // form subscription
        }else{
            return redirect()->back()->with('error', 'error');
        }

//        if (!isset($programInfo)){
//            return redirect()->route('userInfo')->with('error', 'Video Not Found !');
//        }

//        $userSetupPrograms = SetupProgram::with('programWithVideo')->where('register_program_id',$id)->where('user_id',$user->id)->orderBy('sort','asc')->get();
//        $userSetupPrograms = SetupProgram::with('programWithVideo')->where('register_program_id',$id)->orderBy('sort','asc')->get();

//        return view('user.my-videos',['userPrograms' => $userPrograms ,'userSetupFixedPrograms' => $userSetupFixedPrograms ,'programInfo' => $programInfo ,'userSetupPrograms' => $userSetupPrograms]);
        return view('user.my-videos',['userPrograms' => $userPrograms ,'userSetupFixedPrograms' => $userSetupFixedPrograms ,'programInfo' => $programInfo ]);
    }


    /**
     * @param Request $request
     * @return false|string
     */
    public function fetchExerciseProgressRecordById(Request $request)
    {
        $user = Auth::user();

        $userExercises = ExerciseProgress::where('setup_program_id', $request->setup_program_id)
            ->where('user_id', $user->id)->get();
        $body = '';
        if (count($userExercises) != 0) {
            foreach ($userExercises as $key => $value) {
                $createDate = date('d-m-Y' , strtotime($value->created_at)) ;
                $body .= "<tr><td>$value->set</td><td>$value->rep</td><td>$value->weight</td><td>$value->duration</td><td>$value->break</td><td>$value->distance</td><td>$value->puls</td><td>$value->bevegelighet</td><td>$value->hastighet</td><td>$createDate</td></tr>"; // if this not working try below
//          $body[$key] = "<option value='".$value->id."'>".$value->name."</option>";  // Todo  Resolved
            }
            $bod['status'] = 1;
            $bod['body'] = $body;
        } else {
            $body = "<tr><td colspan='7' class='text-center'>Ingen progresjon for øvelse funnet!</td></tr>";
            $bod['status'] = 0;
            $bod['body'] = $body;
        }

        $response = json_encode($bod);
        return $response;
    }

    /**
     * @param Request $request
     * @return bool
     */
    public function submitExerciseProgressRecord(Request $request)
    {
        $user = Auth::user();
        $userExercises = new ExerciseProgress();

        $userExercises->setup_program_id = $request->setupprogid;
        $userExercises->user_id = $user->id;

        $userExercises->set = $request->sett;
        $userExercises->rep = $request->rep;
        $userExercises->weight = $request->weight;
        $userExercises->duration = $request->duration;
        $userExercises->break = $request->break;
        $userExercises->distance = $request->distance;
        $userExercises->puls = $request->puls;
        $userExercises->bevegelighet = $request->bevegelighet;
        $userExercises->hastighet = $request->hastighet;
        $userExercises->save();


        $response['status'] = true;
        return json_encode($response);
//        return redirect()->back()->with('success', 'Progresjon for øvelse registrert');
    }


    public function submitSamtykkForm(){

        $user = User::find(auth()->id());
        $user->consent = 1;
        $user->save();
        return true;
//        return redirect()->back();
    }



    public function registerActivityInfo(){

        $user = Auth::user();

        $coaches = User::with('coachInfo')->whereIs('coach','coach-responsible')->get();

        return view('user.service', ['user' => $user, 'coaches' => $coaches]);

    }

    /**
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     * @throws \Stripe\Exception\ApiErrorException
     */
    public function userProfileInfo(){

        $subscriptions = Subscription::where('user_id', auth()->id())->get();

        $user = Auth::user();
        $position = ['Målvakt','Forsvarspiller','Midtbanespiller','Angrepsspiller/Spiss','Ikke fotballspiller'];
        $preferredShooterFoot = ['Høyre','Venstre','Begge ben','Ikke fotballspiller'];
        $dateOfBirth = Carbon::parse($user->dob)->diff(Carbon::now())->format('%y '.__('custom.year').', %m '.__('custom.month').'(er) og %d '.__('custom.day').'(er)');

        $usersCurrentPlan = $user->subscriptions();

//      $usersStripPlans = $this->stripe->subscriptions->all(['customer' => $user->stripe_id]);

        $usersAllSubscriptions = UserSubscription::with('subsItem.product.programSetup','subsItem.product6.programSetup')->where('user_id',$user->id)->get();

        return view('user.profile', ['user' => $user, 'dateOfBirth' => $dateOfBirth, 'position' => $position, 'preferredShooterFoot' => $preferredShooterFoot, 'usersAllSubscriptions' => $usersAllSubscriptions]);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function submitUserProfileInfo(Request $request){
        $user = Auth::user();
        $stats = Statistic::where('user_id',$user->id)->first();
        if (!isset($stats)){
            $stats = new Statistic();
            $stats->user_id = $user->id;
            $stats->save();
        }
        $stats->height = $request->height;
        $stats->weight = $request->weight;
//       $heightsqInMeter = ($request->height*$request->height);
        $heightCmToMeterToSq = ($request->height/100)*($request->height/100);
        $stats->bmi = round($request->weight/$heightCmToMeterToSq ,2);
        $stats->save();

        $userInfo = User::where('id',$user->id)->first();
        $userInfo->position = $request->position;
        $userInfo->foretrukket = $request->foretrukket;
        $userInfo->maxHeartRate = $request->maxHeartRate;
        $userInfo->fat = $request->fat;
        $userInfo->save();

        return redirect()->route('userProfileInfo')->with('success', 'Rediger Personlig Data Successfully');
    }






}
