<?php

namespace Database\Factories;

use App\Models\project;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;

class ProjectFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = project::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            "SKU"=>$this->faker->company,
            "name"=>$this->faker->firstName,
            "cantidad"=>$this->faker->randomDigit,
            "precio"=>$this->faker->randomNumber(3),
            "descripcion"=>$this->faker->company,
            "user_id"=>User::all()->random()->id,
            "created_at"=>now()

        ];
    }
}
