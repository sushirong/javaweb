
<!DOCTYPE><html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>Blank Page - Ace Admin</title>

    <meta name="description" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../assets/css/style.css"/>
    <link rel="stylesheet" href="../assets/font-awesome/4.5.0/css/font-awesome.min.css"/>

    <!-- page specific plugin styles -->

    <!-- text fonts -->
    <link rel="stylesheet" href="../assets/css/fonts.googleapis.com.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="../assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="../assets/css/ace-part2.min.css" class="ace-main-stylesheet"/>
    <![endif]-->
    <link rel="stylesheet" href="../assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="../assets/css/ace-rtl.min.css"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="../assets/css/ace-ie.min.css"/>
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
            <ul class="nav ace-nav" style="height: 0">>

                <li class="light-blue dropdown-modal">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="../assets/images/avatars/user.jpg" alt="Jason's Photo"/>
                        <span class="user-info">
									<small>欢迎你,</small>
									小标
								</span>

                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>

                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">


                        <li>
                            <a href="user_detail.jsp">
                                <i class="ace-icon fa fa-user"></i>
                                个人信息
                            </a>
                        </li>

                        <li class="divider"></li>

                        <li>
                            <a href="#">
                                <i class="ace-icon fa fa-power-off"></i>
                                退出
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
        try {
            ace.settings.loadState('main-container')
        } catch (e) {
        }
    </script>

    <div id="sidebar" class="sidebar responsive ace-save-state">
        <script type="text/javascript">
            try {
                ace.settings.loadState('sidebar')
            } catch (e) {
            }
        </script>


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
        </ul><!-- /.nav-list -->

        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state"
               data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
    </div>

    <div class="main-content">
        <div style="position: absolute;margin: 20px 0 0 100px ;">
            <button type="button" class="btn btn-info">
                <i class="glyphicon glyphicon-hand-up"></i> 点赞
            </button>
            &nbsp;&nbsp;&nbsp;
            <button type="button" class="btn btn-success">
                <i class="glyphicon glyphicon-heart"></i> 收藏
            </button>
        </div>
        <h1 style="text-align: center">如何做一名合格的Java工程师</h1>
        <div class="articleDetail">

            <h5>
                <span>发布人：</span>
                <p>小标</p>
            </h5>
            <h5>
                <span>发布时间：</span>
                <p>2019-05-18 23:35:21</p>
            </h5>
            <h5>
                <span>浏览次数：</span>
                <p>120054</p>
            </h5>
			<h5>
                <span>点赞数：</span>
                <p>87</p>
            </h5>
            <h5>
                <span>收藏次数：</span>
                <p>87</p>
            </h5>
            <div style="height: 225px;overflow: auto">
                做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力
                做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力
                做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力
                需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，
                需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，
                需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，
                需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，
                做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力
                做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力
                做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力
                需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，
                需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，
                需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，
                需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，
                做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力
                做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力
                做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力
                需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，
                需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，
                需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，
                需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，需要持之以恒的毅力，
                做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力
                做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力
                做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力，做一名Java工程师需要付出非常大的努力
            </div>
            <hr>
            
            <div>
                <p>点赞栏：</p>
                <div class="good">
                    <a href=""><img src="../assets/images/avatars/user.jpg" alt=""></a>
                    <a href=""><img src="../assets/images/avatars/user.jpg" alt=""></a>
                    <a href=""><img src="../assets/images/avatars/user.jpg" alt=""></a>
                    <a href=""><img src="../assets/images/avatars/user.jpg" alt=""></a>
                </div>
            </div>

                <h6 style="text-align: right">您关注的：小东、小方、小标、小准等人收藏了该文章</h6>
        </div>

    </div><!-- /.main-content -->

    <div class="footer">
        <div class="footer-inner">
            <div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">Ace</span>
							Application &copy; 2013-2014
						</span>

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
    if ('ontouchstart' in document.documentElement) document.write("<script src='../assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="../assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->

<!-- ace scripts -->
<script src="../assets/js/ace-elements.min.js"></script>
<script src="../assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
</body>
</html>
