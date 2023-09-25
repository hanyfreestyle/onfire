<?php

 return [
    'menu' => [

        [
            'view'=>true,
            'sel_routs'=>'config',
            'type'=>'many',
            'text'=> 'admin/menu.setting',
            'icon'=>'fas fa-cogs',
            'roleView'=>'config_section',
            'submenu'=>[
                ['roleView'=>'website_config','text'=> 'admin/menu.setting_web','url'=> 'config.web.index','sel_routs'=> 'web','icon'=>'fas fa-cog'],
                ['roleView'=>'website_config','text'=> 'admin/menu.setting_model','url'=> 'config.model.index','sel_routs'=> 'model', 'icon'=>'fas fa-cog'],
                ['roleView'=>'website_config','text'=> 'admin/menu.webPrivacy','url'=> 'config.webPrivacy.index','sel_routs'=> 'webPrivacy', 'icon'=>'fas fa-file-invoice'],
                ['roleView'=>'defPhoto_view','text'=> 'admin/menu.setting_def_photo','url'=> 'config.defPhoto.index','sel_routs'=> 'defPhoto','icon'=>'fas fa-image'],
                ['roleView'=>'upFilter_view','text'=> 'admin/menu.uploadFilter','url'=> 'config.upFilter.index','sel_routs'=> 'upFilter','icon'=>'fas fa-filter'],
                ['roleView'=>'config_section','text'=> 'admin/menu.setting_icon','url'=> 'config.defIcon.show','sel_routs'=> 'defIcon','icon'=>'fab fa-fonticons'],
            ],
        ],


        [
            'view'=>true,
            'sel_routs'=>'weblang',
            'type'=>'one',
            'text'=> 'admin/menu.lang_file_web',
            'url'=> 'weblang.index',
            'icon'=>'fas fa-globe-africa',
            'roleView'=>'weblang_view',
        ],

        [
            'view'=>true,
            'sel_routs'=>'adminlang',
            'type'=>'one',
            'text'=> 'admin/menu.lang_file_admin',
            'url'=> 'adminlang.index',
            'icon'=>'fas fa-globe-africa',
            'roleView'=>'adminlang_view',
        ],

        [
            'view'=>false,
            'sel_routs'=>'users',
            'type'=>'many',
            'text'=> 'admin/menu.roles',
            'icon'=>'fas fa-unlock-alt',
            'roleView'=>'users_view',
            'submenu'=>[

                ['roleView'=>'users_view','text'=> 'admin/menu.roles_users' ,'url'=> 'users.users.index', 'sel_routs'=> 'users','icon'=>'fas fa-users'],
                ['roleView'=>'roles_view','text'=> 'admin/menu.roles_role','url'=>  'users.roles.index','sel_routs'=> 'roles','icon'=>'fas fa-traffic-light'],
                ['roleView'=>'permissions_view','text'=> 'admin/menu.roles_permissions' ,'url'=> 'users.permissions.index','sel_routs'=> 'permissions','icon'=>'fas fa-user-shield'],
            ],

        ],






        [
            'view'=>true,
            'sel_routs'=>'Shop',
            'type'=>'many',
            'text'=> 'admin/menu.shop_product_menu',
            'icon'=>'fas fa-shopping-cart',
            'roleView'=>'shopProduct_view',
            'submenu'=>[
                [
                    'sel_routs'=> 'shopCategory',
                    'url'=> 'Shop.shopCategory.index',
                    'roleView'=>'shopCategory_view',
                    'text'=> 'admin/menu.web_category',
                    'icon'=>'fas fa-sitemap'
                ],
                [
                    'sel_routs'=> 'ShopProduct',
                    'url'=> 'Shop.ShopProduct.index',
                    'roleView'=>'shopProduct_view',
                    'text'=> 'admin/menu.web_product',
                    'icon'=>'fas fa-shopping-cart'
                ],
                [
                    'sel_routs'=> 'shopCategoryConfig',
                    'url'=> 'Shop.shopCategoryConfig.Config',
                    'roleView'=>'category_edit',
                    'text'=> 'admin/menu.setting',
                    'icon'=>'fas fa-cogs'
                ],

            ],
        ],

    ],

];
