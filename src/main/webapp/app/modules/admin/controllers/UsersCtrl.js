admin.controller('UsersCtrl', ['$scope', '$http',function($scope, $http){
            $http.get('app/modules/admin/json/users.json').then(function(response){
            $scope.users = response.data;
            });
            $scope.changeStatusBlocked = function(index){
            $scope.users[index].status = "blocked";
            };
            $scope.changeStatusActive = function(index){
            $scope.users[index].status = "active";
            };
            $scope.deleteUser = function(index){
            $scope.users.splice(index,1);
            }
            $scope.btnBlockName= "block";
            $scope.showMessage = function(status){
            		if(status=="active")
                  	return "block"
                 	else
                  	return "unblock";
                 	}
	$scope.changeButtonName=function(index){
           	if($scope.users[index].status=='blocked'){
           		$scope.btnBlockName = 'unblock';
           		$scope.users[index].status = "active";
          		}
            		else {
            			$scope.btnBlockName = 'block';
            			$scope.users[index].status = "blocked";
          			}
            		}
            $scope.getClass = function(status){
		if(status=="blocked") 
            		return{
                 	'fa-unlock': true
                	}
                	else 
                  	return{
                    	'fa-lock': true
                  	};
            	}
            $scope.getRowStatus = function(status){
            		if(status=="blocked") 
            		return{
                  	'adm-PR1': true
                      	}
             	else 
             	return{
                    	'adm-PR1': false
                       	};
            	}
      } ] );
// }])