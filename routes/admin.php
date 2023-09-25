<?php


use App\Helpers\AdminHelper;
use App\Http\Controllers\admin\AttributeTableController;
use App\Http\Controllers\admin\BannerCategoryController;
use App\Http\Controllers\admin\BannerController;
use App\Http\Controllers\admin\BlogPostController;
use App\Http\Controllers\admin\CategoryController;
use App\Http\Controllers\admin\CategoryTableController;
use App\Http\Controllers\admin\FaqCategoryController;
use App\Http\Controllers\admin\FaqController;
use App\Http\Controllers\admin\OurClientController;
use App\Http\Controllers\admin\PageController;
use App\Http\Controllers\admin\ProductController;
use App\Http\Controllers\admin\ProductTableController;
use App\Http\Controllers\admin\ShopCategoryController;
use App\Http\Controllers\admin\ShopProductController;
use App\Http\Controllers\AdminMainController;





Route::get('/Home',[AdminMainController::class,'Home'])->name('admin.Dashboard');
Route::get('/Home/Update',[AdminMainController::class,'Update'])->name('admin.Dashboard.Update');


Route::get('/ShopCategory',[ShopCategoryController::class,'index'])->name('Shop.shopCategory.index');
Route::get('/ShopCategory/Main',[ShopCategoryController::class,'index'])->name('Shop.shopCategory.index_Main');
Route::get('/ShopCategory/SubCategory/{id}',[ShopCategoryController::class,'index'])->name('Shop.shopCategory.SubCategory');
Route::get('/ShopCategory/create',[ShopCategoryController::class,'create'])->name('Shop.shopCategory.create');
Route::get('/ShopCategory/edit/{id}',[ShopCategoryController::class,'edit'])->name('Shop.shopCategory.edit');
Route::get('/ShopCategory/destroy/{id}',[ShopCategoryController::class,'destroy'])->name('Shop.shopCategory.destroy');
Route::post('/ShopCategory/update/{id}',[ShopCategoryController::class,'storeUpdate'])->name('Shop.shopCategory.update');

Route::get('/ShopCategory/emptyPhoto/{id}', [ShopCategoryController::class,'emptyPhoto'])->name('Shop.shopCategory.emptyPhoto');
Route::get('/ShopCategory/emptyIcon/{id}', [ShopCategoryController::class,'emptyIcon'])->name('Shop.shopCategory.emptyIcon');
Route::get('/ShopCategory/Config',[ShopCategoryController::class,'config'])->name('Shop.shopCategoryConfig.Config');
Route::get('/ShopCategory/CatSort/{id}',[ShopCategoryController::class,'CategorySort'])->name('Shop.shopCategory.CatSort');
Route::post('/ShopCategory/SaveSort',[ShopCategoryController::class,'CategorySaveSort'])->name('Shop.shopCategory.CategorySaveSort');



Route::get('/ShopProduct',[ShopProductController::class,'index'])->name('Shop.ShopProduct.index');
Route::get('/ShopProduct/AddToShop',[ShopProductController::class,'AddProToShop'])->name('Shop.ShopProduct.AddProToShop');
Route::get('/ShopProduct/ListCategory/{Categoryid}',[ShopProductController::class,'ListCategory'])->name('Shop.ShopProduct.ListCategory');
Route::get('/ShopProduct/create',[ShopProductController::class,'create'])->name('Shop.ShopProduct.create');
Route::get('/ShopProduct/edit/{id}',[ShopProductController::class,'edit'])->name('Shop.ShopProduct.edit');
Route::get('/ShopProduct/destroy/{id}',[ShopProductController::class,'destroy'])->name('Shop.ShopProduct.destroy');
Route::post('/ShopProduct/update/{id}',[ShopProductController::class,'storeUpdate'])->name('Shop.ShopProduct.update');
Route::get('/ShopProduct/emptyPhoto/{id}', [ShopProductController::class,'emptyPhoto'])->name('Shop.ShopProduct.emptyPhoto');

Route::get('/ShopProduct/photos/{id}',[ShopProductController::class,'ListMorePhoto'])->name('Shop.ShopProduct.More_Photos');
Route::post('/ShopProduct/saveSort', [ShopProductController::class,'sortPhotoSave'])->name('Shop.ShopProduct.sortPhotoSave');
Route::post('/ShopProduct/AddMore',[ShopProductController::class,'AddMorePhotos'])->name('Shop.ShopProduct.More_PhotosAdd');
Route::get('/ShopProduct/PhotoDel/{id}',[ShopProductController::class,'More_PhotosDestroy'])->name('Shop.ShopProduct.More_PhotosDestroy');


