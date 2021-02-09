@extends("layouts.app");

@section("content")
<div class="flex justify-center flex-wrap bg-gray-200 p-4 mt-5">
    <div class="text-center">
        <h1 class="mb-5">{{__("Listado de Productos")}}</h1>
        <a href="{{route ("projects.create")}}" class="bg-transparent hover:bg-blue-500 text-blue-700 font-semibold hover:text-white py-2 px-4 border-blue-500 hover:border-transparent rounded">
            {{__("Crear Producto")}}
        </a> 
    </div>
</div>

<form class="form-inline my-2 my-lg-0 " >
    <input  name="buscarpor" class="form-control mr-sm-2 " type="search" placeholder="Search By SKU" aria-label="Search" value="{{$buscarpor}}">
    <button class="btn btn-success my-2 my-sm-0 " type="submit">Search</button>
  
  </form>
<table class="table-auto">
    <thead>
      <tr>
        <th>{{__("SKU")}}</th>
        <th>{{__("Name")}}</th>
        <th>{{__("Cant.")}}</th>
        <th>{{__("Price")}}</th>
        <th>{{__("Description")}}</th>
        <th>{{__("Action")}}</th>
        
      </tr>
    </thead>
    <tbody>
        @forelse($projects as $project)
      <tr>
        <td class="border px-4 py-2">{{$project->SKU}}</td>
        <td class="border px-4 py-2">{{$project->name}}</td>
        <td class="border px-4 py-2">{{$project->cantidad}}</td>
        <td class="border px-4 py-2">{{$project->precio}}</td>
        <td class="border px-4 py-2">{{$project->descripcion}}</td>
        <td class="border px-4">{{date_format($project->created_at,"d/m/Y")}}</td>
        <td class="border px-4 py-2">
            <a href=" {{ route("projects.edit", ["project" => $project]) }}" class="text-blue-400">{{__("Edit")}}</a>
            <a href="#" class="text-red-400" onclick="event.preventDefault(); 
            document.getElementById('delete-project-{{$project->id}}-form').submit();">{{__("Delete")}}</a>
            <form id="delete-project-{{$project->id}}-form" action="{{route("projects.destroy",["project"=>$project]) }}" method="POST" class="hidden">
            @method("DELETE")
            @csrf
            </form>
        </td>
      </tr>  
      @empty 
      <tr>
          <td colspan="7">
              <div class="bg-red-100  text-center border border-red-400 text-red-700 px-4 py2">
                    <p> <strong class="font-bold">{{__("No hay Productos ")}}</strong></p>
                    <span class="block sm:inline">{{__("Todaia no hay para mostrar")}}</span>
              </div>
          </td>
      </tr>

      @endforelse
    </tbody>
  </table>
  @if($projects->count())
  <div class="mt-3">
      {{$projects->links()}}
  </div>
  @endif
@endsection