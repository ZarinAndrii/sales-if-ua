goods.controller('tablesCtrl', ['$scope', '$http', function($scope, $http){

	$http.get('app/modules/goods/json/nazar-shops-list.json').then(function(response){
   	$scope.shops_list = response.data;
   	});

   	$http.get('app/modules/goods/json/nazar-characteristic-list.json').then(function(response){
   	$scope.characteristic_list = response.data;
   	});

}]);