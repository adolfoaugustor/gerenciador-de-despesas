<?php

use App\User;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    public function run()
    {
        $users = [
            [
                'id'             => 1,
                'name'           => 'Admin',
                'email'          => 'adolfoaugustor@gmail.com',
                'password'       => '$2y$10$iz6WtVj69p/5JonFfuBRVO2LwrEGTJw3I6BqliWCbSmSF.5X9RPcu',
                'remember_token' => null,
                'created_at'     => '2023-09-24 00:01:00',
                'updated_at'     => '2023-09-24 00:01:00',
            ],
        ];

        User::insert($users);
    }
}
