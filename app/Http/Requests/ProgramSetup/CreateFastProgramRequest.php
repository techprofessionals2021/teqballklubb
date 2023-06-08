<?php

namespace App\Http\Requests\ProgramSetup;

use App\Models\ProgramSetup;
use App\Models\SetupFixedProgram;
use App\Models\SetupFixedProgramValue;
use App\Models\SetupProgram;
use Illuminate\Foundation\Http\FormRequest;

class CreateFastProgramRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
        ];
    }

    public function handle()
    {
        $this->validated();
        $params = $this->all();

        $setupFixProgValues = SetupFixedProgramValue::where('setup_fixed_program_id', $params['program'])->get();

        $item = new ProgramSetup();

        $item->name = $params['name'];
        $item->user_id = $params['practitioner'];
//        $item->exercise_category_id = $params['category'];
//        $item->sort = $params['sort'];
        $item->sort = 10;
//        $item->comment = $params['comment'];
        $item->group_id = $params['group'];
        $item->save();

        foreach ($setupFixProgValues as $setupFixedItem) {
            $setupPorg = new SetupProgram();
            $setupPorg->register_program_id = $item->id;
            $setupPorg->user_id = $item->user_id;
            $setupPorg->program_with_video_id = $setupFixedItem->program_with_video_id;
            $setupPorg->set = $setupFixedItem->set;
            $setupPorg->rep = $setupFixedItem->rep;
            $setupPorg->sort = $setupFixedItem->sort;
            $setupPorg->distance = $setupFixedItem->distance;
            $setupPorg->exercise_no = $setupFixedItem->exerciseNo;
            $setupPorg->duration = $setupFixedItem->duration;
            $setupPorg->break = $setupFixedItem->break;
            $setupPorg->description = $setupFixedItem->description;
            $setupPorg->save();
        }

        return true;
    }
}
