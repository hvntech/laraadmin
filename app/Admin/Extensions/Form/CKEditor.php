<?php

namespace App\Admin\Extensions\Form;

use Encore\Admin\Form\Field;

class CKEditor extends Field
{

    /**
     * @var string
     */
    protected $view = 'admin.ckeditor';

    /**
     * @var array
     */
    public static $js = [
        '/packages/ckeditor/ckeditor.js',
        '/packages/ckeditor/adapters/jquery.js',
    ];

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function render()
    {
        $class        = implode('.', $this->getElementClass());
        $this->script = "$('textarea.{$class}').ckeditor();";

        return parent::render();
    }

}