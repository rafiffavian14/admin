#!/bin/bash

php artisan key:generate
php artisan migrate
php artisan db:seed
composer dump-autoload

