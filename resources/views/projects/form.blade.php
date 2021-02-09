<div class="w-full max-w-lg">
    <div class="flex flex-wrap">
        <h1 class="mb-5">{{$title}} </h1>
    </div>
</div>

<form class="w-full max-w-lg" method="POST" action="{{$route}}">
    @csrf 
    @isset($update)
        @method("PUT")
    @endisset
    <div class="flex flex-wrap mx-3 mx-6">
        <div class="w-full px-3" >
            <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">
                {{__(("SKU"))}}
            </label>
            <input name="SKU" value="{{old("sku")?? $project->SKU}}" class="appearance-non">
            <p class="text-gray-600 text-xs italic">{{__("SKU del producto")}}</p>
            @error("name")
            <div class="border border-red-400 rounded- bg-red-100 mt-1 px-4 py-3 text red-7">
                {{$message}}
            </div>
            @enderror
        </div>
    </div>
    <div class="flex flex-wrap mx-3 mx-6">
        <div class="w-full px-3" >
            <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">
                {{__(("Nombre"))}}
            </label>
            <input name="name" value="{{old("name")?? $project->name}}" class="appearance-non">
            <p class="text-gray-600 text-xs italic">{{__("Nombre del producto")}}</p>
            @error("name")
            <div class="border border-red-400 rounded- bg-red-100 mt-1 px-4 py-3 text red-7">
                {{$message}}
            </div>
            @enderror
        </div>
    </div>
    <div class="flex flex-wrap mx-3 mx-6">
        <div class="w-full px-3" >
            <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">
                {{__(("Cantidad"))}}
            </label>
            <input name="cantidad" value="{{old("cantidad")?? $project->cantidad}}" class="appearance-non">
            <p class="text-gray-600 text-xs italic">{{__("Cantidad del producto")}}</p>
            @error("cantidad")
            <div class="border border-red-400 rounded- bg-red-100 mt-1 px-4 py-3 text red-7">
                {{$message}}
            </div>
            @enderror
        </div>
    </div>
    <div class="flex flex-wrap mx-3 mx-6">
        <div class="w-full px-3" >
            <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">
                {{__(("Precio"))}}
            </label>
            <input name="precio" value="{{old("precio")?? $project->precio}}" class="appearance-non">
            <p class="text-gray-600 text-xs italic">{{__("precio del producto")}}</p>
            @error("precio")
            <div class="border border-red-400 rounded- bg-red-100 mt-1 px-4 py-3 text red-7">
                {{$message}}
            </div>
            @enderror
        </div>
    </div>
    <div class="flex flex-wrap mx-3 mx-6">
        <div class="w-full px-3" >
            <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">
                {{__(("Descripcion"))}}
            </label>
            <input name="descripcion" value="{{old("descripcion")?? $project->name}}" class="appearance-non">
            <p class="text-gray-600 text-xs italic">{{__("Descripcion del producto")}}</p>
            @error("descripcion")
            <div class="border border-red-400 rounded- bg-red-100 mt-1 px-4 py-3 text red-7">
                {{$message}}
            </div>
            @enderror
        </div>
    </div>
    <div class="md:flex md:items-center">
        <div class="md:w-1/3">
            <button class="shadow bg-teal-400 hover:bg-teal-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded" type="submit">
                {{ $textButton}}  
            </button>
    </div>

</form>