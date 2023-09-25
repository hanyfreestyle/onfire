<?php

namespace App\Http\Requests\admin;

use App\Helpers\AdminHelper;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;

class ShopProductRequest extends FormRequest
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
        $request->merge(['slug' => AdminHelper::Url_Slug($request['slug'])]);
        $id = $this->route('id');

        $rules =[
            'categories'  => 'required|array|min:1',
            'name'  => '',
        ];

       if($id == '0'){
            $rules["slug"] = 'required|unique:products,slug';
        }else{
            $rules["slug"] = "required|unique:products,slug,$id";
        }
        return $rules;
    }
}
