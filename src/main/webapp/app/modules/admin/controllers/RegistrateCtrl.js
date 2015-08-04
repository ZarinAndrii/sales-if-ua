admin.controller('RegistrateCtrl', ['$scope', '$http', function ($scope, $http) {
    $scope.first_name = '';
    $scope.last_name = '';
    $scope.email = '';
    $scope.address = '';
    $scope.phoneNumber = '';
    $scope.password = '';
    $scope.role =''; //1 - adm, 2 - user, 3 - shop
    $scope.regUser = function(){
        var user = {
            firstName: $scope.first_name,
            lastName: $scope.last_name,
            email: $scope.email,
            address: $scope.address,
            phoneNumber: $scope.phoneNumber,
            password: $scope.password,
            role: 2
        }
        $http.post('/Practice/users/add',user);
        console.log('User registered' , user);
    }
    $scope.regShop = function(){
        var shop = {
            firstName: $scope.first_name,
            lastName: null,
            email: $scope.email,
            address: $scope.address,
            phoneNumber: $scope.phoneNumber,
            password: $scope.password,
            role: 3
        }

        $http.post('/Practice/users/add',shop);
        console.log('Shop registered' , shop);
    }
}])