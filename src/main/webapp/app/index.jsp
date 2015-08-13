<!doctype html>
<html lang="en" ng-app="phonecatApp">
<head>
    <meta charset="utf-8">
    <title>Sales IF</title>
    <!-- Bower components-->
    <link rel="shortcut icon" href="app/modules/admin/img/2.jpg">
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
    <link rel="stylesheet" type="text/css" href="app/modules/home/css/main-page-styles.css">
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
    <script type="text/javascript" src="app/modules/goods/controllers/orderCtrl.js"></script>
    <script type="text/javascript" src="app/modules/goods/controllers/OverviewCtrl.js"></script>
    <script type="text/javascript" src="app/modules/goods/controllers/ProductCtrl.js"></script>


    <!-- Home module -->
    <script type="text/javascript" src="app/modules/home/index.js"></script>
    <script type="text/javascript" src="app/modules/home/controllers/main.js"></script>
    <script type="text/javascript" src="app/modules/home/controllers/test.js"></script>
    <script type="text/javascript" src="app/modules/home/controllers/categoriesService.js"></script>
    <script type="text/javascript" src="app/modules/home/controllers/ProductsCtrl.js"></script>
    <script type="text/javascript" src="app/modules/home/controllers/SearchCtrl.js"></script>
    <script type="text/javascript" src="app/modules/home/controllers/CategoryService.js"></script>
    <script type="text/javascript" src="app/modules/home/controllers/LoginService.js"></script>

</head>
<body class="backgroundIMG">

<!-- Modals -->
<!-- Sign in modal -->
<div class="modal fade login_form" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     style="background-color: rgba(0, 0, 0, 0.78)">
    <div class="modal-dialog modal-sm">
        <div class="modal-content ButtonColor BtnTextColor textColor">
            <div class="modal-body" align="center" >
                <%--Creating JSON--%>
                <form class="login-form" action="j_spring_security_check" method="post">

                        <p class="textColor">
                            <label for="j_username">Username</label>
                            <input
                                    class="form-control ButtonColor BtnTextColor textColor"
                                    id="j_username"
                                    name="j_username"
                                    size="20"
                                    maxlength="50"
                                    type="text"
                                    />
                        </p>

                        <p class="textColor">
                            <label for="j_password">Password</label>
                            <input
                                    class="form-control ButtonColor BtnTextColor textColor"
                                    id="j_password"
                                    name="j_password"
                                    size="20" maxlength="50"
                                    type="password"/>
                        </p>

                        <p>
                            <button type="button" class="btn ButtonColor BtnTextColor textColor" data-dismiss="modal">
                                Close
                            </button>
                            <input class="btn ButtonColor BtnTextColor textColor" type="submit" value="Login"/>
                        </p>
                </form>
                <p align="center">If you haven't account, you can
                    <a data-toggle="modal" data-target="#sign-up-modal" data-dismiss="modal"> register </a> now.
                   </p>
            </div>
        </div>
    </div>
</div>
<!-- Sign up modal -->
<div class="modal fade" id="sign-up-modal" style="background-color: rgba(0, 0, 0, 0.78)	">
    <div class="modal-dialog">
        <div class="modal-content ButtonColor BtnTextColor textColor"  ng-controller="RegistrateCtrl">
            <div class="modal-header">
                <!-- Nav Pills -->
                <ul class="nav nav-pills">
                    <li class="active"><a ng-click="func('user')" class="textColor" href=".user" data-toggle="tab">User</a></li>
                    <li><a ng-click="func('shop')" href=".user" data-toggle="tab">Shop</a></li>
                </ul>
            </div>
            <div class="modal-body textColor">
                <!-- Tab Panes -->
                <div class="tab-content">
                    <!-- User Pane -->
                    <div
                            class="tab-pane active user"
                            id="user">
                        <form
                                <%--ng-submit="regUser()"--%>
                                class="form-horizontal"
                                name="UserReg">
                            <div class="form-group">
                                <label ng-show="session==true" class="col-md-2 control-label">Name</label>
                                <label ng-show="session==false" class="col-md-2 control-label">Shop name</label>
                                <div class="col-md-8">
                                    <input
                                            type="text"
                                            class="form-control ButtonColor BtnTextColor textColor"
                                            ng-model="first_name"
                                            name="first_name">
                                </div>
                            </div>
                            <div ng-show="session==true" class="form-group">
                                <label class="col-md-2 control-label">Surname</label>

                                <div class="col-md-8">
                                    <input
                                            type="text"
                                            class="form-control ButtonColor BtnTextColor textColor"
                                            ng-model="last_name"
                                            name="last_name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Email</label>

                                <div class="col-md-8">
                                    <input
                                            type="email"
                                            class="form-control ButtonColor BtnTextColor textColor"
                                            ng-model="email"
                                            name="email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Phone n.</label>

                                <div class="col-md-8">
                                    <input
                                            type="text"
                                            class="form-control ButtonColor BtnTextColor textColor"
                                            ng-model="phoneNumber"
                                            name="phoneNumber">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Country</label>

                                <div ng-init="getCountry()" class="col-md-8">
                                    <select
                                            class="form-control ButtonColor BtnTextColor textColor"
                                            name="country"
                                            ng-model="selectedCountryID"
                                            ng-change="getRegion()"
                                            ng-options="country.id as country.name for country in countries"
                                            style="color: #080808"
                                            >
                                    </select >
                                   </div>
                            </div>
                            <div ng-show="selectedCountryID" class="form-group">
                                <label class="col-md-2 control-label">Region</label>

                                <div class="col-md-8">
                                    <select
                                            class="form-control ButtonColor BtnTextColor textColor"
                                            ng-model="selectedRegionID"
                                            name="region"
                                            ng-change="getCity()"
                                            ng-options="region.id as region.name for region in regions"
                                            style="color: #080808"
                                            >
                                         </select>
                                    </div>
                            </div>
                            <div ng-show="selectedRegionID" class="form-group">
                                <label class="col-md-2 control-label">City</label>

                                <div class="col-md-8">
                                    <select
                                            class="form-control ButtonColor BtnTextColor textColor"
                                            ng-model="selectedCityID"
                                            ng-options="city.id as city.name for city in cities"
                                            name="city"
                                            style="color: #080808">
                                        </select>
                                </div>
                            </div>
                            <div class="text-center" ng-show="session==false">Pay pal</div>
                            <div ng-show="session==false" class="form-group">
                                <label class="col-md-2 control-label">Client Id</label>

                                <div class="col-md-8">
                                    <input
                                            type="text"
                                            class="form-control ButtonColor BtnTextColor textColor"
                                            ng-model="clientID"
                                            name="clientID">
                                </div>
                            </div>
                            <div ng-show="session==false" class="form-group">
                            <label class="col-md-2 control-label">Secret key</label>

                            <div class="col-md-8">
                                <input
                                        type="text"
                                        class="form-control ButtonColor BtnTextColor textColor"
                                        ng-model="secretKey"
                                        name="secretKey">
                            </div>
                        </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Password</label>

                                <div class="col-md-8">
                                    <input
                                            type="password"
                                            class="form-control ButtonColor BtnTextColor textColor"
                                            ng-model="password1"
                                            name="pass1">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">Repeat Pas.</label>

                                <div class="col-md-8">
                                    <input
                                            type="password"
                                            class="form-control ButtonColor BtnTextColor textColor"
                                            ng-model="password"
                                            name="pass2">
                                    <span ng-show="password1 != password && UserReg.pass2.$dirty">Bad password</span>
                                </div>
                            </div>
                            <button
                                    type="button"
                                    ng-click="regUser()"
                                    class="btn center-block ButtonColor BtnTextColor textColor"
                                    data-dismiss="modal">
                                Register
                            </button>
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
    <div class="container" ng-controller="RegistrateCtrl">
        <!-- .navbar-header -->
        <div class="navbar-header ">
            <button
                    type="button"
                    class="navbar-toggle"
                    data-toggle="collapse"
                    data-target="#collapsed-group">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a href="#/home" class="navbar-brand">Home</a>
        </div>
        <!-- /.navbar-header -->
        <!-- #collapsed-group -->
        <div class="collapse navbar-collapse" id="collapsed-group">
            <ul class="nav navbar-nav adm-navStyle">
            </ul>

            <!-- User's profile button -->
            <ul class="nav navbar-nav navbar-right">
                <li class="">
                    <!-- Form with search -->
                    <form class="navbar-form" ng-controller="SearchCtrl">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search product" ng-model="searchData">

                            <div class="input-group-btn">   
                                <button type="button" class="btn btn-default" ng-click="searchProduct()">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </li>
                <li>
                    <a ng-show="sessionRole == 'anonym'"
                            data-toggle="modal"
                            data-target=".login_form">
                        Log In
                    </a>
                </li>
                <li class="dropdown" ng-show="sessionRole != 'anonym'">
                    <a
                            class="dropdown-toggle"
                            data-toggle="dropdown"
                            role="button"
                            aria-expanded="false">
                            <!--NOTICE IMPORTANT THING ABOUT PASSING JSP VARIABLE TO JAVASCRIPT -->

                        <i class="fa fa-cog" ng-init="grabSessionValue('${sessionScope.userEmail}')"> {{sessionValue}} </i>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li ng-show="sessionRole=='client'"><a href="#/user/profile/edit/{{user.id}}/{{sessionRole}}"><i class="fa fa-user"></i> Profile</a></li>
                        <li ng-show="sessionRole=='shop'"><a href="#/shop/profile/edit/{{user.id}}/{{sessionRole}}"><i class="fa fa-user"></i> Profile</a></li>
                        <li ng-show="sessionRole=='client'"><a href="#/user/bucket/{{user.id}}/{{sessionRole}}"><i class="fa fa-shopping-cart"></i> Bucket</a></li>
                        <li ng-show="sessionRole=='admin'"><a href="#/admin/users/{{user.id}}/{{sessionRole}}"><i class="fa fa-shopping-cart"></i> Admin</a></li>
                        <li><a ng-click="logOut()"><i class="fa fa-user-times"></i> Log Out</a></li>
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
