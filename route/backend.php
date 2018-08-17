<?php

Route::get('/login', 'backend/Login/login')->name('login');

Route::rule('/reg', 'backend/Reg/reg')->name('reg');
Route::get('/user/exist', 'backend/Reg/userExist')->name('user_exist');
