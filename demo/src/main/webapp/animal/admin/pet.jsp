<%--
  Created by IntelliJ IDEA.
  User: 24255
  Date: 2019/8/22
  Time: 23:49
  To change this template use /images | Settings | /images Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8"/>
    <title>流浪猫狗领养管理后台</title>
    <!-- 引入css样式文件 -->
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/js/houtai/css/metisMenu.min.css" rel="stylesheet">
    <!-- DataTables CSS -->
    <link href="${pageContext.request.contextPath}/js/houtai/css/dataTables.bootstrap.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/js/houtai/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/js/houtai/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/js/houtai/css/boot-crm.css" rel="stylesheet" type="text/css">
    <style>
        .panel-heading {
            background-color: #337ab7;
            border-color: #2e6da4;
            font-size: 14px;
            padding-left: 20px;
            height: 36px;
            line-height: 18px;
            color: white;
            position: relative;
        }

        /*转成手形图标*/
        .panel-heading span {
            position: absolute;
            right: 10px;
            top: 12px;
        }

        .pagination li a {
            cursor: pointer;
        }

        .mySize {
            width: 115px;
        }

        .details {
            height: 101px;
            line-height: 22px!important;
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 4;
            -webkit-box-orient: vertical;
        }

        .center {
            text-align: center;
            line-height: 84px!important;
        }
    </style>
</head>
<body>
<div id="wrapper">
    <!-- 导航栏部分 -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-brand" href="">流浪猫狗管理系统</a>
        </div>
        <!-- 导航栏右侧图标部分 -->
        <!-- 导航栏右侧图标部分 -->
        <ul class="nav navbar-top-links navbar-right">
            <!-- 消息通知 end -->
            <!-- 用户信息和系统设置 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="crmclass/list.action#">
                    <i class="fa fa-user fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="crmclass/list.action#"><i class="fa fa-user fa-fw"></i>
                        用户：</a>
                    </li>
                    <li><a href="crmclass/list.action#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
                    <li class="divider"></li>
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/logout.action">
                            <i class="fa fa-sign-out fa-fw"></i>退出登录
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 用户信息和系统设置结束 -->
        </ul> <!-- 左侧显示列表部分 start-->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <!-- 教学管理  折叠的分组列表 -->
                <div class="panel-heading" id="collapseListGroupHeading3" data-toggle="collapse"
                     data-target="#collapseListGroup3" role="tab">
                    <h4 class="panel-title">
                        后台管理 <span class="fa fa-chevron-up right"></span>
                    </h4>
                </div>
                <div id="collapseListGroup3" class="panel-collapse collapse in" role="tabpanel"
                     aria-labelledby="collapseListGroupHeading3">
                    <ul class="list-group">
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/animal/admin/admin.jsp">
                                <i class="fa fa-flash fa-fw"></i> 管理员信息
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/animal/admin/knowledge.jsp">
                                <i class="fa fa-flash fa-fw"></i> 流浪动物知识信息
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/animal/admin/pet.jsp">
                                <i class="fa fa-sitemap fa-fw"></i> 流浪猫狗管理
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/animal/admin/adopt.jsp">
                                <i class="fa fa-sitemap fa-fw"></i> 领养管理
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/animal/admin/blog.jsp">
                                <i class="fa fa-sitemap fa-fw"></i> 活动管理
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/animal/admin/agree.jsp">
                                <i class="fa fa-sitemap fa-fw"></i> 同意领养列表
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/animal/admin/disAgree.jsp">
                                <i class="fa fa-sitemap fa-fw"></i> 不同意领养列表
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div><!-- 左侧显示列表部分 end-->

    </nav>
    <!-- pet信息查询部分  start-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">流浪猫狗信息管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="panel panel-default">
            <!-- 搜索部分 -->
            <div class="panel-body">
                <form class="form-inline" method="get" action="#">
                    <div class="form-group">
                        <label for="findByPetId">动物编号</label>
                        <input type="text" class="form-control" id="findByPetId" value="" name="animalId" style="width: 100px;margin-left: 27px;">
                    </div>
                    <button type="button" class="btn btn-primary" id="pet_findById_modal_btn">查询</button>
                </form>
                <form class="form-inline" method="get" action="#" style="margin-top: 20px;">
                    <div class="form-group">
                        <label for="animal_family">
                            动物类别
                        </label>
                        <div style="display: inline-block">
                            <select class="form-control" id="animal_family" name="animalFamily" style="margin-left: 27px; width: 100px;">
                                <option value="全部">全部</option>
                                <option value="猫">猫</option>
                                <option value="狗">狗</option>
                                <option value="其他">其他</option>
                            </select>
                        </div>
                    </div>
                    <button type="button" class="btn btn-primary" id="pet_findByFamily_modal_btn">查询</button>
                </form>
                <form class="form-inline" method="get" action="#" style="margin-top: 20px;">
                    <button type="button" class="btn btn-primary" id="all_animals">查询全部动物</button>
                </form>
            </div>
        </div>
        <button class="btn btn-primary" id="pet_add_modal_btn">新增</button>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">动物信息列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped" id="pet_table">
                        <thead>
                        <tr>
                            <th>动物编号</th>
                            <th>动物类别</th>
                            <th>动物品种</th>
                            <th>动物昵称</th>
                            <th>动物性别</th>
                            <th>领养状态</th>
                            <th>健康状态</th>
                            <th>动物图片</th>
                            <th>入库时间</th>
                            <th style="width: 191px;">动物概述</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                    <div class="col-md-12">
                    <div class="row">
                        <!--分页文字信息  -->
                        <div class="col-md-8" id="page_info_area" style="padding-left: 0;padding-top: 24px;"></div>
                        <!-- 分页条信息 -->
                        <div class="col-md-4" id="page_nav_area" style="margin-top: 40px;padding-left: 60px;margin-bottom: 150px;"></div>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
    <!-- 班级列表查询部分  end-->
</div>
<!-- 创建流浪猫狗模态框 -->
<div class="modal fade" id="newPet" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document" style="width: 100%;">
        <div class="modal-content" style="width: 700px;margin: 100px auto;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">新建流浪猫狗信息</h4>
            </div>
            <div class="modal-body" style="padding-right: 37px;">
                <form class="form-horizontal" id="new_pet_form" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="new_animalFamily" class="col-sm-2 control-label">
                            动物类别
                        </label>
                        <div class="col-sm-4">
                            <select class="form-control" id="new_animalFamily" name="animalFamily">
                                <option value="猫">猫</option>
                                <option value="狗">狗</option>
                                <option value="其他">其他</option>
                            </select>
                        </div>
                        <label for="new_animalBreed" class="col-sm-2 control-label">
                            动物种类
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="new_animalBreed" placeholder="动物种类"
                                   name="animalBreed">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_animalName" class="col-sm-2 control-label">
                            动物昵称
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="new_animalName" placeholder="动物昵称"
                                   name="animalName">
                        </div>
                        <label for="new_animalSex" class="col-sm-2 control-label">
                            性别
                        </label>
                        <div class="col-sm-4">
                            <select class="form-control" id="new_animalSex" name="animalSex">
                                <option value="公">公</option>
                                <option value="母">母</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_animalAgeYear" class="col-sm-2 control-label">
                            动物年龄
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="new_animalAgeYear" placeholder=""
                                   name="animalAgeYear" style="width: 50px;display: inline-block;margin-right: 10px;">年
                            <input type="text" class="form-control" id="new_animalAgeMonth" placeholder=""
                                   name="animalAgeMonth" style="width: 50px;display: inline-block;margin-right: 10px;">个月
                            <input type="hidden" class="form-control" id="new_animalAge" placeholder=""
                                   name="animalAge" style="width: 50px;display: inline-block;margin-right: 10px;">
                        </div>
                        <label for="new_adoptStatus" class="col-sm-2 control-label">
                            领养状态
                        </label>
                        <div class="col-sm-4">
                            <select class="form-control" id="new_adoptStatus" name="adoptStatus">
                                <option value="待领养">待领养</option>
                                <option value="待领养">已领养</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_healthStatus" class="col-sm-2 control-label">
                            健康状态
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="new_healthStatus" placeholder="健康状态"
                                   name="healthStatus">
                        </div>
                        <label for="new_animalPic" class="col-sm-2 control-label">
                            动物图片
                        </label>
                        <div class="col-sm-1">
                            <input type="file" value="上传照片" id="new_animalPic" name="pic">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_animalDetails" class="col-sm-2 control-label">
                            动物概述
                        </label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="new_animalDetails" placeholder="动物概述"
                                      name="animalDetails" style="width: 246px;height: 135px;"></textarea>
                        </div>
                    </div>
                    <input type="hidden" name="inputTime" id="new_inputTime">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="pet_saveDown_btn">关闭</button>
                <button type="button" class="btn btn-primary" id="pet_save_btn">提交信息</button>
            </div>
        </div>
    </div>
</div>
<!-- 修改流浪猫狗模态框 -->
<div class="modal fade" id="editPet" tabindex="-1" role="dialog" aria-labelledby="myModalLabe">
    <div class="modal-dialog" role="document" style="width: 100%;">
        <div class="modal-content" style="width: 700px;margin: 100px auto;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabe">修改流浪猫狗信息</h4>
            </div>
            <div class="modal-body" style="padding-right: 37px;">
                <form class="form-horizontal" id="edit_pet_form" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="animalId" id="edit_animalId">
                    <div class="form-group">
                        <label for="edit_animalFamily" class="col-sm-2 control-label">
                            动物类别
                        </label>
                        <div class="col-sm-4">
                            <select class="form-control" id="edit_animalFamily" name="animalFamily">
                                <option value="猫">猫</option>
                                <option value="狗">狗</option>
                                <option value="其他">其他</option>
                            </select>
                        </div>
                        <label for="edit_animalBreed" class="col-sm-2 control-label">
                            动物种类
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="edit_animalBreed" placeholder="动物种类"
                                   name="animalBreed">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_animalName" class="col-sm-2 control-label">
                            动物昵称
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="edit_animalName" placeholder="动物昵称"
                                   name="animalName">
                        </div>
                        <label for="edit_animalSex" class="col-sm-2 control-label">
                            性别
                        </label>
                        <div class="col-sm-4">
                            <select class="form-control" id="edit_animalSex" name="animalSex">
                                <option value="公">公</option>
                                <option value="母">母</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_animalAgeYear" class="col-sm-2 control-label">
                            动物年龄
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="edit_animalAgeYear" placeholder=""
                                   name="animalAgeYear" style="width: 50px;display: inline-block;margin-right: 10px;">年
                            <input type="text" class="form-control" id="edit_animalAgeMonth" placeholder=""
                                   name="animalAgeMonth" style="width: 50px;display: inline-block;margin-right: 10px;">个月
                            <input type="hidden" class="form-control" id="edit_animalAge" placeholder=""
                                   name="animalAge" style="width: 50px;display: inline-block;margin-right: 10px;">
                        </div>
                        <label for="edit_adoptStatus" class="col-sm-2 control-label">
                            领养状态
                        </label>
                        <div class="col-sm-4">
                            <select class="form-control" id="edit_adoptStatus" name="adoptStatus">
                                <option value="待领养">待领养</option>
                                <option value="已领养">已领养</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_healthStatus" class="col-sm-2 control-label">
                            健康状态
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="edit_healthStatus" placeholder="健康状态"
                                   name="healthStatus">
                        </div>
                        <label for="edit_animalPic" class="col-sm-2 control-label">
                            动物图片
                        </label>
                        <div class="col-sm-1">
                            <input type="file" value="上传照片" id="edit_animalPic" name="pic">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_animalDetails" class="col-sm-2 control-label">
                            动物概述
                        </label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="edit_animalDetails" placeholder="动物概述"
                                      name="animalDetails" style="width: 246px;height: 135px;"></textarea>
                        </div>
                    </div>
                    <input type="hidden" name="inputTime" id="edit_inputTime">
                    <input type="hidden" name="animalPic" id="edit_animalPic_2">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="pet_updateDown_btn">关闭</button>
                <button type="button" class="btn btn-primary" id="pet_update_btn">保存修改</button>
            </div>
        </div>
    </div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/JQuery/jquery-3.4.1.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="${pageContext.request.contextPath}/js/houtai/js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="${pageContext.request.contextPath}/js/houtai/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/js/houtai/js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="${pageContext.request.contextPath}/js/houtai/js/sb-admin-2.js"></script>
<script src="${pageContext.request.contextPath}/js/animal.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">


    //总的数据 当前的页面
    var totalRecord, currentPage, currentSize, currentPageSize, currentPages;

    $(function () {
        to_page(1);
    });

    function to_page(pn) {
        $.ajax({
            url: "${pageContext.request.contextPath}/animal/animalsTime.action",
            data: "pn=" + pn,
            type: "GET",
            success: function (result) {
                resolving(result);
            }
        });
    }

    function resolving(result) {
        //1、解析并显示员工数据
        build_pets_table(result);
        //2、解析并显示分页信息
        build_page_info(result);
        //3、解析显示分页条数据
        build_page_nav(result);
    }

    //解析并显示员工数据
    function build_pets_table(result) {
        //清空table表格
        $("#pet_table tbody").empty();
        //index：下标 user：单个对象
        var animals = result.extend.pageInfo.list;
        $.each(animals, function (index, animal) {
            console.log(animal)
            var animalIdTd = $("<td class='center'></td>").append(animal.animalId);
            var animalFamilyTd = $("<td class='center'></td>").append(animal.animalFamily);
            var animalBreedTd = $("<td class='center'></td>").append(animal.animalBreed);
            var animalNameTd = $("<td class='center'></td>").append(animal.animalName);
            var animalSexTd = $("<td class='center'></td>").append(animal.animalSex);
            var adoptStatusTd = $("<td class='center'></td>").append(animal.adoptStatus);
            var healthStatusTd = $("<td class='center'></td>").append(animal.healthStatus);
            var animalPicTd = $("<td class='center'></td>")
                .append($("<img/>").addClass("mySize").attr("src", "${pageContext.request.contextPath}" + animal.animalPic));
            var inputTimeTd = $("<td class='center'></td>").append(formatDate(animal.inputTime));
            var animalDetailsTd = $("<td class='details'></td>").append(animal.animalDetails);
            // var stateTd = null;
            // if (pet.state == 0) {
            //     stateTd = $("<td></td>").append("还未被申请领养");
            // } else if (pet.state == 1) {
            //     stateTd = $("<td></td>").append("正在被申请领养");
            // } else {
            //     stateTd = $("<td></td>").append("已经被领养");
            // }
            var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("修改");
            //为编辑按钮添加一个自定义的属性，来表示当前员工id
            editBtn.attr("edit-id", animal.animalId);
            var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            //为删除按钮添加一个自定义的属性来表示当前删除的员工id
            delBtn.attr("del-id", animal.animalId);
            var btnTd = $("<td class='center'></td>").append(editBtn).append("").append(delBtn);
            //var delBtn =
            //append方法执行完成以后还是返回原来的元素
            $("<tr></tr>").append(animalIdTd)
                .append(animalFamilyTd)
                .append(animalBreedTd)
                .append(animalNameTd)
                .append(animalSexTd)
                .append(adoptStatusTd)
                .append(healthStatusTd)
                .append(animalPicTd)
                .append(inputTimeTd)
                .append(animalDetailsTd)
                .append(btnTd)
                .appendTo("#pet_table tbody");
        });
    }

    //解析显示分页信息
    function build_page_info(result) {
        $("#page_info_area").empty();
        $("#page_info_area").append("当前" + result.extend.pageInfo.pageNum + "页,总" +
            result.extend.pageInfo.pages + "页,总" +
            result.extend.pageInfo.total + "条记录");
        totalRecord = result.extend.pageInfo.total;//最后的数据
        currentPage = result.extend.pageInfo.pageNum;//当前页
        var currentPages = result.extend.pageInfo.pages;//总的页数
        currentSize = result.extend.pageInfo.size;//当前页面的尺寸
        currentPageSize = result.extend.pageInfo.pageSize;//每页的尺寸
    }

    //解析显示分页条，点击分页要能去下一页....
    function build_page_nav(result) {
        //page_nav_area
        $("#page_nav_area").empty();
        var ul = $("<ul></ul>").addClass("pagination");

        //构建元素
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if (result.extend.pageInfo.hasPreviousPage == false) {
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        } else {
            //为元素添加点击翻页的事件
            firstPageLi.click(function () {
                to_page(1);
            });
            prePageLi.click(function () {
                to_page(result.extend.pageInfo.pageNum - 1);
            });
        }

        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href", "#"));
        if (result.extend.pageInfo.hasNextPage == false) {
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        } else {
            nextPageLi.click(function () {
                to_page(result.extend.pageInfo.pageNum + 1);
            });
            lastPageLi.click(function () {
                to_page(result.extend.pageInfo.pages);
            });
        }

        //添加首页和前一页 的提示
        ul.append(firstPageLi).append(prePageLi);
        //1,2，3遍历给ul中添加页码提示
        $.each(result.extend.pageInfo.navigatepageNums, function (index, item) {

            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if (result.extend.pageInfo.pageNum == item) {
                numLi.addClass("active");
            }
            numLi.click(function () {
                to_page(item);
            });
            ul.append(numLi);
        });
        //添加下一页和末页 的提示
        ul.append(nextPageLi).append(lastPageLi);

        //把ul加入到nav
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");
    }


    //清空表单样式及内容
    function reset_form(ele) {
        $(ele)[0].reset();
        //清空表单样式
        $(ele).find("*").removeClass("has-error has-success");
        $(ele).find(".help-block").text("");
    }

    //点击新增按钮弹出模态框。
    $("#pet_add_modal_btn").click(function () {
        //清除表单数据（表单完整重置（表单的数据，表单的样式））
        reset_form("#newPet form");
        //弹出模态框
        $("#newPet").modal({
            backdrop: "static"
        });
    });
    // 格式化时间
    function formatDate2() {
        const date = new Date()
        var y = date.getFullYear() // 年份
        var m = date.getMonth() + 1 // 月份，注意：js里的月要加1
        var d = date.getDate() // 日
        var h = date.getHours() // 小时
        var min = date.getMinutes() // 分钟
        var s = date.getSeconds() // 秒
        // 返回值，根据自己需求调整，现在已经拿到了年月日时分秒了
        return y + '-' + m + '-' + d + ' ' + h + ':' + min + ':' + s
    }
    //点击保存，保存流浪猫狗。
    $("#pet_save_btn").click(function () {
        var year = $("#new_animalAgeYear").val()
        var month = $("#new_animalAgeMonth").val()
        if (month.length < 2) {
            month = "0" + month
        }
        $('#new_animalAge').val(year + "." + month)
        $('#new_inputTime').val(formatDate2())
        var pet = document.getElementById("new_pet_form");
        var petTd = new FormData(pet);
        $.ajax({
            url: "${pageContext.request.contextPath}/animal/create.action",
            type: "POST",
            processData: false,  // 告诉jQuery不要去处理发送的数据
            contentType: false, // 告诉jQuery不要去设置Content-Type请求头
            data: petTd,
            success: function (result) {
                alert("流浪猫狗创建成功");
                $("#pet_saveDown_btn").click();

                if (currentSize = currentPageSize) {
                    to_page(currentPages + 1);
                } else {
                    to_page(currentPages)
                }
            },
            error: function (result) {
                $("#pet_saveDown_btn").click();
                alert("流浪猫狗创建失败");
            }
        });
    });


    //点击编辑按钮弹出模态框。
    $(document).on("click", ".edit_btn", function () {
        //1、发送ajax,根据id获取用户信息
        //清除表单数据（表单完整重置（表单的数据，表单的样式））
        reset_form("#editPet form");
        var id = $(this).attr("edit-id");
        $.ajax({
            url: "${pageContext.request.contextPath}/animal/getById.action?animalId=" + id,
            type: "GET",
            success: function (result) {
                //填充用户信息
                var animal = result.extend.animal
                var age = formatAge(animal.animalAge)
                $("#edit_animalId").val(animal.animalId)
                $("#edit_animalFamily").val(animal.animalFamily);
                $("#edit_animalBreed").val(animal.animalBreed);
                $("#edit_animalName").val(animal.animalName);
                $("#edit_animalSex").val(animal.animalSex);
                $("#edit_animalAgeYear").val(age[0]);
                $("#edit_animalAgeMonth").val(age[1]);
                $("#edit_healthStatus").val(animal.healthStatus);
                $("#edit_adoptStatus").val(animal.adoptStatus);
                $("#edit_animalDetails").val(animal.animalDetails);
                $("#edit_animalPic_2").val(animal.animalPic)
            },
            error: function (result) {
                alert("通过id查询用户失败")
            }
        });
        //2、弹出模态框
        $("#editPet").modal({
            backdrop: "static"
        });

    });

    //格式化容器
    function formatAge(age) {
        var year = Math.floor(age)
        var month = Math.floor((age - year)*100)

        return [year, month]
    }

    $("#all_animals").click(function (){
        to_page(1)
    })

    //点击更新按钮弹出模态框。
    $("#pet_update_btn").click(function () {
        var year = $("#edit_animalAgeYear").val()
        var month = $("#edit_animalAgeMonth").val()
        if (month.length < 2) {
            month = "0" + month
        }
        $('#edit_animalAge').val(year + "." + month)
        var pet = document.getElementById("edit_pet_form");
        var petTd = new FormData(pet);
        $.ajax({
            url: "${pageContext.request.contextPath}/animal/update.action",
            type: "POST",
            processData: false,  // 告诉jQuery不要去处理发送的数据
            contentType: false, // 告诉jQuery不要去设置Content-Type请求头
            data: petTd,
            success: function (result) {
                to_page(currentPage);
                $("#pet_updateDown_btn").click();
                alert("流浪猫狗信息更新成功！");
            },
            error: function (result) {
                alert("流浪猫狗信息更新失败！");
                $("#pet_saveDown_btn").click();
                to_page(currentPage);
            }
        });

    });

    //单个删除
    $(document).on("click", ".delete_btn", function () {
        //1、弹出是否确认删除对话框
        var petName = $(this).parents("tr").find("td:eq(3)").text();
        var petId = $(this).attr("del-id");
        if (confirm("确认删除动物编号【"+ petId +"】，动物昵称【" + petName + "】吗？")) {
            //确认，发送ajax请求删除即可
            $.ajax({
                url: "${pageContext.request.contextPath}/animal/deleteById.action?id=" + petId,
                type: "GET",
                success: function (result) {
                    if (result.code == 100) {
                        alert("流浪猫狗删除成功！");
                        if (currentSize == 1) {
                            to_page(currentPage - 1);
                        } else {
                            to_page(currentPage);
                        }
                    } else {
                        alert("流浪猫狗删除失败！");
                        to_page(currentPage);
                    }
                }
            });
        }
    });

    function spilt(pics) {
        var pis = pics;
        var pt = pis.toString().split(",");
        return pt[0];
    }

    // 查找指定编号的动物
    $("#pet_findById_modal_btn").click(function () {
        $("#pet_table tbody").empty();
        var petId = $("#findByPetId").val();
        console.log(petId)
        to_findByPetId(petId);
    });

    // 查找指定类别的动物
    $("#pet_findByFamily_modal_btn").click(function () {
        $("#pet_table tbody").empty();
        var petType = $("#animal_family").val();
        to_findByPetType(1, petType);
    });

    function to_findByPetId(petId) {
        if (petId != null && petId !== "") {
            $.ajax({
                url: "${pageContext.request.contextPath}/animal/getByIdList.action",
                type: "GET",
                dataType: "json",
                data: {"animalId": petId},
                async: "true",
                success: function (result) {
                    if (result.code === 100) {
                        build_pets_table(result);
                    }
                    $("#page_info_area").empty();
                    $("#page_nav_area").empty();
                    // build_page_info(result);
                    // build_page_findByPetType(result, petId);
                },
                error: function (result) {
                    alert("查询错误")
                }
            });
        } else {
            to_page(1)
        }
    }

    function to_findByPetType(pn, petType) {
        $.ajax({
            url: "${pageContext.request.contextPath}/animal/findByFamily.action",
            type: "POST",
            dataType: "json",
            data: {"pn": pn, "animalFamily": petType},
            async: "true",
            success: function (result) {
                build_pets_table(result);
                build_page_info(result);
                build_page_findByPetType(result, petType);
            },
            error: function (result) {
                alert("查询错误")
            }
        });
    }


    //解析显示分页条，点击分页要能去下一页....
    function build_page_findByPetType(result, petType) {
        //page_nav_area
        $("#page_nav_area").empty();
        var ul = $("<ul></ul>").addClass("pagination");

        //构建元素
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if (result.extend.pageInfo.hasPreviousPage == false) {
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        } else {
            //为元素添加点击翻页的事件
            firstPageLi.click(function () {
                to_findByPetType(1, petType);
            });
            prePageLi.click(function () {
                to_findByPetType(result.extend.pageInfo.pageNum - 1, petType);
            });
        }

        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href", "#"));
        if (result.extend.pageInfo.hasNextPage == false) {
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        } else {
            nextPageLi.click(function () {
                to_findByPetType(result.extend.pageInfo.pageNum + 1, petType);
            });
            lastPageLi.click(function () {
                to_findByPetType(result.extend.pageInfo.pages, petType);
            });
        }

        //添加首页和前一页 的提示
        ul.append(firstPageLi).append(prePageLi);
        //1,2，3遍历给ul中添加页码提示
        $.each(result.extend.pageInfo.navigatepageNums, function (index, item) {

            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if (result.extend.pageInfo.pageNum == item) {
                numLi.addClass("active");
            }
            numLi.click(function () {
                to_findByPetType(item, petType);
            });
            ul.append(numLi);
        });
        //添加下一页和末页 的提示
        ul.append(nextPageLi).append(lastPageLi);

        //把ul加入到nav
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");
    }
</script>
</div>
</body>


</html>
