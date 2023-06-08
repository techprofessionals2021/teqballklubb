<?php

namespace App\Http\Controllers;

use App\Http\Requests\BlogCategory\CreateBlogCategoryRequest;
use App\Http\Requests\BlogCategory\GetAllBlogCategoriesRequest;
use App\Http\Requests\BlogCategory\GetBlogCategoryRequest;
use App\Http\Requests\BlogCategory\UpdateBlogCategoryRequest;
use App\Models\BlogCategory;
use Illuminate\Http\Request;

class BlogCategoryController extends Controller
{
    /**
     * @param GetAllBlogCategoriesRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index(GetAllBlogCategoriesRequest $request)
    {
        $response = $request->handle();

        return view('admin.blog-category.index', ['blogCategories' => $response]);
    }

    /**
     * @param GetBlogCategoryRequest $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create(GetBlogCategoryRequest $request)
    {
        $request->id = 0;

        $response = $request->handle();

        $route = url('blog-category');

        return view('admin.blog-category.form', ['blogCategory' => $response, 'route' => $route, 'edit' => false]);
    }

    /**
     * @param CreateBlogCategoryRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateBlogCategoryRequest $request)
    {
        $response = $request->handle();

        return redirect()->route('blog-category.index')->with('success', 'Blog Category Add Successfully');
    }

    /**
     * @param BlogCategory $request
     */
    public function show(BlogCategory $request)
    {
        //
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {
        $request = new GetBlogCategoryRequest();

        $request->id = $id;

        $response = $request->handle();

        if (!isset($response->id)) {
            return redirect()->route('blog-category.index')->with('error', 'Blog Category Not Found !!');
        }

        $route = route('blog-category.update', ['blog_category' => $response->id]);

        return view('admin.blog-category.form', ['blogCategory' => $response, 'route' => $route, 'edit' => true]);
    }

    /**
     * @param UpdateBlogCategoryRequest $request
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateBlogCategoryRequest $request, $id)
    {
        $request->id = $id;

        $response = $request->handle();

        return redirect()->route('blog-category.index')->with('success', 'Blog Category Edit Successfully');
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
