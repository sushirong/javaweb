<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE><html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>Blank Page - Ace Admin</title>

    <meta name="description" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <%@include file="common/head.jsp"%>
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


                <div class="nav-search" id="nav-search">
                    <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input"
                                           id="nav-search-input" autocomplete="off"/>
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

                                    <tbody id="tbody">

                                    <%--<tr>
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
                                                      onclick="location='user_detail.html'" style="cursor: pointer">详细信息</span>

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
                                                      onclick="location='user_detail.html'" style="cursor: pointer">详细信息</span>


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
                                                      onclick="location='user_detail.html'" style="cursor: pointer">详细信息</span>


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
                                                      onclick="location='user_detail.html'" style="cursor: pointer">详细信息</span>


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
                                                      onclick="location='user_detail.html'" style="cursor: pointer">详细信息</span>


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
                                    </tr>--%>
                                    </tbody>
                                </table>
                            </div><!-- /.span -->
                        </div><!-- /.row -->


                        <nav aria-label="Page navigation" style="position: fixed;right: 100px;bottom: 10px;">
                            <ul class="pagination" id="pagination">
                                <%--<li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>--%>
                            </ul>
                        </nav>


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

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="../assets/js/jquery-2.1.4.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
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
<script type="application/javascript">
    $(function () {

        selectUser(1);
    })
    
    function selectUser(currentPage) {

        $.post("${path}/user/userlist",{"currentPage":currentPage,"realName":$(".input-small").val()},function (obj) {
            console.log(obj.data);
            var html = "";
            for (var i = 0; i < obj.data.length; i++) {
                var val = obj.data[i];
                var gender = val.gender=='0'?'男':'女';

                //每次遍历  拼接成 一个tr
                html+=  '<tr>\n' +
                    '                                        <td class="center">\n' +
                    val.user_id +
                    '                                        </td>\n' +
                    '\n' +
                    '                                        <td class="center">\n' +
                    val.real_name +
                    '                                        </td>\n' +
                    '\n' +
                    '                                        <td>\n' +
                    gender+
                    '                                        </td>\n' +
                    '                                        <td>'+val.age+'</td>\n' +
                    '                                        <td class="hidden-480">'+val.desc+'</td>\n' +
                    '\n' +
                    '\n' +
                    '                                        <td>\n' +
                    '                                            <div class="hidden-sm hidden-xs btn-group">\n' +
                    '                                                <span class="label label-info arrowed-in-right arrowed"\n' +
                    '                                                      onclick="location=\'user_detail.html\'" style="cursor: pointer">详细信息</span>\n' +
                    '\n' +
                    '                                            </div>\n' +
                    '\n' +
                    '                                        </td>\n' +
                    '                                        <td>\n' +
                    '                                            <div class="col-xs-3">\n' +
                    '                                                <label>\n' +
                    '                                                    <input name="switch-field-1" class="ace ace-switch ace-switch-6" type="checkbox">\n' +
                    '                                                    <span class="lbl"></span>\n' +
                    '                                                </label>\n' +
                    '                                            </div>\n' +
                    '\n' +
                    '                                        </td>\n' +
                    '                                    </tr>'
            }
            $("#tbody").html(html);

            var page = "";

            if(obj.currentPage>1){
                page = "<li>\n" +
                    "                                    <a href=\"#\" aria-label=\"Previous\" onclick='selectUser("+(obj.currentPage-1)+")'>\n" +
                    "                                        <span aria-hidden=\"true\">&laquo;</span>\n" +
                    "                                    </a>\n" +
                    "                                </li>";
            }




            for (var i = obj.start; i <= obj.end; i++) {
                page += "<li><a href='#' onclick='selectUser("+i+")'>"+i+"</a></li>";
            }

            if(obj.currentPage<obj.totalPage){
                page += "<li>\n" +
                    "                                    <a href=\"#\" aria-label=\"Next\"  onclick='selectUser("+(obj.currentPage+1)+")' >\n" +
                    "                                        <span aria-hidden=\"true\">&raquo;</span>\n" +
                    "                                    </a>\n" +
                    "                                </li>";
            }

            $("#pagination").html(page);

        },"json")
    }
</script>
</html>
