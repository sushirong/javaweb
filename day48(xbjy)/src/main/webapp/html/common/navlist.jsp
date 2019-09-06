<%--
  Created by IntelliJ IDEA.
  User: JLB
  Date: 2019/9/4
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
                <a href="${path}/html/user_list.jsp">
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
                <a href="article_list.html">
                    <i class="menu-icon fa fa-caret-right"></i>
                    发布文章
                </a>
                <a href="article_list.html">
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
                <a href="dept_list.html">
                    <i class="menu-icon fa fa-caret-right"></i>
                    部门设置
                </a>
                <a href="conference_list.html">
                    <i class="menu-icon fa fa-caret-right"></i>
                    会议系统
                </a>
            </li>


        </ul>

    </li>
</ul><!-- /.nav-list -->
</body>
</html>
