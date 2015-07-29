'use strict';

/* App Module */

var phonecatApp = angular.module('phonecatApp', [
  'ngRoute',
  'ngResource',
  // Our app/modules our app/modules
  'home',
  'admin',
  'goods'

]);

phonecatApp.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
    // admin code
    when('/admin/users',{
          templateUrl: 'app/modules/admin/views/zarin-adm-user-page.html'
        }).
        when('/admin/shops',{
          templateUrl: 'app/modules/admin/views/zarin-adm-shops-page.html'
        }).
        when('/admin/statistics',{
          templateUrl: 'app/modules/admin/views/zarin-adm-stat-page.html'
        }).
        when('/user/backet',{
          templateUrl: 'app/modules/admin/views/zarin-user-backet-page.html'
        }).
        when('/user/purchases',{
          templateUrl: 'app/modules/admin/views/zarin-user-all-purchases-page.html'
        }).
        when('/user/profile/edit',{
          templateUrl: 'app/modules/admin/views/zarin-edit-user-page.html'
        }).
        when('/shop/orders',{
          templateUrl: 'app/modules/admin/views/zarin-shop-orders-page.html'
        }).
        when('/shop/products',{
          templateUrl: 'app/modules/admin/views/zarin-shop-products-page.html'
        }).
         when('/shop/profile/edit',{
          templateUrl: 'app/modules/admin/views/zarin-shop-admin-edit-profile.html'
        }).
        when('/home/service',{
            templateUrl: 'app/modules/admin/views/zarin-services-page.html'
        }).

      // Our roots
      when('/home', {
        templateUrl: 'app/modules/home/views/main.html'
      }).
      when('/home/:categoryId', {
        templateUrl: 'app/modules/home/views/chosen.html'
      }).
      when('/home/chosen',{
       templateUrl: 'app/modules/home/views/chshop.html'
      }).
      when('/stuff', {
        templateUrl: 'app/modules/home/views/stuff.html'
      }).
      when('/admin', {
        templateUrl: 'app/modules/admin/views/main.html'
      }).
      when('/character', {
        templateUrl: 'app/modules/goods/views/nazar-characteristic-of-product.html'
      }).
      when('/logIn', {
        templateUrl: 'app/modules/goods/views/nazar-login-and-registration-page.html'
      }).
      otherwise({
        redirectTo: '/home'
      });
  }]);
