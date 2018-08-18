{extend name="common/base" /}
{block name="title"}标签管理 - {__block__}{/block}

{block name="content"}
	<div class="row">
	  <div class="col-lg-12">
	    <h1 class="page-header">
	      标签列表
	      <div class="pull-right">
	        <a class="btn btn-success btn-sm" href="./添加标签.html">添加标签</a>
	      </div>
	    </h1>
	  </div>
	  <div class="col-lg-12">
	    <div class="table-responsive">
	      <table class="table table-striped">
	        <thead>
	          <tr>
	            <th>#</th>
	            <th>标签名称</th>
	            <th>操作</th>
	          </tr>
	        </thead>
	        <tbody>
	          <tr>
	            <th scope="row">1</th>
	            <td>php</td>
	            <td>
	              <div class="btn-group">
	                <a class="btn btn-default btn-sm" href="#">编辑</a>
	                <a class="btn btn-danger btn-sm" href="#">删除</a>
	              </div>
	            </td>
	          </tr>
	          <tr>
	            <th scope="row">2</th>
	            <td>mysql</td>
	            <td>
	              <div class="btn-group">
	                <a class="btn btn-default btn-sm" href="#">编辑</a>
	                <a class="btn btn-danger btn-sm" href="#">删除</a>
	              </div>
	            </td>
	          </tr>
	          <tr>
	            <th scope="row">3</th>
	            <td>服务器</td>
	            <td>
	              <div class="btn-group">
	                <a class="btn btn-default btn-sm" href="#">编辑</a>
	                <a class="btn btn-danger btn-sm" href="#">删除</a>
	              </div>
	            </td>
	          </tr>
	        </tbody>
	      </table>
	    </div>
	    <nav class="web-pagination text-center">
	      <ul class="pagination">
	        <li class="active"><a href="#">1</a></li>
	        <li><a href="#">2</a></li>
	        <li><a href="#">下一页</a></li>
	        <li><a href="#">尾页</a></li>
	      </ul>
	    </nav>
	  </div>
	</div>
{/block}
