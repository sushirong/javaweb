<%--
  Created by IntelliJ IDEA.
  User: JLB
  Date: 2019/9/4
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="${path}/assets/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${path}/assets/font-awesome/4.5.0/css/font-awesome.min.css"/>
<!-- page specific plugin styles -->
<!-- text fonts -->
<link rel="stylesheet" href="${path}/assets/css/fonts.googleapis.com.css"/>
<!-- ace styles -->
<link rel="stylesheet" href="${path}/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style"/>
<!--[if lte IE 9]>
<link rel="stylesheet" href="${path}/assets/css/ace-part2.min.css" class="ace-main-stylesheet"/>
<![endif]-->
<link rel="stylesheet" href="${path}/assets/css/ace-skins.min.css"/>
<link rel="stylesheet" href="${path}/assets/css/ace-rtl.min.css"/>
<!--[if lte IE 9]>
<link rel="stylesheet" href="${path}/assets/css/ace-ie.min.css"/>
<![endif]-->
<!-- inline styles related to this page -->
<!-- ace settings handler -->
<script src="${path}/assets/js/ace-extra.min.js"></script>
<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->
<!--[if lte IE 8]>
<script src="${path}/assets/js/html5shiv.min.js"></script>
<script src="${path}/assets/js/respond.min.js"></script>
<![endif]-->
<!-- basic scripts -->
<!--[if !IE]> -->
<script src="${path}/assets/js/jquery-2.1.4.min.js"></script>
<!-- <![endif]-->
<!--[if IE]>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='${path}/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="${path}/assets/js/bootstrap.min.js"></script>
<!-- page specific plugin scripts -->
<!-- ace scripts -->
<script src="${path}/assets/js/ace-elements.min.js"></script>
<script src="${path}/assets/js/ace.min.js"></script>
