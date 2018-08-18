<?php

namespace app\backend\controller;

use think\Request;
use app\backend\controller\Base;

class Category extends Base
{
	public function index(Request $request)
	{
		$this->checkSession();

		return $this->fetch('category/list');
	}

}
	