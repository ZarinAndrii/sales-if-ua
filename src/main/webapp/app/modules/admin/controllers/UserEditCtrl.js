admin.controller('UserEditCtrl', ['$scope', '$http','$routeParams', function ($scope, $http, $routeParams) {
    $scope.id= '';
    $scope.firstName = '';
    $scope.lastName = '';
    $scope.email = '';
    $scope.phoneNumber = '';
    $scope.role = '';
    $scope.user ='';
    $http.get('/Practice/user/client/'+ $routeParams.userId).then(function (response) {
        $scope.user = response.data;
        $scope.id = $routeParams.userId;
        $scope.role = $routeParams.role;
        $scope.firstName = $scope.user.firstName;
        $scope.lastName = $scope.user.lastName;
        $scope.email = $scope.user.email;
        $scope.phoneNumber = $scope.user.phoneNumber;
    });
    $scope.updateUser = function(){
        var update = {
            firstName: $scope.firstName,
            lastName: $scope.lastName,
            email: $scope.email,
            phoneNumber: $scope.phoneNumber
        };
        $http.patch('/Practice/user/'+$routeParams.userId, update).then(function(){
            $http.get('/Practice/user/client/'+ $routeParams.userId).then(function (response) {
                $scope.user = response.data;
                $scope.id = $routeParams.userId;
                $scope.role = $routeParams.role;
            });
        });
            console.log(update);
    }
}]);