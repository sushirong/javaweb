<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE><html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>Blank Page - Ace Admin</title>

    <meta name="description" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../assets/font-awesome/4.5.0/css/font-awesome.min.css"/>

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="../assets/css/jquery-ui.custom.min.css"/>
    <link rel="stylesheet" href="../assets/css/chosen.min.css"/>
    <link rel="stylesheet" href="../assets/css/bootstrap-datepicker3.min.css"/>
    <link rel="stylesheet" href="../assets/css/bootstrap-timepicker.min.css"/>
    <link rel="stylesheet" href="../assets/css/daterangepicker.min.css"/>
    <link rel="stylesheet" href="../assets/css/bootstrap-datetimepicker.min.css"/>
    <link rel="stylesheet" href="../assets/css/bootstrap-colorpicker.min.css"/>

    <!-- text fonts -->
    <link rel="stylesheet" href="../assets/css/fonts.googleapis.com.css"/>

    <link rel="stylesheet" href="../assets/css/ace.min.css" class="ace-main-stylesheet"/>
    <link rel="stylesheet" href="../assets/css/ace-part2.min.css" class="ace-main-stylesheet"/>
    <link rel="stylesheet" href="../assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="../assets/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="../assets/css/ace-ie.min.css"/>
    <script src="../assets/js/ace-extra.min.js"></script>


    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../assets/css/select2.min.css"/>
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
<%@include file="common/navbar.jsp"%>

<div class="main-container ace-save-state" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.loadState('main-container')
        } catch (e) {
        }
    </script>

    <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
        <script type="text/javascript">
            try {
                ace.settings.loadState('sidebar')
            } catch (e) {
            }
        </script>


        <%@include file="common/navlist.jsp"%>

        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state"
               data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
    </div>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">


                <!--<div class="nav-search" id="nav-search">
                    <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input"
                                           id="nav-search-input" autocomplete="off"/>
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
                    </form>
                </div>-->
            </div>

            <div class="page-content">

                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->

                        <div id="user-profile-1" class="user-profile row">
                            <div class="col-xs-12 col-sm-3 center">
                                <div>
                                    <div>
                                        <span class="profile-picture">
                                            <img class="editable img-responsive"
                                                 alt="Alex's Avatar"
                                            <%--完全与虚拟路径设置一致  不能加应用名--%>
                                                 src="/upload/${map.id}/${map.pic}" style="cursor: pointer"
                                                 id="icon"/>

                                        </span>
                                        <form action="${path}/user/uploadImg" method="post" enctype="multipart/form-data" id="imgForm">
                                            <input type="hidden" name="userId" value="${map.id}">
                                            <input type="file" id="iconFile" name="img">
                                        </form>
                                    </div>


                                    <div class="space-4"></div>

                                    <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                        <div class="inline position-relative">
                                            <a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
                                                <i class="ace-icon fa fa-circle light-green"></i>
                                                &nbsp;
                                                <span class="white">${map.real_name}</span>
                                            </a>
                                        </div>
                                    </div>


                                </div>

                                <div class="space-6"></div>


                                <div class="hr hr12 dotted"></div>

                                <div class="clearfix">
                                    <div class="grid2">
                                        <span class="bigger-175 blue">25</span>

                                        <br/>
                                        关注数
                                    </div>

                                    <div class="grid2">
                                        <span class="bigger-175 blue">12</span>

                                        <br/>
                                        查看数
                                    </div>
                                </div>


                                <div class="hr hr16 dotted"></div>
                                <div style="text-align: center">

                                    <button class="btn btn-primary" id="imgBtn">更改头像</button>
                                </div>
                            </div>

                            <div class="col-xs-12 col-sm-9">

                                <div class="space-12"></div>
                                <form role="form">
                                    <div class="profile-user-info profile-user-info-striped">

                                        <div class="profile-info-row">
                                            <div class="profile-info-name"> 真实姓名</div>

                                            <div class="profile-info-value">
                                                <div class="col-sm-9">
                                                    <input type="text" placeholder="Username"
                                                           class="col-xs-10 col-sm-5" value="${map.real_name}">
                                                </div>

                                            </div>
                                        </div>
                                        <div class="profile-info-row">
                                            <div class="profile-info-name"> 电话</div>

                                            <div class="profile-info-value">

                                                <div class="col-sm-9">
                                                    <input type="text" placeholder="Telephone"
                                                           class="col-xs-10 col-sm-5" value="${map.phone}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="profile-info-row">
                                            <div class="profile-info-name"> 是否私密</div>

                                            <div class="profile-info-value">

                                                <div class="col-sm-9">
                                                    <label style="margin:10px 0 0 0 ">
                                                        <input name="switch-field-1" class="ace ace-switch ace-switch-6"
                                                               type="checkbox">
                                                        <span class="lbl"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="profile-info-row">
                                            <div class="profile-info-name"> 所属部门</div>

                                            <div class="profile-info-value">

                                                <div class="col-sm-9">
                                                    <select name="" id="select" class="form-control">
                                                        <option value="${map.dept_id}">${map.name}</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name"> 性别</div>

                                            <div class="control-group">
                                                <div class="col-sm-9">
                                                    <div class="radio">
                                                        <label>
                                                            <input name="gender" type="radio" class="ace" <c:if test="${map.gender == '0'}">checked</c:if> >
                                                            <span class="lbl"> 男</span>
                                                        </label>

                                                        <label>
                                                            <input name="gender" type="radio" class="ace"<c:if test="${map.gender == '1'}">checked</c:if> >
                                                            <span class="lbl"> 女</span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name"> 年龄</div>

                                            <div class="profile-info-value">
                                                <div class="col-sm-9">
                                                    <input type="text" placeholder="Age"
                                                           class="col-xs-10 col-sm-5" value="${map.age}">

                                                </div>

                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name"> 注册时间</div>

                                            <div class="profile-info-value">

                                                <div class="col-sm-9">
                                                    <input type="text" name="registerTime" readonly value='<fmt:formatDate value="${map.register_time}" pattern="yyyy-mm-dd"/>'
                                                           class="col-xs-10 col-sm-5">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name"> 最后登录时间</div>

                                            <div class="profile-info-value">
                                                <div class="col-sm-9">
                                                    <input type="text" name="loginTime" readonly value='<fmt:formatDate value="${map.login_time}" pattern="yyyy-mm-dd"/>'
                                                           class="col-xs-10 col-sm-5">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="profile-info-row">
                                            <div class="profile-info-name"> 简介</div>

                                            <div class="profile-info-value">
                                                <div class="col-sm-9">
                                                    <textarea class="form-control" id="form-field-8"
                                                              placeholder="introduction"
                                                    >${map.desc}</textarea>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="profile-info-row">
                                            <div class="profile-info-name"></div>

                                            <div class="profile-info-value">
                                                <div class="col-sm-9">
                                                    <button class="btn btn-primary">修改资料</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>


                            <!-- PAGE CONTENT ENDS -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.page-content -->
            </div>
        </div><!-- /.main-content -->

        <%@include file="common/foot.jsp"%>

        <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
            <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
        </a>
    </div><!-- /.main-container -->
</div>
<!-- basic scripts -->

<!--[if !IE]> -->
<script src="../assets/js/jquery-2.1.4.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<!-- page specific plugin scripts -->
<script src="../assets/js/jquery.bootstrap-duallistbox.min.js"></script>
<script src="../assets/js/jquery.raty.min.js"></script>
<script src="../assets/js/bootstrap-multiselect.min.js"></script>
<script src="../assets/js/select2.min.js"></script>
<script src="../assets/js/jquery-typeahead.js"></script>


</body>
<script>
    $(function(){
        $.post("${path}/dept/selectAll",function(obj){
            console.log(obj);
            $("#select").empty();
            var deptId = "${map.dept_id}";//获取部门id
            var html = "";
            for (var i = 0; i < obj.length; i++) {
                if(deptId==obj[i].id){
                    html += '<option selected value="'+obj[i].id+'">'+obj[i].name+'</option>';
                }else{
                    html += '<option value="'+obj[i].id+'">'+obj[i].name+'</option>';
                }

            }
            $("#select").html(html);
        },"json");


        $("#imgBtn").on("click",function(){
            $("#imgForm").submit();
        });
    })
</script>
</html>
