<!doctype html>
<html lang="en" ng-app="phonecatApp">
<head>
    <meta charset="utf-8">
    <title>Sales IF</title>
    <!-- Bower components-->
    <link rel="stylesheet" href="app/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="app/bower_components/bootstrap/dist/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="app/bower_components/font-awesome/css/font-awesome.min.css">

    <!--End of block-->
    <script src="app/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="http://code.highcharts.com/highcharts.js"></script>
    <script src="http://code.highcharts.com/modules/exporting.js"></script>

    <script src="app/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="app/bower_components/angular/angular.min.js"></script>

    <!--<script src="app/bower_components/angular-resource/angular-resource.min.js"></script>-->
    <script src="app/bower_components/angular-route/angular-route.min.js"></script>

    <!-- Main app.js-->
    <script src="app/app.js"></script>


    <!-- Our Styles -->
    <link rel="stylesheet" type="text/css" href="app/modules/admin/css/adm-page-style.css">
    <link rel="stylesheet" type="text/css" href="app/modules/admin/css/shop-admin-page-style.css">
    <link rel="stylesheet" type="text/css" href="app/modules/admin/css/user-profile-style.css">
    <link rel="stylesheet" type="text/css" href="app/modules/home/css/anton-main-page-styles.css">
    <link rel="stylesheet" type="text/css" href="app/modules/goods/css/ordering-page-style.css">


    <!--   <link rel="stylesheet" type="text/css" href="app/modules/home/css/anton-main-page-styles.css"> -->
    <link href="app/modules/goods/css/nazar-style-for_characteristic-of-product.css" rel="stylesheet" type="text/css"
          media="screen"/>
    <link href="app/modules/goods/css/nazar-style-for-login-page.css" rel="stylesheet" type="text/css" media="screen"/>


    <!-- app/Modules and controllers -->
    <!-- Admin module -->
    <script type="text/javascript" src="app/modules/admin/index.js"></script>
    <!-- Controllers -->
    <script type="text/javascript" src="app/modules/admin/controllers/BucketCtrl.js"></script>
    <script type="text/javascript" src="app/modules/admin/controllers/PurchasesCtrl.js"></script>
    <script type="text/javascript" src="app/modules/admin/controllers/ShopsCtrl.js"></script>
    <script type="text/javascript" src="app/modules/admin/controllers/ShopAdmCtrl.js"></script>
    <script type="text/javascript" src="app/modules/admin/controllers/UsersCtrl.js"></script>
    <script type="text/javascript" src="app/modules/admin/controllers/UserEditCtrl.js"></script>
    <script type="text/javascript" src="app/modules/admin/controllers/OrdersCtrl.js"></script>
    <script type="text/javascript" src="app/modules/admin/controllers/HighchartsCtrl.js"></script>
    <script type="text/javascript" src="app/modules/admin/controllers/RegistrateCtrl.js"></script>

    <!-- Including libs for templates -->
    <!-- Phonecat Apps's libraries (DO NOT COMMENT) -->
    <!--<script src="app/bower_components/jquery/jquery.js"></script>-->
    <script src="app/bower_components/angular/angular.js"></script>
    <script src="app/bower_components/angular-animate/angular-animate.js"></script>
    <script src="app/bower_components/angular-route/angular-route.js"></script>
    <script src="app/bower_components/angular-resource/angular-resource.js"></script>
    <script src="app/app.js"></script>
    <script src="app/js/animations.js"></script>
    <script src="app/js/controllers.js"></script>
    <script src="app/js/filters.js"></script>
    <script src="app/js/services.js"></script>

    <!-- app/Modules and controllers -->
    <!-- Admin module -->


    <!-- Goods module -->
    <script type="text/javascript" src="app/modules/goods/index.js"></script>
    <script type="text/javascript" src="app/modules/goods/controllers/LoginController.js"></script>
    <script type="text/javascript" src="app/modules/goods/controllers/registrationCtrlCustomer.js"></script>
    <script type="text/javascript" src="app/modules/goods/controllers/registrationCtrlShop.js"></script>
    <script type="text/javascript" src="app/modules/goods/controllers/imagesCtrl.js"></script>
    <script type="text/javascript" src="app/modules/goods/controllers/YouTubeCtrl.js"></script>
    <script type="text/javascript" src="app/modules/goods/controllers/tablesCtrl.js"></script>
    <script type="text/javascript" src="app/modules/goods/controllers/orderCtrl.js"></script>


    <!-- Home module -->
    <script type="text/javascript" src="app/modules/home/index.js"></script>
    <script type="text/javascript" src="app/modules/home/controllers/main.js"></script>
    <script type="text/javascript" src="app/modules/home/controllers/test.js"></script>
    <script type="text/javascript" src="app/modules/home/controllers/categoriesService.js"></script>

</head>
<body class="backgroundIMG">

<!-- Modals -->
<!-- Sign in modal -->
<div class="modal fade login_form" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     style="background-color: rgba(0, 0, 0, 0.78)">
    <div class="modal-dialog modal-sm">
        <div class="modal-content ButtonColor BtnTextColor textColor">
            <div class="modal-body" align="center" ng-controller="LoginController">
                <%--Creating JSON--%>
                <form class="login-form" action="j_spring_security_check" method="post">
                    <fieldset>
                        <!--<legend class="textColor">Login Here</legend>-->

                        <p class="textColor">
                            <label>Username</label>:
                            <input class="form-control ButtonColor BtnTextColor textColor" id="j_username"
                                   name="j_username" size="20" maxlength="50" type="text"/>
                        </p>

                        <p class="textColor">
                            <label>Password</label>:
                            <input class="form-control ButtonColor BtnTextColor textColor" id="j_password"
                                   name="j_password" size="20" maxlength="50" type="password"/>
                        </p>

                        <!--<p><input type="submit" value="Login"/></p>-->
                        <p>
                            <button type="button" class="btn ButtonColor BtnTextColor textColor" data-dismiss="modal">
                                Close
                            </button>
                            <button type="submit" class="btn ButtonColor BtnTextColor textColor" data-dismiss="modal">
                                Login
                            </button>
                        </p>
                    </fieldset>
                </form>
                <p align="center">If you haven't account, you can register now as
                    <a data-toggle="modal" data-target=".registration_form_customer" data-dismiss="modal"> customer </a>
                    or <a data-toggle="modal" data-target=".registration_form_shop" data-dismiss="modal"> shop </a></p>
            </div>
        </div>
    </div>
</div>
<!-- Sign up modal -->
<div class="modal fade" id="sign-up-modal" style="background-color: rgba(0, 0, 0, 0.78)	">
    <div class="modal-dialog">
        <div class="modal-content ButtonColor BtnTextColor textColor">
            <div class="modal-header">
                <!-- Nav Pills -->
                <ul class="nav nav-pills">
                    <li class="active"><a class="textColor" href=".user" data-toggle="tab">User</a></li>
                    <li><a href=".shop" data-toggle="tab">Shop</a></li>
                </ul>
            </div>
            <div class="modal-body textColor">
                <!-- Tab Panes -->
                <div class="tab-content">
                    <!-- User Pane -->
                    <div class="tab-pane active user" id="user">
                        <form ng-submit="regUser()" class="form-horizontal" ng-controller="RegistrateCtrl" name="UserReg">
                            <div class="form-group">
                                <label class="col-md-2 control-label">Name</label>

                                <div class="col-md-8">
                                    <input type="text" class="form-control ButtonColor BtnTextColor textColor" ng-model="first_name" name="first_name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Surname</label>

                                <div class="col-md-8">
                                    <input type="text" class="form-control ButtonColor BtnTextColor textColor" ng-model="last_name" name="last_name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Email</label>

                                <div class="col-md-8">
                                    <input type="email" class="form-control ButtonColor BtnTextColor textColor" ng-model="email" name="email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Phone n.</label>

                                <div class="col-md-8">
                                    <input type="text" class="form-control ButtonColor BtnTextColor textColor" ng-model="phoneNumber" name="phoneNumber">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Address</label>

                                <div class="col-md-8">
                                    <input type="text" class="form-control ButtonColor BtnTextColor textColor" ng-model="address" name="address">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Password</label>

                                <div class="col-md-8">
                                    <input type="text" class="form-control ButtonColor BtnTextColor textColor" ng-model="password1" name="pass1">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Repeat Pas.</label>

                                <div class="col-md-8">
                                    <input type="text" class="form-control ButtonColor BtnTextColor textColor" ng-model="password" name="pass2">
                                    <span ng-show="password1 != password && UserReg.pass2.$dirty">Bad password</span>
                                </div>
                            </div>
                            <button type="submit" class="btn center-block ButtonColor BtnTextColor textColor">Register</button>
                        </form>
                    </div>
                    <!-- Shop Pane -->
                    <div class="tab-pane shop" id="shop">
                        <form ng-submit="regShop()" class="form-horizontal" ng-controller="RegistrateCtrl" name="ShopReg">
                            <div class="form-group">
                                <label class="col-md-2 control-label">Shop Name</label>

                                <div class="col-md-8">
                                    <input type="text" class="form-control ButtonColor BtnTextColor textColor" ng-model="first_name" name="first_name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Email</label>

                                <div class="col-md-8">
                                    <input type="email" class="form-control ButtonColor BtnTextColor textColor" ng-model="email" name="email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Phone n.</label>

                                <div class="col-md-8">
                                    <input type="text" class="form-control ButtonColor BtnTextColor textColor" ng-model="phoneNumber" name="phoneNumber">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Address</label>

                                <div class="col-md-8">
                                    <input type="text" class="form-control ButtonColor BtnTextColor textColor" ng-model="address" name="address">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Password</label>

                                <div class="col-md-8">
                                    <input type="text" class="form-control ButtonColor BtnTextColor textColor" ng-model="password1" name="pass1">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Repeat Pas.</label>

                                <div class="col-md-8">
                                    <input type="text" class="form-control ButtonColor BtnTextColor textColor" ng-model="password" name="pass2">
                                    <span ng-show="password1 != password && ShopReg.pass2.$dirty">Bad password</span>
                                </div>
                            </div>
                            <button type="submit" class="btn center-block ButtonColor BtnTextColor textColor">Register</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Navigation -->
<!-- .navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top nav-back-img">
    <!-- .container -->
    <div class="container">
        <!-- .navbar-header -->
        <div class="navbar-header ">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#collapsed-group">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="#/home" class="navbar-brand">Sales-IF</a>
        </div>
        <!-- /.navbar-header -->
        <!-- #collapsed-group -->
        <div class="collapse navbar-collapse" id="collapsed-group">
            <ul class="nav navbar-nav adm-navStyle">
                <li><a href="#/home/service">Services</a></li>
                <li><a href="#/stuff">Products</a></li>
                <li><a href="#/character">One Product</a></li>
                <li><a href="#/admin/users">Admin</a></li>
            </ul>

            <!-- User's profile button -->
            <ul class="nav navbar-nav navbar-right">
                <li class="">
                    <!-- Form with search -->
                    <form class="navbar-form">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search product">

                            <div class="input-group-btn">
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a href="#">through Shop</a></li>
                                    <li><a href="#">through Site</a></li>
                                </ul>
                                <button type="button" class="btn btn-default" data-toggle="dropdown">
                                    search
                                    <span class="caret"></span>
                                </button>
                                <button type="button" class="btn btn-default">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        Join in
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a data-toggle="modal" data-target=".login_form">Sign in</a></li>
                        <li><a data-toggle="modal" data-target="#sign-up-modal">Sign up</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-expanded="false">
                        <i class="fa fa-cog"></i>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#/user/backet"><i class="fa fa-user"></i> Profile</a></li>
                        <li><a href="#"><i class="fa fa-shopping-cart"></i> Cart</a></li>
                        <li><a href="#"><i class="fa fa-heart"></i> Whishlist</a></li>
                        <li class="divider"></li>
                        <li><a href=""><i class="fa fa-user-times"></i> Log Out</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /#collapsed-group -->
    </div>
    <!-- /.container -->
</nav>
<!-- .nav -->
<!-- Page Content -->
<div class="view-container">
    <div ng-view class="view-frame"></div>
</div>

</body>
</html>
