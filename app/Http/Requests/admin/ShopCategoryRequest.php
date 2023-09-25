<?php

namespace App\Http\Requests\admin;

use App\Helpers\AdminHelper;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;

class ShopCategoryRequest extends FormRequest
{

    public function authorize(): bool
    {
        return true;
    }

    protected function prepareForValidation()
    {
        $data = $this->toArray();
        data_set($data, 'slug',  AdminHelper::Url_Slug($data['slug']) );
        $this->merge($data);
    }

    public function rules(Request $request): array
    {

        foreach(config('app.shop_lang') as $key=>$lang){
            $request->merge(['slug' => AdminHelper::Url_Slug($request['slug'])]);
        }

        $id = $this->route('id');

        $rules =[
            'parent_id'=> "required",
            'name'=> "required",

        ];

        if($id == '0'){
            $rules["slug"] = 'required|unique:categories,slug';
        }else{
            $rules["slug"] = "required|unique:categories,slug,$id";
        }

        return $rules;
    }
}
