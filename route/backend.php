<?php

Route::rule('/login', 'backend/Login/login')->name('login');
Route::rule('/logout', 'backend/Login/logout')->name('logout');

Route::rule('/reg', 'backend/Reg/reg')->name('reg');
Route::get('/user/exist', 'backend/Reg/userExist')->name('user_exist');
