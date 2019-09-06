
<!DOCTYPE><html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Blank Page - Ace Admin</title>

		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="../assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="../assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="../assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="../assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="../assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="../assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="../assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="../assets/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="../assets/js/html5shiv.min.js"></script>
		<script src="../assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="skin-1">
		<div id="navbar" class="navbar navbar-default          ace-save-state">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<div class="navbar-header pull-left">
					<a href="index.jsp" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							小标交友
						</small>
					</a>
				</div>

				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav nav-list">

						<li class="active open">
							<a href="#" class="dropdown-toggle">
								<i class="menu-icon fa fa-tag"></i>
								<span class="menu-text"> 用户 </span>

								<b class="arrow fa fa-angle-down"></b>
							</a>

							<b class="arrow"></b>

							<ul class="submenu">


								<li class="active open">
									<a href="user_list.jsp">
										<i class="menu-icon fa fa-caret-right"></i>
										查看用户
									</a>
									<a href="user_list.jsp" >
										<i class="menu-icon fa fa-file-o"></i>

										<span class="menu-text">
								我关注的用户

								<span class="badge badge-primary">5</span>
							</span>

									</a>
									<a href="article_list.jsp">
										<i class="menu-icon fa fa-caret-right"></i>
										发布文章
									</a>
									<a href="article_list.jsp">
										<i class="menu-icon fa fa-caret-right"></i>
										我的收藏
									</a>
									<b class="arrow"></b>
								</li>
							</ul>
						</li>

						<li class="">
							<a href="#" class="dropdown-toggle">
								<i class="menu-icon fa fa-file-o"></i>

								<span class="menu-text">
								部门管理

								<span class="badge badge-primary">5</span>
							</span>

								<b class="arrow fa fa-angle-down"></b>
							</a>

							<b class="arrow"></b>

							<ul class="submenu">


								<li class="">
									<a href="dept_list.jsp">
										<i class="menu-icon fa fa-caret-right"></i>
										部门设置
									</a>
									<a href="conference_list.jsp">
                            <i class="menu-icon fa fa-caret-right"></i>
                            会议系统
                        </a>
								</li>


							</ul>

						</li>
					</ul>
				</div>
			</div><!-- /.navbar-container -->
		</div>

		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>

				
				<ul class="nav nav-list">
					


					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-tag"></i>
							<span class="menu-text"> 用户 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							
								

							<li class="">
								<a href="user_list.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									查看用户
								</a>

								<b class="arrow"></b>
							</li>

							
						</ul>
					</li>

					<li class="active open">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-file-o"></i>

							<span class="menu-text">
								关注用户

								<span class="badge badge-primary">5</span>
							</span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							
								

							<li class="active">
								<a href="user_focus.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									已关注用户
								</a>

								<b class="arrow"></b>
							</li>

							
						</ul>
						
					</li>
				</ul><!-- /.nav-list -->

				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>
			</div>

			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->
					</div>

					<div class="page-content">

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="row" style="padding-left: 20px;">
									<form class="form-inline">
										<input type="text" class="input-small" placeholder="按姓名查找" style="width: 150px;"/>


										<button type="button" class="btn btn-info btn-sm" >
											<i class="ace-icon fa fa-key bigger-110"></i>查询
										</button>
									</form>

								</div>
								<hr style="border-top:1px solid #6fb3e0">
								<div class="row">
									<div class="col-xs-12">
										<table id="simple-table" class="table  table-bordered table-hover">
											<thead>
											<tr>

												<th class="detail-col">ID</th>
												<th>姓名</th>
												<th>性别</th>
												<th class="hidden-480">年龄</th>

												<th>

													简介
												</th>
												<th class="hidden-480">操作</th>
												<th class="hidden-480">加关注</th>


											</tr>
											</thead>

											<tbody>

											<tr>
												<td class="center">
													1
												</td>

												<td class="center">
													周伯通
												</td>

												<td>
													男
												</td>
												<td>55</td>
												<td class="hidden-480">一身神通</td>


												<td>
													<div class="hidden-sm hidden-xs btn-group">
                                                <span class="label label-info arrowed-in-right arrowed"
													  onclick="location='#'" style="cursor: pointer">详细信息</span>

													</div>

												</td>
												<td>
													<div class="col-xs-3">
														<label>
															<input name="switch-field-1" class="ace ace-switch ace-switch-6" type="checkbox">
															<span class="lbl"></span>
														</label>
													</div>

												</td>
											</tr>
											<tr>
												<td class="center">
													2
												</td>

												<td class="center">
													小标
												</td>

												<td>
													女
												</td>
												<td>20</td>
												<td class="hidden-480">古墓派掌门人</td>


												<td>
													<div class="hidden-sm hidden-xs btn-group">
                                                <span class="label label-info arrowed-in-right arrowed"
													  onclick="location='#'" style="cursor: pointer">详细信息</span>


													</div>

												</td>
												<td>
													<div class="col-xs-3">
														<label>
															<input name="switch-field-1" class="ace ace-switch ace-switch-6" type="checkbox">
															<span class="lbl"></span>
														</label>
													</div>

												</td>
											</tr>
											<tr>
												<td class="center">
													3
												</td>

												<td class="center">
													杨过
												</td>

												<td>
													男
												</td>
												<td>18</td>
												<td class="hidden-480">神雕大侠</td>


												<td>
													<div class="hidden-sm hidden-xs btn-group">
                                                <span class="label label-info arrowed-in-right arrowed"
													  onclick="location='#'" style="cursor: pointer">详细信息</span>


													</div>

												</td>
												<td>
													<div class="col-xs-3">
														<label>
															<input name="switch-field-1" class="ace ace-switch ace-switch-6" type="checkbox">
															<span class="lbl"></span>
														</label>
													</div>

												</td>
											</tr>

											</tbody>
										</table>
									</div><!-- /.span -->
								</div><!-- /.row -->


								<div class="row">
									<div class="col-sm-offset-6 col-sm-6">


										<div>
											<ul class="pagination">
												<li class="disabled">
													<a href="#">
														<i class="ace-icon fa fa-angle-double-left"></i>
													</a>
												</li>

												<li class="active">
													<a href="#">1</a>
												</li>

												<li>
													<a href="#">2</a>
												</li>

												<li>
													<a href="#">3</a>
												</li>

												<li>
													<a href="#">4</a>
												</li>

												<li>
													<a href="#">5</a>
												</li>

												<li>
													<a href="#">
														<i class="ace-icon fa fa-angle-double-right"></i>
													</a>
												</li>
											</ul>
										</div>


									</div><!-- /.span -->

								</div>


								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div>


					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

			<div class="footer">
				<div class="footer-inner">
					<div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">Ace</span>
							Application &copy; 2013-2014
						</span>

						&nbsp; &nbsp;
						
					</div>
				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="../assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="../assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='../assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="../assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->

		<!-- ace scripts -->
		<script src="../assets/js/ace-elements.min.js"></script>
		<script src="../assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
	</body>
</html>
