<?php

namespace App\Http\Controllers;

use App\Models\Project;
use Illuminate\Http\Request;

class ProjectController extends Controller
{
   //se crea un constructor para proteger estas rutas para los usuarios identificados 
   public function __construct(){
    $this->middleware("auth");
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Request $request)
    {
        $buscarpor=$request->get('buscarpor');
        $projects = Project::with("user")->where('SKU','like','%'.$buscarpor.'%')->paginate(10);
        return view("projects.index", compact("projects","buscarpor"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $project = new Project;
        $title=__("Crear Producto");
        $textButton =__("Crear");
        $route= route("projects.store");
        return view("projects.create", compact("title", "textButton","route","project"));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            "SKU" => "nullable|string|min:2",
            "name" => "required|max:80",
            "cantidad"=>"required|min:2",
            "precio"=>"required|min:2",
            "descripcion"=>"nullable|max:80"
         ]);
         Project::create($request->only("SKU","name","cantidad","precio","descripcion"));
         return redirect(route("projects.index"))
         ->with("success",__("Producto Creado!!!!"));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function show(Project $project)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function edit(Project $project)
    {
        $update =true;
        $title= __("Editar Producto");
        $textButton= __("Actualizar");
        $route = route("projects.update",["project"=>$project]);
        return view("projects.edit", compact("update", "title","textButton","route","project"));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Project $project)
    {
        $this->validate($request,[
            "SKU" => "nullable|unique:projects,SKU,".$project->id,
            "name" => "required|max:80",
            "cantidad"=>"required|min:2",
            "precio"=>"required|min:2",
            "descripcion"=>"nullable|max:80"
        ]);
        $project->fill($request->only("SKU","name","cantidad","precio","descripcion"))->save();
        return redirect(route("projects.index"))->with("success", __("Producto Actualizado!!!"));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function destroy(Project $project)
    {
        $project->delete();
        return redirect(route("projects.index"))->with("success", __("Producto Eliminado!!!"));
    }
}
