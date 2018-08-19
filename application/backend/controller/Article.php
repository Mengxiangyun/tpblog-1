<?php

namespace app\backend\controller;

use think\Request;
use app\backend\controller\Base;
use app\common\model\ArticleModel;

class Article extends Base
{
	public function initialize()
	{
		$this->checkSession();
		$this->assign('nav', 'article');
	}

	public function index(Request $request)
	{
		$currentUser = $this->getCurrentUser();

		$articles = ArticleModel::where('user_id', $currentUser->id)
						->order('id', 'desc')
						->select();

		$this->assign('articles', $articles);
		return $this->fetch('article/list');
	}

	public function add(Request $request)
	{
		$currentUser = $this->getCurrentUser();

		if ($request->isPost()) {
			$postData = $request->post();
			if (!$postData['title']) {
				return $this->error('添加失败,标题不能为空');
			}
			if (!$postData['content']) {
				return $this->error('添加失败,内容不能为空');
			}

			$articleModel = new ArticleModel;
			$article = $articleModel->addArticle($postData);
			if (!$article) {
				return $this->error('添加失败');
			}

			return $this->success('添加成功', 'admin_article_list');
		}

		// 查出所有的category和tag
		$categories = CategoryModel::where('user_id', $currentUser->id)
						->order('id', 'desc')
						->select();

		$tags = TagModel::where('user_id', $currentUser->id)
						->order('id', 'desc')
						->select();

		$this->assign('categories', $categories);
		$this->assign('tags', $tags);
		return $this->fetch('article/add');
	}

}
