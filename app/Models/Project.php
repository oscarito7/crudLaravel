<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;
    use HasFactory;

    protected $fillable=["SKU","name","cantidad","precio","descripcion"];

    protected static function boot(){
        parent::boot();
        self::creating(function ($table){
            if(! app()->runningInConsole()){
                $table->user_id = auth()->id();
            }
        });
    }

    //definimos la relacion entre un producto y un usuario y lo conseguimos con belongsTo
    public function user(){
        return $this->belongsTo(User::class);
    }
}
