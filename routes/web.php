<?php

use App\Http\Controllers\AnthropometricController;
use App\Http\Controllers\BlogCategoryController;
use App\Http\Controllers\CaseWorkerController;
use App\Http\Controllers\CoachController;
use App\Http\Controllers\EventController;
use App\Http\Controllers\ExerciseCategoryController;
use App\Http\Controllers\ExerciseTypeController;
use App\Http\Controllers\FootballController;
use App\Http\Controllers\FrontSubscriptionController;
use App\Http\Controllers\FrontUserController;
//use App\Http\Controllers\FullCalendarEventMasterController;
use App\Http\Controllers\FullCalenderController;
use App\Http\Controllers\GroupController;
use App\Http\Controllers\IntensityController;
use App\Http\Controllers\LangController;
use App\Http\Controllers\MmCenterController;
use App\Http\Controllers\PainCategoryController;
use App\Http\Controllers\ProfessionController;
use App\Http\Controllers\ProgramSetupController;
use App\Http\Controllers\ProgramWithVideoController;
use App\Http\Controllers\PtClipboardController;
use App\Http\Controllers\RegisterActivityController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\SetupFixedProgramController;
use App\Http\Controllers\StatisticController;
use App\Http\Controllers\Stats3dScreeningController;
use App\Http\Controllers\StatsQuestionController;
use App\Http\Controllers\StatsTesterController;
use App\Http\Controllers\MySubscriptionController;
use App\Http\Controllers\SubscriptionController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\VideoController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/cache-clear', function() {
        Artisan::call('config:clear');
        Artisan::call('config:cache');
        Artisan::call('cache:clear');
        Artisan::call('route:clear');
        Artisan::call('route:cache');
        Artisan::call('view:clear');
        Artisan::call('view:cache');

    return redirect()->route('user.index')->with('success', 'Cache Clear Successfully');
});

Route::get('/', function () {
//    return view('welcome');
//    return view('auth.login');
    return redirect()->route('login');
});

Route::get('/blank-index', function () {
    return view('admin.blank.index');
});

Route::get('/blank-form', function () {
    return view('admin.blank.form');
});

Auth::routes();

Route::get('lang/change', [LangController::class, 'change'])->name('changeLang');

Route::group(['middleware' => ['admin.auth']], function () {

    Route::get('/home', function () {
//        return view('index');
        return redirect()->route('user.index');
    });
    Route::get('/index', function () {
        return redirect()->route('user.index');
    });

    // For Calender

    Route::get('fullcalender/{id}', [FullCalenderController::class, 'index'])->name('fullcalender.id');
//    Route::get('expend-full-calender', [FullCalenderController::class, 'expendFullCalender'])->name('expendFullCalender');

    Route::resource('calender-event', EventController::class);
    Route::get('eventsByCondition/{id}', [EventController::class, 'eventsByCondition'])->name('eventsByCondition.id');

    // For Users / Practitioners
    Route::resource('user', UserController::class);
    Route::post('get-users-by-groupId', [UserController::class, 'getUsersByGroupId'])->name('getUsersByGroupId');

    // For Coaches
    Route::resource('coach', CoachController::class);

    // For Exercise Type
    Route::resource('exercise-type', ExerciseTypeController::class);

    // For Profession
    Route::resource('profession', ProfessionController::class);

    // For Group
    Route::resource('group', GroupController::class);

    // For Intensity
    Route::resource('intensity', IntensityController::class);

    // For Pain Category
    Route::resource('pain-category', PainCategoryController::class);

    // For Blog Category
    Route::resource('blog-category', BlogCategoryController::class);

    // For MM Center
    Route::resource('mm-center', MmCenterController::class);

    // For Case Worker
    Route::resource('caseworker', CaseWorkerController::class);

    // For Statistics
    Route::resource('statistic', StatisticController::class);
    Route::get('getStatsByGroupId/{id}', [StatisticController::class, 'getStatsByGroupId'])->name('getStatsBy.groupId');

    // For User's Question Statistics
    Route::resource('stats-question', StatsQuestionController::class);
    Route::get('get-ques-by-userId/{id}', [StatsQuestionController::class, 'getQuesByUserId'])->name('getQuesBy.UserId');
    Route::get('get-all-statsQuestions', [StatsQuestionController::class, 'getAllStatsQuestions'])->name('getAllStatsQuestions');

    // For User's Anthropometric Statistics
    Route::resource('anthropometric', AnthropometricController::class);
    Route::get('get-all-anthropometries', [AnthropometricController::class, 'getAllAnthropometries'])->name('getAllAnthropometries');

    // For User's Tester Statistics
    Route::resource('stats-tester', StatsTesterController::class);
    Route::get('get-all-statsTesters', [StatsTesterController::class, 'getAllStatsTesters'])->name('getAllStatsTesters');

    // For User's Football Statistics
    Route::resource('football', FootballController::class);
    Route::get('get-all-statsFootballs', [FootballController::class, 'getAllStatsFootballs'])->name('getAllStatsFootballs');

    // For User's 3D Screening Statistics
    Route::resource('stats-3dscreening', Stats3dScreeningController::class);
    Route::get('get-all-3dScreenings', [Stats3dScreeningController::class, 'getAllStats3dScreenings'])->name('getAllStats3dScreenings');

    // For Exercise Category
    Route::resource('exercise-category', ExerciseCategoryController::class);

    // For Video
    Route::resource('video', VideoController::class);

    // For Roles / Permissions
    Route::resource('role', RoleController::class);
    Route::get('role/permissions/{id}', [RoleController::class, 'permission'])->name('role.permission');
    Route::post('role/permissions', [RoleController::class, 'savePermissions'])->name('save.role.permission');

    Route::get('createPermissions', [RoleController::class, 'createPermissions'])->name('createPermissions');
    Route::post('submitPermissions', [RoleController::class, 'submitPermissions'])->name('submitPermissions');

    // For Registered Program With Videos .
    Route::resource('program-with-video', ProgramWithVideoController::class);

    // For Program Setup.
    Route::resource('program-setup', ProgramSetupController::class);
    Route::get('program-setup-add-program/{id}/{userId}', [ProgramSetupController::class, 'programSetupAddProgram'])->name('programSetupAddProgram.id.userId');
    Route::post('submit-program-setup-add-program', [ProgramSetupController::class, 'submitProgramSetupAddProgram'])->name('submitProgramSetupAddProgram');

    Route::get('fast-program-create', [ProgramSetupController::class, 'fastProgramCreate'])->name('fastProgramCreate');
    Route::post('submit-fast-program', [ProgramSetupController::class, 'submitFastProgram'])->name('submitFastProgram');

    Route::delete('destroy-setup-program-inner/{id}',[ProgramSetupController::class,'destroySetupProgramInner'])->name('destroySetupProgramInner');

    // For Setup Fixed Program
    Route::resource('setup-fixed-program', SetupFixedProgramController::class);
    Route::get('setup-fixed-program-add-content/{id}', [SetupFixedProgramController::class, 'setupFixedProgramAddContent'])->name('setupFixedProgramAddContent.id');
    Route::post('submit-setup-fixed-program-add-content', [SetupFixedProgramController::class, 'submitSetupFixedProgramAddContent'])->name('submitSetupFixedProgramAddContent');
    Route::delete('delete-setup-fixed-program-content/{id}', [SetupFixedProgramController::class, 'destroyInnerValue'])->name('destroyInnerValue.id');

    // For Setup Fixed Program Values Edit
    Route::get('setup-fixed-program-values-edit/{id}', [SetupFixedProgramController::class, 'setupFixedProgramValuesEdit'])->name('setupFixedProgramValuesEdit.id');
    Route::post('submit-setup-fixed-program-edit', [SetupFixedProgramController::class, 'submitSetupFixedProgramEdit'])->name('submitSetupFixedProgramEdit');



    // For User Setup Program Edit
    Route::get('user-setup-program-edit/{id}/{userId}', [ProgramSetupController::class, 'userSetupProgramEdit'])->name('userSetupProgramEdit.id.userId');
    Route::post('submit-user-setup-program-edit', [ProgramSetupController::class, 'submitUserSetupProgramEdit'])->name('submitUserSetupProgramEdit');

    // For PT Clipboard
    Route::resource('pt-clipboard', PtClipboardController::class);
    Route::get('register-attendance/{id}', [PtClipboardController::class, 'registerAttendance'])->name('registerAttendance.id');
    Route::get('pt-clipboard-logs', [PtClipboardController::class, 'ptClipboardLogs'])->name('ptClipboardLogs');
    Route::post('addUserPtClipboard', [PtClipboardController::class, 'addUserPtClipboard'])->name('addUserPtClipboard');
    Route::post('editUserPtClipboard', [PtClipboardController::class, 'editUserPtClipboard'])->name('editUserPtClipboard');

    // For All Users Register Activity List
    Route::get('all-register-activity', [RegisterActivityController::class, 'allUsersActivityList'])->name('allUsersActivityList');
    Route::post('registeredActivityNote', [RegisterActivityController::class, 'registeredActivityNote'])->name('registeredActivityNote');
    Route::delete('delete-register-activity/{id}', [RegisterActivityController::class, 'deleteUsersActivity'])->name('deleteUsersActivity.id');

    // For Subscription
    Route::resource('mysubscription', MySubscriptionController::class);
    Route::post('get-programs-by-groupId', [MySubscriptionController::class, 'getProgramsByGroupId'])->name('getProgramsByGroupId');
    Route::post('subscription/store', [MySubscriptionController::class, 'saveSubscription'])->name('subscription.store');




});

// For User Only

Route::group(['middleware' => ['auth']], function () {
//    User Main Screen
    Route::get('/user-info',[FrontUserController::class, 'index'] )->name('userInfo');
    Route::get('/my-videos/{id}/{type}',[FrontUserController::class, 'myVideos'] )->name('myVideos.id.type');
    Route::post('fetch-exercise-progress-record-by-Id', [FrontUserController::class, 'fetchExerciseProgressRecordById'])->name('fetchExerciseProgressRecordById');
    Route::post('submit-exercise-progress-record', [FrontUserController::class, 'submitExerciseProgressRecord'])->name('submitExerciseProgressRecord');
    Route::post('submit-samtykk-form', [FrontUserController::class, 'submitSamtykkForm'])->name('submitSamtykkForm');

    Route::get('/user-profile-info',[FrontUserController::class, 'userProfileInfo'] )->name('userProfileInfo');
    Route::post('/submit-user-profile-info',[FrontUserController::class, 'submitUserProfileInfo'] )->name('submitUserProfileInfo');

    Route::get('/register-activity-form',[FrontUserController::class, 'registerActivityInfo'])->name('register.activity');

    // For Register Activity
    Route::resource('register-activity', RegisterActivityController::class);

    Route::get('/users-all-subscription',[MySubscriptionController::class, 'usersAllSubscription'])->name('usersAllSubscription');
    Route::get('/users-all-subscription-list',[MySubscriptionController::class, 'usersAllSubscription2'])->name('usersAllSubscription2');
    Route::get('/create-payment-session/{prodId}/{planId}',[MySubscriptionController::class, 'createPaymentSession'])->name('createPaymentSession.prodId.planId');

    Route::get('/subscribe-success',[FrontSubscriptionController::class, 'subscribeSuccess'])->name('subscription.subscribe.success');

    Route::get('/users-subscription-by-id/{id}',[MySubscriptionController::class, 'usersSubscriptionById'])->name('usersSubscriptionById.id');

    Route::post('subscription-create', [FrontSubscriptionController::class, 'create'])->name('subscription.create');
    Route::get('pause-subscription/{id}', [FrontSubscriptionController::class, 'pauseSubscription'])->name('pauseSubscription.id');
    Route::get('resume-subscription/{id}', [FrontSubscriptionController::class, 'renewSubscription'])->name('renewSubscription.id');

//    Route::get('subscribe', [MySubscriptionController::class, 'showSubscription']);
//    Route::post('/subscribe', 'SubscriptionController@processSubscription');
//    // welcome page only for subscribed users
//    Route::get('/welcome', 'SubscriptionController@showWelcome');
});

Route::get('/all-subscription',[MySubscriptionController::class, 'allSubscriptionMain'])->name('allSubscriptionMain');

Route::post('/subscription-response',[MySubscriptionController::class, 'subscriptionResponse'])->name('subscriptionResponse');

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


// admin theme route

//Route::get('/', function () {
//    return view('index');
//});
Route::get('/dashboard-alternate', function () {
    return view('dashboard-alternate');
});
/*App*/
Route::get('/app-emailbox', function () {
    return view('app-emailbox');
});
Route::get('/app-emailread', function () {
    return view('app-emailread');
});
Route::get('/app-chat-box', function () {
    return view('app-chat-box');
});
Route::get('/app-file-manager', function () {
    return view('app-file-manager');
});
Route::get('/app-contact-list', function () {
    return view('app-contact-list');
});
Route::get('/app-to-do', function () {
    return view('app-to-do');
});
Route::get('/app-invoice', function () {
    return view('app-invoice');
});
Route::get('/app-fullcalender', function () {
    return view('app-fullcalender');
});
/*Charts*/
Route::get('/charts-apex-chart', function () {
    return view('charts-apex-chart');
});
Route::get('/charts-chartjs', function () {
    return view('charts-chartjs');
});
Route::get('/charts-highcharts', function () {
    return view('charts-highcharts');
});
/*ecommerce*/
Route::get('/ecommerce-products', function () {
    return view('ecommerce-products');
});
Route::get('/ecommerce-products-details', function () {
    return view('ecommerce-products-details');
});
Route::get('/ecommerce-add-new-products', function () {
    return view('ecommerce-add-new-products');
});
Route::get('/ecommerce-orders', function () {
    return view('ecommerce-orders');
});

/*Components*/
Route::get('/widgets', function () {
    return view('widgets');
});
Route::get('/component-alerts', function () {
    return view('component-alerts');
});
Route::get('/component-accordions', function () {
    return view('component-accordions');
});
Route::get('/component-badges', function () {
    return view('component-badges');
});
Route::get('/component-buttons', function () {
    return view('component-buttons');
});
Route::get('/component-cards', function () {
    return view('component-cards');
});
Route::get('/component-carousels', function () {
    return view('component-carousels');
});
Route::get('/component-list-groups', function () {
    return view('component-list-groups');
});
Route::get('/component-media-object', function () {
    return view('component-media-object');
});
Route::get('/component-modals', function () {
    return view('component-modals');
});
Route::get('/component-navs-tabs', function () {
    return view('component-navs-tabs');
});
Route::get('/component-navbar', function () {
    return view('component-navbar');
});
Route::get('/component-paginations', function () {
    return view('component-paginations');
});
Route::get('/component-popovers-tooltips', function () {
    return view('component-popovers-tooltips');
});
Route::get('/component-progress-bars', function () {
    return view('component-progress-bars');
});
Route::get('/component-spinners', function () {
    return view('component-spinners');
});
Route::get('/component-notifications', function () {
    return view('component-notifications');
});
Route::get('/component-avtars-chips', function () {
    return view('component-avtars-chips');
});
/*Content*/
Route::get('/content-grid-system', function () {
    return view('content-grid-system');
});
Route::get('/content-typography', function () {
    return view('content-typography');
});
Route::get('/content-text-utilities', function () {
    return view('content-text-utilities');
});
/*Icons*/
Route::get('/icons-line-icons', function () {
    return view('icons-line-icons');
});
Route::get('/icons-boxicons', function () {
    return view('icons-boxicons');
});
Route::get('/icons-feather-icons', function () {
    return view('icons-feather-icons');
});
/*Authentication*/
Route::get('/authentication-signin', function () {
    return view('authentication-signin');
});
Route::get('/authentication-signup', function () {
    return view('authentication-signup');
});
Route::get('/authentication-signin-with-header-footer', function () {
    return view('authentication-signin-with-header-footer');
});
Route::get('/authentication-signup-with-header-footer', function () {
    return view('authentication-signup-with-header-footer');
});
Route::get('/authentication-forgot-password', function () {
    return view('authentication-forgot-password');
});
Route::get('/authentication-reset-password', function () {
    return view('authentication-reset-password');
});
Route::get('/authentication-lock-screen', function () {
    return view('authentication-lock-screen');
});
/*Table*/
Route::get('/table-basic-table', function () {
    return view('table-basic-table');
});
Route::get('/table-datatable', function () {
    return view('table-datatable');
});
/*Pages*/
Route::get('/user-profile', function () {
    return view('user-profile');
});
Route::get('/timeline', function () {
    return view('timeline');
});
Route::get('/pricing-table', function () {
    return view('pricing-table');
});
Route::get('/errors-404-error', function () {
    return view('errors-404-error');
});
Route::get('/errors-500-error', function () {
    return view('errors-500-error');
});
Route::get('/errors-coming-soon', function () {
    return view('errors-coming-soon');
});
Route::get('/error-blank-page', function () {
    return view('error-blank-page');
});
Route::get('/faq', function () {
    return view('faq');
});
/*Forms*/
Route::get('/form-elements', function () {
    return view('form-elements');
});

Route::get('/form-input-group', function () {
    return view('form-input-group');
});
Route::get('/form-layouts', function () {
    return view('form-layouts');
});
Route::get('/form-validations', function () {
    return view('form-validations');
});
Route::get('/form-wizard', function () {
    return view('form-wizard');
});
Route::get('/form-text-editor', function () {
    return view('form-text-editor');
});
Route::get('/form-file-upload', function () {
    return view('form-file-upload');
});
Route::get('/form-date-time-pickes', function () {
    return view('form-date-time-pickes');
});
Route::get('/form-select2', function () {
    return view('form-select2');
});
/*Maps*/
Route::get('/map-google-maps', function () {
    return view('map-google-maps');
});
Route::get('/map-vector-maps', function () {
    return view('map-vector-maps');
});
/*Un-found*/
Route::get('/test/content-grid-system', function () {
    return view('test/content-grid-system');
});
