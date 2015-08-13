/**
 * Created by andrii on 11.08.2015.
 */
goods.controller('ProductCtrl', ['$scope', '$http','$routeParams', function ($scope, $http, $routeParams) {
    $scope.products = '';
    $scope.descriptions = '';
    $scope.users = '';
    $scope.shops = '';
    $scope.comments = '';
    $scope.text = '';
    $scope.userID = '';
    $scope.data =[];
    $scope.date = [];
        $http.get('/Practice/goods?id='+$routeParams.goodId).then(function (response) {
            $scope.product = response.data;
            $scope.descriptions = response.data.description;
            //for(var i=0;i<$scope.products.length;i++){
            //    $scope.description[i]=$scope.products.description[i];
            //}
        });
    $http.get('/Practice/storage/good?id='+$routeParams.goodId).then(function (response) {
        $scope.shops = response.data;
    });
    $http.get('/Practice/comment/'+$routeParams.goodId).then(function (response) {
       $scope.comments = response.data ;
    });
    $http.get('/Practice/user/client').then(function (response){
        $scope.users = response.data;
    });
    $scope.getDate = function(date){
        return new Date(date);
    };
    $scope.getUser = function(id){
        //$scope.userID = 2;
        return $scope.users[id].firstName +' '+  $scope.users[id].lastName;
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
            userId: $scope.userID,
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