#!/bin/bash
composer install --no-progress --no-interaction
php artisan migrate
php artisan key:generate
php artisan cache:clear
php artisan config:clear
php artisan route:clear