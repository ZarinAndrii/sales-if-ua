admin.controller('UserEditCtrl', ['$scope', '$http',function($scope, $http){
            $http.get('app/modules/admin/json/session-user.json').then(function(response){
            $scope.user = response.data;
            })
        }])