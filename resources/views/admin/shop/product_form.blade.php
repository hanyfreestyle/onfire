@extends('admin.layouts.app')

@section('content')

    <x-breadcrumb-def :pageData="$pageData"/>

    <x-html-section>
        <x-ui-card :page-data="$pageData">
            <x-mass.confirm-massage />

            <form  class="mainForm" action="{{route($PrefixRoute.'.update',intval($Product->id))}}" method="post"  enctype="multipart/form-data">
                @csrf

                <div class="row">
                    <x-form-select-multiple name="categories" label="{{__('admin/def.Category')}}">
                        @foreach($Categories as $Category )
                            <option  value="{{$Category->id}}"
                                {{ (in_array($Category->id,$selCat)) ? 'selected' : ''}}
                                {{ (collect(old('categories'))->contains($Category->id)) ? 'selected':'' }}
                            >{{$Category->name}}</option>
                        @endforeach
                    </x-form-select-multiple>
                </div>

                <hr>
                <div class="row">



                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-lg-6">
                                <x-trans-input
                                    label="{{ __('admin/shop.pro_price') }} "
                                    inputid="price"
                                    name="price"
                                    reqname="price"
                                    value="{{old('price',$Product->price)}}"
                                    :reqspan="true"
                                />
                            </div>
                            <div class="col-lg-6">
                                <x-trans-input
                                    label="{{ __('admin/shop.pro_discount_price') }} "
                                    inputid="discount_price"
                                    name="discount_price"
                                    reqname="discount_price"
                                    value="{{old('discount_price',$Product->discount_price)}}"
                                    :reqspan="true"
                                />
                        </div>

                            <x-basic-name-with-slug :row-data="$Product" :page-data="$pageData" col="col-lg-12" />
                        </div>


                    </div>
                    <div class="col-lg-6">

                    </div>
                </div>


                <hr>

                <div class="row">
                    <x-form-check-active :row="$Product" name="is_active" page-view="{{$pageData['ViewType']}}"/>
                    <x-form-check-active :row="$Product" name="is_archived" :defstatus="false" lable="{{__('admin/def.status_archived')}}"  page-view="{{$pageData['ViewType']}}"/>
                </div>

                <hr>

                <x-form-upload-file view-type="{{$pageData['ViewType']}}" :row-data="$Product"
                                    :multiple="false"
                                    thisfilterid="{{ \App\Helpers\AdminHelper::arrIsset($modelSettings,$controllerName.'_filterid',0) }}"
                                    :emptyphotourl="$PrefixRoute.'.emptyPhoto'"  />

                <div class="container-fluid">
                    <x-form-submit-new  :page-data="$pageData" />
                </div>
            </form>
        </x-ui-card>

    </x-html-section>

@endsection


@push('JsCode')
    <x-google-seo-script/>
    <x-slug-name-script :pagetype="$pageData['ViewType']" />
@endpush
