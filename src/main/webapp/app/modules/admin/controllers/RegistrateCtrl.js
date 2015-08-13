admin.controller('RegistrateCtrl', ['$scope', '$http', '$location', '$window', 'LoginService', function ($scope, $http, $location, $window, LoginService) {
    $scope.first_name = '';
    $scope.last_name = '';
    $scope.country = '';
    $scope.usersArray = '';
    $scope.region = '';
    $scope.city = '';
    $scope.checkerE = '';
    $scope.checkerP = '';
    $scope.email = '';
    $scope.address = '';
    $scope.selectedCountryID = 0;
    $scope.selectedRegionID = 0;
    $scope.selectedCityID = 0;
    $scope.selectedCountryName = '';
    $scope.selectedRegionName = '';
    $scope.selectedCityName = '';
    $scope.phoneNumber = '';
    $scope.password = '';
    $scope.clientID = '';
    $scope.secretKey = '';
    $scope.getUsername = '';
    $scope.session = true;
    $scope.role = {"id": 2, "value": "client"}; //1 - adm, 2 - user, 3 - shop


    $scope.sessionRole = "anonym";
    // Grabing session value(user email) from JSP
    $scope.sessionValue = "";
    $scope.grabSessionValue = function(value){
        $scope.sessionValue = value;

        $http.get('/Practice/user/?email='+$scope.sessionValue).then(function(response){
          $scope.user = response.data;
          $scope.sessionRole = $scope.user.role.value;
          console.log($scope.user," ",$scope.sessionRole);

          LoginService.loggedUser.id = $scope.user.id;
          LoginService.loggedUser.role = $scope.user.role.value;
          console.log(LoginService.loggedUser);
            $scope.getUsername = $scope.user.firstName + ' ' + $scope.user.lastName;
        });
    };
    $scope.logOut = function(){
        $http.get('/Practice/logout');
        $window.location.reload();
        $location.path('/home');

    };
    $scope.getCountry = function () {
        $http.get('/Practice/address/country').then(function (response) {
            $scope.countries = response.data;
        });
    };
    $scope.getRegion = function () {
        $http.get('/Practice/address/country/' + $scope.selectedCountryID + '/region').then(function (response) {
            $scope.regions = response.data;
        })
    };
    $scope.getCity = function () {
        $http.get('/Practice/address/country/' + $scope.selectedCountryID + '/region/' + $scope.selectedRegionID + '/city').then(function (response) {
            $scope.cities = response.data;
        })
    };
    $scope.type = typeof $scope.country;
    $scope.func = function (roleType) {
        if (roleType != 'user') {
            $scope.session = false;
            $scope.role = {"id": 3, "value": "shop"};
        } else {
            $scope.session = true;
            $scope.role = {"id": 2, "value": "client"};
        }
    };
    $scope.regUser = function () {
        for (var i = 0; i < $scope.cities.length; i++) {
            if ($scope.cities[i].id == $scope.selectedCityID) {
                $scope.selectedCityName = $scope.cities[i].name;
            }
        }
        ;
        for (i = 0; i < $scope.countries.length; i++) {
            if ($scope.countries[i].id == $scope.selectedCountryID) {
                $scope.selectedCountryName = $scope.countries[i].name;
            }
        }
        ;
        for (i = 0; i < $scope.regions.length; i++) {
            if ($scope.regions[i].id == $scope.selectedRegionID) {
                $scope.selectedRegionName = $scope.regions[i].name;
            }
        }
        ;
        var user = {
            firstName: $scope.first_name,
            lastName: $scope.last_name,
            email: $scope.email,
            city: {
                "id": $scope.selectedCityID, "name": $scope.selectedCityName,
                "region": {
                    "id": $scope.selectedRegionID, "name": $scope.selectedRegionName,
                    "country": {"id": $scope.selectedCountryID, "name": $scope.selectedCountryName}
                }
            },
            //paypal: {"clientId": $scope.clientID, "secret": $scope.secretKey },
            phoneNumber: $scope.phoneNumber,
            password: $scope.password,
            role: $scope.role
        };
        $http.post('/Practice/user', user);
        console.log(user);
    };
}]);
