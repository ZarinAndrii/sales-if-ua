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
            city: $scope.address,
            phoneNumber: $scope.phoneNumber,
            password: $scope.password,
            role: {"id":2,"value":"client"}
        }
        $http.post('/Practice/users/add',user);
        console.log('User registered' , user);
    }
    $scope.regShop = function(){
        var shop = {
            firstName: $scope.first_name,
            lastName: null,
            email: $scope.email,
            city: $scope.address,
            phoneNumber: $scope.phoneNumber,
            password: $scope.password,
            role: {"id":3,"value":"shop"}
        }
        $http.post('/Practice/users/add',shop);
        console.log('Shop registered' , shop);
    }
}])
//{"id":1,"name":"if","region":{"id":1,"name":"obl1","country":{"id":1,"name":"Ukraine"}}}