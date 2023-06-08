<?php

namespace App\Http\Controllers;

use App\Http\Requests\PainCategory\CreatePainCategoryRequest;
use App\Http\Requests\PainCategory\GetAllPainCategoriesRequest;
use App\Http\Requests\PainCategory\GetPainCategoryRequest;
use App\Http\Requests\PainCategory\UpdatePainCategoryRequest;
use App\Models\PainCategory;
use Illuminate\Http\Request;

class PainCategoryController extends Controller
{
    /**
     * @param GetAllPainCategoriesRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllPainCategoriesRequest $request)
    {
        $response = $request->handle();

        return view('admin.pain-category.index', ['painCategories' => $response]);
    }

    /**
     * @param GetPainCategoryRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetPainCategoryRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('pain-category');

        return view('admin.pain-category.form', ['painCategory' => $response, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreatePainCategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreatePainCategoryRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('pain-category.index')->with('success', 'Pain Category Add Successfully');
    }

    /**
     * @param PainCategory $request
     */
    public function show(PainCategory $request)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {
        $request = new GetPainCategoryRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('pain-category.index')->with('error', 'Pain Category Not Found !!');
        }

        $route = route('pain-category.update', ['pain_category' => $response->id]);

        return view('admin.pain-category.form', ['painCategory' => $response, 'route' => $route, 'edit' => true]);
    }

    /**
     * @param UpdatePainCategoryRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdatePainCategoryRequest $request, $id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('pain-category.index')->with('success', 'Pain Category Edit Successfully');
    }

    /**
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        //
    }
}
