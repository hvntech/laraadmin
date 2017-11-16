<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Encore\Admin\Auth\Database\Role;
use Encore\Admin\Form;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Tree;
use Encore\Admin\Auth\Database\Menu;
use Encore\Admin\Grid;

class CategoryController extends Controller
{
    use ModelForm;

    public function index()
    {
        return Admin::content(function (Content $content) {
            $content->header('Categories');
            $content->body($this->grid()->render());
        });
    }
	
    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('Categories');
            $content->description('Category create');

            $content->body($this->form());
        });
    }
	
	/**
     * Edit interface.
     *
     * @param $id
     *
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {
            $content->header(trans('admin.Categories'));
            $content->description(trans('admin.edit'));
            $content->body($this->form()->edit($id));
        });
    }
	
	/**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Category::class, function (Grid $grid) {
            $grid->id('ID')->sortable();
            // $grid->title(trans('admin.title'));
            // $grid->order(trans('admin.order'));
            // $grid->title()->label('danger');
            // $grid->title()->color('red');
            // $grid->title()->badge();
            // $grid->title()->popover('right');
            $grid->title()->limit(30)->ucfirst()->substr(1, 10);

            $grid->order()->switch();

            $grid->permissions(trans('admin.permission'))->pluck('name')->label();

            $grid->created_at(trans('admin.created_at'));
            $grid->updated_at(trans('admin.updated_at'));

            $grid->actions(function (Grid\Displayers\Actions $actions) {
                if ($actions->row->slug == 'administrator') {
                    $actions->disableDelete();
                }
            });

            $grid->tools(function (Grid\Tools $tools) {
                $tools->batch(function (Grid\Tools\BatchActions $actions) {
                    $actions->disableDelete();
                });
            });
        });
    }
	
	/**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
		return Admin::form(Category::class, function (Form $form) {
            $form->display('id', 'ID');

            $form->select('parent_id', trans('admin.parent_id'))->options(Menu::selectOptions());
            $form->text('title', trans('admin.title'))->rules('required');
            $states = [
                'on'  => ['value' => 1, 'text' => 'enable', 'color' => 'success'],
                'off' => ['value' => 0, 'text' => 'disable', 'color' => 'danger'],
            ];
            // $form->text('order', trans('admin.order'))->rules('required');
            // $form->ckeditor('order', trans('admin.order'));
            // $form->rate('order', trans('admin.order'));
            $form->switch('order', 'Rate')->states($states);
            $form->ckeditor('title');
            $startDate = "2017-11-13";
            $endDate = "2017-11-15";
            $form->dateRange($startDate, $endDate, 'Date Range');
            // $form->number('order', 'Rate');
            // $form->map('21.022736', '105.801944', 'Map');
            //$form->icon('icon', trans('admin.icon'))->default('fa-bars')->rules('required')->help($this->iconHelp());
            //$form->text('uri', trans('admin.uri'));
            //$form->multipleSelect('roles', trans('admin.roles'))->options(Role::all()->pluck('name', 'id'));

            // $form->text('created_at', trans('admin.created_at'));
            $form->datetime('created_at', trans('admin.created_at'));
            $form->datetime('updated_at', trans('admin.updated_at'));
            // $form->display('updated_at', trans('admin.updated_at'));
        });
    }
	 /**
     * Help message for icon field.
     *
     * @return string
     */
    protected function iconHelp()
    {
        return;
    }
}