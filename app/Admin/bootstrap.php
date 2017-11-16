<?php
use Encore\Admin\Form;
use App\Admin\Extensions\Form\CKEditor;
use Encore\Admin\Grid\Column;
use App\Admin\Extensions\Popover;
use Encore\Admin\Facades\Admin;
/**
 * Laravel-admin - admin builder based on Laravel.
 * @author z-song <https://github.com/z-song>
 *
 * Bootstraper for Admin.
 *
 * Here you can remove builtin form field:
 * Encore\Admin\Form::forget(['map', 'editor']);
 *
 * Or extend custom form field:
 * Encore\Admin\Form::extend('php', PHPEditor::class);
 *
 * Or require js and css assets:
 * Admin::css('/packages/prettydocs/css/styles.css');
 * Admin::js('/packages/prettydocs/js/main.js');
 *
 */

Encore\Admin\Form::forget(['map', 'editor']);
Form::extend('ckeditor', CKEditor::class);

Column::extend('color', function ($value, $color) {
    return "<span style='color: $color'>$value</span>";
});

Column::extend('popover', Popover::class);

Admin::navbar(function (\Encore\Admin\Widgets\Navbar $navbar) {

    // $navbar->left(view('search-bar'));

    $navbar->add(view('partials.search-bar'));
    $navbar->add(new \App\Admin\Extensions\Nav\Links());
});