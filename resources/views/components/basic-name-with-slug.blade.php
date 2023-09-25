@foreach ( config('app.shop_lang') as $key=>$lang )
    <div class="{{$col}} {{getColDir($key)}}">
        <x-trans-input
            label="{{__('admin/def.form_name_'.$key)}} "
            name="name"
            inputid="name"
            dir="{{ $key }}"
            reqname="name"
            value="{{old('name',$rowData->name)}}"
        />

        <x-trans-text-area
            label="{{ __('admin/form.des_'.$key)}} "
            name="des"
            dir="{{ $key }}"
            :reqspan="false"
            reqname="des"
            value="{!! old('des',$rowData->des) !!}"
        />

        @if($pageData['ViewType'] == 'Add' )
            <x-trans-input
                label="Slug "
                inputid="slug"
                name="slug"
                dir="{{ $key }}"
                reqname="slug"
                value="{{old('slug',$rowData->slug)}}"
                :reqspan="true"
            />
        @elseif($pageData['ViewType'] == 'Edit' and  auth()->user()->can($PrefixRole."_edit_slug"))
            <x-trans-input
                label="Slug "
                inputid="slug"
                name="slug"
                dir="{{ $key }}"
                reqname="slug"
                value="{{old('slug',$rowData->slug)}}"
                :reqspan="true"
            />
        @else
            <input type="hidden" name="slug" value="{{$rowData->slug}}">
        @endif


    </div>
@endforeach

