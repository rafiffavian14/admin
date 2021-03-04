<?php

namespace Database\Factories;

use App\Models\Manajemen_layanan;
use Illuminate\Database\Eloquent\Factories\Factory;

class LayananFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Manajemen_layanan::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'daftar_layanan' => $this->faker->jobTitle,
            'prosedur' => $this->faker->company,
        ];
    }
}
