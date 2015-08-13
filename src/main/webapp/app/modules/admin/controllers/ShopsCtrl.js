admin.controller('ShopsCtrl', ['$scope', '$http','$routeParams', function ($scope, $http, $routeParams) {
    $scope.id = '';
    $scope.role = '';
    $scope.id = $routeParams.userId;
    $scope.role = $routeParams.role;
    $scope.shops = '';
    $http.get('/Practice/user/shop').then(function (response) {
        $scope.shops = response.data;
    });
    $scope.changeStatusBlocked = function (index) {
        $scope.shops[index].status = "blocked";
    };
    $scope.changeStatusActive = function (index) {
        $scope.shops[index].status = "active";
    };
    //$scope.deleteShop = function (index) {
    //    $scope.shops.splice(index, 1);
    //}
    $scope.deleteAlert = function(index){
        if(confirm('You want to delete shop: '+$scope.shops[index].firstName)){
            $http.delete('/Practice/user/'+$scope.shops[index].id);
            $http.get('/Practice/user/shop').then(function (response) {
                $scope.shops = response.data;})
        }

    };
    //$scope.changeStat = function(index){
    //    $http.get('Practice/user/lock/'+index);
    //}
    $scope.btnBlockName = "block";
    $scope.showMessage = function (status) {
        console.log(status);
        if (status == false){return "block";}
        if(status == true){return "unblock";}
    };
    $scope.changeButtonName = function (index) {
        if (true == $scope.shops[index].isBlocked) {
            $scope.btnBlockName = 'unblock';
            $http.put('/Practice/user/lock/' + $scope.shops[index].id).then(function() {
                $http.get('/Practice/user/shop').then(function (response) {
                $scope.shops = response.data;
            });});
        }
        else {
            $scope.btnBlockName = 'block';
            $http.put('/Practice/user/lock/' + $scope.shops[index].id).then(function() {
                $http.get('/Practice/user/shop').then(function (response) {
                    $scope.shops = response.data;
                });
            });
        }
    };
    $scope.getClass = function (status) {
        if (status == true)
            return {
                'fa-unlock': true
            };
        else
            return {
                'fa-lock': true
            };
    };
    $scope.getRowStatus = function (status) {
        if (status == "blocked")
            return {
                'adm-PR1': true
            };
        else
            return {
                'adm-PR1': false
            };
    }
}]);
