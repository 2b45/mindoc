<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>用户中心 - Powered by MinDoc</title>

    <!-- Bootstrap -->
    <link href="{{cdncss "/static/bootstrap/css/bootstrap.min.css"}}" rel="stylesheet">
    <link href="{{cdncss "/static/font-awesome/css/font-awesome.min.css"}}" rel="stylesheet">

    <link href="{{cdncss "/static/css/main.css"}}" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="/static/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="/static/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="manual-reader">
    {{template "widgets/header.tpl" .}}
    <div class="container manual-body">
        <div class="row">
            <div class="page-left">
                <ul class="menu">
                {{template "manager/manager_widgets.tpl.tpl" .}}
                </ul>
            </div>
            <div class="page-right">
                <div class="m-box">
                    <div class="box-head">
                        <strong class="box-title">仪表盘</strong>
                    </div>
                </div>
                <div class="box-body manager">
                    <a href="{{urlfor "ManagerController.Books"}}" class="dashboard-item">
                        <span class="fa fa-book" aria-hidden="true"></span>
                        <span class="fa-class">项目数量</span>
                        <span class="fa-class">{{.Model.BookNumber}}</span>
                    </a>
                    <div class="dashboard-item">
                        <span class="fa fa-file-text-o" aria-hidden="true"></span>
                        <span class="fa-class">文章数量</span>
                        <span class="fa-class">{{.Model.DocumentNumber}}</span>
                    </div>
                    <a href="{{urlfor "ManagerController.Users"}}" class="dashboard-item">
                            <span class="fa fa-user" aria-hidden="true"></span>
                            <span class="fa-class">会员数量</span>
                            <span class="fa-class">{{.Model.MemberNumber}}</span>
                    </a>
                    <a href="{{urlfor "ManagerController.MemberGroupList"}}" class="dashboard-item">
                        <span class="fa fa-users" aria-hidden="true"></span>
                        <span class="fa-class">用户组数量</span>
                        <span class="fa-class">{{.Model.MemberGroupNumber}}</span>
                    </a>
                    <!--
                    {{/*
                    <div class="dashboard-item">
                        <span class="fa fa-comments-o" aria-hidden="true"></span>
                        <span class="fa-class">评论数量</span>
                        <span class="fa-class">{{.Model.CommentNumber}}</span>
                    </div>
                */}}-->
                    <a href="{{urlfor "ManagerController.AttachList" }}" class="dashboard-item">
                        <span class="fa fa-cloud-download" aria-hidden="true"></span>
                        <span class="fa-class">附件数量</span>
                        <span class="fa-class">{{.Model.AttachmentNumber}}</span>
                    </a>

                </div>
            </div>
        </div>
    </div>
</div>
<script src="{{cdnjs "/static/jquery/1.12.4/jquery.min.js"}}"></script>
<script src="{{cdnjs "/static/bootstrap/js/bootstrap.min.js"}}"></script>
</body>
</html>