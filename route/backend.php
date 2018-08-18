<?php

Route::rule('/login', 'backend/Login/login')->name('login');
Route::rule('/logout', 'backend/Login/logout')->name('logout');

Route::rule('/reg', 'backend/Reg/reg')->name('reg');
Route::get('/user/exist', 'backend/Reg/userExist')->name('user_exist');

// 分类管理
Route::get('/admin/category', 'backend/Category/index')->name('admin_category_list');

// 标签管理
Route::get('/admin/tag', 'backend/Tag/index')->name('admin_tag_list');
