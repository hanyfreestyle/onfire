@extends('admin.layouts.app')
@section('StyleFile')
    <x-data-table-plugins :style="true" :is-active="$viewDataTable"/>
@endsection

@section('content')
    <x-breadcrumb-def :pageData="$pageData"/>

    <x-html-section>
        <x-ui-card  :page-data="$pageData" >
            <x-mass.confirm-massage/>

            @if(count($Products)>0)
                <div class="card-body table-responsive p-0">
                    <table {!! $tableHeader !!} >
                        <thead>
                        <tr>
                            <th class="TD_20">#</th>
                            <th class="TD_20"></th>
                            <th class="TD_200">{{__('admin/def.form_name_ar')}}</th>
                            <th class="TD_250">{{__('admin/def.Category')}}</th>


                            <th class="TD_50">{{ __('admin/shop.pro_price') }}</th>
                            <th class="TD_100">{{ __('admin/shop.pro_discount_price') }}</th>
{{--                            <th class="TD_50">{{ __('admin/shop.pro_qty') }}</th>--}}

                            <th class="tbutaction TD_50"></th>
                            @can($PrefixRole.'_edit')
                                <th class="tbutaction TD_50"></th>
                            @endcan
                            @can($PrefixRole.'_delete')
                                <th class="tbutaction TD_50"></th>
                            @endcan
                        </tr>
                        </thead>
                        <tbody>

                        @foreach($Products as $Product)
                            <tr>
                                <td>{{$Product->id}}</td>
                                <td class="tc">{!!  \App\Helpers\AdminHelper::printTableImage($Product,'photo_thum_1') !!} </td>
                                <td>{{ $Product->name}}</td>

                                <td>
                                    @foreach($Product->categories as $Category )
                                        <a href="{{route($PrefixRoute.'.ListCategory',$Category->id)}}">
                                            <span class="cat_table_name">{{$Category->name}}</span>
                                        </a>
                                    @endforeach
                                </td>



                                <td class="tc">{{ $Product->price}}</td>
                                <td class="tc">{{ $Product->discount_price}}</td>
{{--                                <td class="tc">{{$Product->qty}}</td>--}}

                                <td class="tc" >{!! is_active($Product->is_active) !!}</td>
                                @can($PrefixRole.'_edit')
                                    <td class="tc"><x-action-button url="{{route($PrefixRoute.'.edit',$Product->id)}}" type="edit" :tip="true" /></td>
                                @endcan

                                @can($PrefixRole.'_delete')
                                    <td class=""><x-action-button url="#" id="{{route($PrefixRoute.'.destroy',$Product->id)}}" type="deleteSweet" :tip="true" /></td>
                                @endcan
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            @else
                <x-alert-massage type="nodata" />
            @endif
        </x-ui-card>
        <div class="d-flex justify-content-center">
            @if($viewDataTable == false)
                {{ $Products->links() }}
            @endif
        </div>
    </x-html-section>

@endsection

@push('JsCode')
    <x-sweet-delete-err/>
    <x-sweet-delete-js-no-form/>
    <x-data-table-plugins :jscode="true" :is-active="$viewDataTable" />
@endpush
