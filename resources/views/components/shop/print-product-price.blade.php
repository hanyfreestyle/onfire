@if(intval($product->price) > 0 )
    <div class="price_div">
        @if(intval($product->discount_price) > 0 and $product->discount_price < $product->price )
            <span class="pro_price">{{number_format($product->discount_price)}} <span class="currency">{{__('web/cart.EGP')}}</span></span>
            <span class="pro_discount">{{number_format($product->price)}} <span class="currency">{{__('web/cart.EGP')}}</span></span>
            @if($showAvr and $printAvr != null)
                <div class="on_sale">
                    <span> %{{$printAvr}} {{__('web/cart.off')}}</span>
                </div>
            @endif
        @else
            <span class="pro_price">{{number_format($product->price)}} <span class="currency">{{__('web/cart.EGP')}}</span></span>
        @endif
    </div>
@endif
