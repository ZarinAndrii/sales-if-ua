admin.controller( 'PurchasesCtrl', ['$scope','$http',function ( $scope,$http) {
      $http.get('app/modules/admin/json/purchases.json').then(function(response){
      $scope.purch = response.data;
      });
      $scope.deletePurchases = function(){
      $scope.purchases.splice(0,$scope.purchases.length);
      };
      }])
