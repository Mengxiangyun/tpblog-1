<ul class="nav" id="side-menu">
  <li><a {if $nav=='category'}class="active"{/if} href="{:url('admin_category_list')}"><i class="fa fa-leaf fa-fw"></i> 分类管理</a></li>
  <li><a {if $nav=='tag'}class="active"{/if} href="{:url('admin_tag_list')}"><i class="fa fa-tag fa-fw"></i> 标签管理</a></li>
  <li><a {if $nav=='article'}class="active"{/if} href="{:url('admin_article_list')}"><i class="fa fa-book fa-fw"></i> 文章管理</a></li>
  <li><a {if $nav=='profile'}class="active"{/if} class="" href="{:url('admin_profile')}"><i class="fa fa-user fa-fw"></i> 个人信息</a></li>
</ul>
