<?php

namespace App\Http\Controllers\admin;

use App\Helpers\AdminHelper;
use App\Helpers\PuzzleUploadProcess;
use App\Http\Controllers\AdminMainController;
use App\Http\Controllers\Controller;
use App\Http\Requests\admin\CategoryRequest;
use App\Http\Requests\admin\ShopCategoryRequest;

use App\Models\Category;
use Cache;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\View;

class ShopCategoryController extends AdminMainController
{

    public $controllerName ;
    public $PageTitle ;
    public $selMenu ;
    public $PrefixRole ;
    public $PrefixRoute ;
    public $pageData ;

    function __construct(
        $selMenu = 'Shop.',
        $controllerName = 'shopCategory',
        $PrefixRole = 'shopCategory',
        $PrefixRoute = '#',
        $pageData = array(),
    )

    {
        parent::__construct();
        $this->controllerName = $controllerName;
        $this->selMenu = $selMenu;
        $this->PrefixRole = $PrefixRole;
        $this->PrefixRoute = $this->selMenu.$this->controllerName ;


        $this->PageTitle = __('admin/menu.web_category');

        $this->middleware('permission:'.$PrefixRole.'_view', ['only' => ['index']]);
        $this->middleware('permission:'.$PrefixRole.'_add', ['only' => ['create']]);
        $this->middleware('permission:'.$PrefixRole.'_edit', ['only' => ['edit']]);
        $this->middleware('permission:'.$PrefixRole.'_delete', ['only' => ['destroy']]);


        $viewDataTable = AdminHelper::arrIsset($this->modelSettings,$controllerName.'_datatable',0) ;
        View::share('viewDataTable', $viewDataTable);
        View::share('tableHeader', AdminHelper::Table_Style($viewDataTable));
        View::share('PrefixRoute', $this->PrefixRoute);
        View::share('PrefixRole', $PrefixRole);
        View::share('controllerName', $controllerName);

        $sendArr = [
            'TitlePage' =>  $this->PageTitle ,
            'selMenu'=> $this->selMenu,
            'prefix_Role'=> $this->PrefixRole ,
            'restore'=> 0 ,
        ];
        $pageData = AdminHelper::returnPageDate($this->controllerName,$sendArr);
        $this->pageData = $pageData ;

    }


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| # ClearCash
    public function ClearCash(){
        foreach ( config('app.lang_file') as $key=>$lang){
            Cache::forget('ShopMenuCategory_Cash_'.$key);
            Cache::forget('WebsiteMenuCategory_Cash_'.$key);
        }
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     index
    public function index($id=null)
    {


        $pageData = $this->pageData;
        $pageData['ViewType'] = "List";
        $pageData['SubView'] = false;
        $trees = [];
        if( Route::currentRouteName()== 'Shop.shopCategory.index_Main'){
            $Categories = Category::query()
                ->where('parent_id', null)
                ->orderBy('postion','asc')
                ->withCount('children')
                ->with('children')
                ->paginate(10);


        }elseif (Route::currentRouteName()== 'Shop.shopCategory.SubCategory'){

            $Categories = Category::query()
                ->where('parent_id',$id)
                ->orderBy('postion','asc')
                ->withCount('children')
                ->with('children')
                ->paginate(10);
            $trees = Category::find($id)->ancestorsAndSelf()->orderBy('depth','asc')->get() ;
            $pageData['SubView'] = true;
        }else{
            $Categories = Category::query()
                ->orderBy('postion','asc')
                ->withCount('children')
                ->with('children')
                ->paginate(10);
        }


        return view('admin.shop.category_index',compact('pageData','Categories','trees'));
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     create
    public function create()
    {
        $pageData = $this->pageData;
        $pageData['ViewType'] = "Add";
        $Categories = Category::tree()->get()->toTree();

        $Category = Category::findOrNew(0);
        return view('admin.shop.category_form',compact('pageData','Category','Categories'));
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     edit
    public function edit($id)
    {
        $pageData = $this->pageData;
        $pageData['ViewType'] = "Edit";
        $Categories = Category::tree()->get()->toTree();
        $Category = Category::findOrFail($id);
        return view('admin.shop.category_form',compact('Category','pageData','Categories'));
    }


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     storeUpdate
    public function storeUpdate(ShopCategoryRequest $request, $id=0)
    {

        $saveData =  Category::findOrNew($id);
        if($request->input('parent_id') != 0 and $request->input('parent_id') != $saveData->id){
            $saveData->parent_id = $request->input('parent_id');
        }

        $saveData->is_active = intval((bool) $request->input( 'is_active'));
        $saveData->slug = AdminHelper::Url_Slug($request->input('slug'));
        $saveData->name = $request->input('name');
        $saveData->des = $request->input('des');
        $saveData->save();

        $saveImgData = new PuzzleUploadProcess();
        $saveImgData->setCountOfUpload('2');
        $saveImgData->setUploadDirIs('category/'.$saveData->id);
        //$saveImgData->setfileUploadName('photo');
        $saveImgData->setnewFileName($request->input('en.slug'));
        $saveImgData->UploadOne($request);
        $saveData = AdminHelper::saveAndDeletePhoto($saveData,$saveImgData);
        $saveData->save();

        $saveImgData_icon = new PuzzleUploadProcess();
        $saveImgData_icon->setUploadDirIs('category/'.$saveData->id);
        $saveImgData_icon->setnewFileName($request->input('en.slug'));
        $saveImgData_icon->setfileUploadName('icon');
        $saveImgData_icon->UploadOneNofilter($request,'4',60,60);
        $saveData = AdminHelper::saveAndDeletePhotoByOne($saveData,$saveImgData_icon,'icon');
        $saveData->save();

        self::ClearCash();
        if($id == '0'){

            if($request->input('AddNewSet') !== null){
                return redirect()->back();
            }else{
                return redirect(route($this->PrefixRoute.'.index'))->with('Add.Done',"");
            }

        }else{
            return redirect(route($this->PrefixRoute.'.index'))->with('Edit.Done',"");
        }
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     destroy
    public function destroy($id)
    {
        $deleteRow = Category::findOrFail($id);
        $deleteRow = AdminHelper::DeleteAllPhotos($deleteRow);
        $deleteRow->delete();
        self::ClearCash();
        return back()->with('confirmDelete',"");
    }


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     EmptyPhoto
    public function emptyPhoto($id){
        $rowData = Category::findOrFail($id);
        $rowData = AdminHelper::DeleteAllPhotos($rowData,true);
        $rowData->save();
        self::ClearCash();
        return back();
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     EmptyPhoto
    public function emptyIcon ($id){
        $rowData = Category::findOrFail($id);
        $rowData = AdminHelper::DeleteAllPhotos($rowData,true,['icon']);
        $rowData->save();
        self::ClearCash();
        return back();
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     config
    public function config()
    {
        $pageData = $this->pageData;
        $pageData['TitlePage'] = "اعدادات القسم";
        $pageData['ViewType'] = "List";
        $pageData['SubView'] = false;

        return view('admin.shop.config',compact('pageData'));
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     CategorySort
    public function CategorySort($id)
    {
        $sendArr = ['TitlePage' => $this->PageTitle ,'selMenu'=> $this->selMenu  ];
        $pageData = AdminHelper::returnPageDate($this->controllerName,$sendArr);
        $pageData['ViewType'] = "List";
        $Category = [];
        if($id == 0){
            $Categories = Category::where('parent_id', null)->orderBy('postion')->get();
        }else{
            $Category =  Category::findOrNew($id);
            $Categories = Category::where('parent_id', $Category->id)->orderBy('postion')->get();
        }
        return view('admin.shop.category_sort',compact('pageData','Categories','Category'));
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     TableSortSave
    public function CategorySaveSort(Request $request){
        $positions = $request->positions;
        foreach($positions as $position) {
            $id = $position[0];
            $newPosition = $position[1];
            $saveData =  Category::findOrFail($id) ;
            $saveData->postion = $newPosition;
            $saveData->save();
        }
        self::ClearCash();
        return response()->json(['success'=>$positions]);
    }

}
