/**
 * Created by andrii on 11.08.2015.
 */
goods.controller('ProductCtrl', ['$scope', '$http','$routeParams','LoginService', function ($scope, $http, $routeParams, LoginService) {
    $scope.products = '';
    $scope.descriptions = '';
    $scope.user = '';
    $scope.shops = '';
    $scope.comments = '';
    $scope.text = '';
    $scope.role = '';
    $scope.userID = LoginService.loggedUser.id;
    $scope.data =[];
    $scope.date = [];
        $http.get('/Practice/goods?id='+$routeParams.goodId).then(function (response) {
            $scope.product = response.data;
            $scope.descriptions = response.data.description;
            //for(var i=0;i<$scope.products.length;i++){
            //    $scope.description[i]=$scope.products.description[i];
            //}
        });
    $scope.role = LoginService.loggedUser.role ;
    console.log(LoginService.loggedUser.role);
    $http.get('/Practice/storage/good?id='+$routeParams.goodId).then(function (response) {
        $scope.shops = response.data;
    });
    $http.get('/Practice/comment/'+$routeParams.goodId).then(function (response) {
       $scope.comments = response.data ;
        console.log($scope.comments);
    });
    $http.get('/Practice/user/client').then(function (response){
        $scope.user = response.data;
    });
    $scope.getDate = function(date){
        return new Date(date);
    };
    $scope.getUser = function(id){
        //$scope.userCom = '';
        //$http.get('/Practice/user/'+1).then(function (response){
        //    $scope.userCom = response.data;
        //});
        //$scope.userID = 2;
        for(var i=0;i<$scope.user.length;i++){
            if($scope.user[i].id == id){
                return $scope.user[i].firstName +' '+  $scope.user[i].lastName;
            } else {return 'bla bal';}
        }
        //return $scope.userCom.firstName +' '+  $scope.userCom.lastName;
        //
        //return id;
    };
    $scope.productAvailability = function(index){
        if($scope.shops[index].quantity != 0){
            return '+';
        } else {
            return '-';
        }
    };
    $scope.postComment = function(){
      var comment = {
            userId: LoginService.loggedUser.id,
            goodId: $routeParams.goodId,
            rating: 5,
            commentText: $scope.text
      };
        $scope.text = '';
        $http.post('/Practice/comment/', comment).then(function (response){
            $http.get('/Practice/comment/'+$routeParams.goodId).then(function (response) {
                $scope.comments = response.data ;
            });
        })
    };
}]);