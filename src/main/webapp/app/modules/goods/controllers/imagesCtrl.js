goods.controller('imagesCtrl', ['$scope', '$http', function($scope, $http){

	$http.get('app/modules/goods/json/nazar-images.json').then(function(response){
   	$scope.photoes = response.data;
   	});

 //goods.controller('imagesCtrl', ['$scope', function($scope){
 //	$scope.photos = {
 //	    main_photo: 'modules/goods/img/2.jpg',
 //	    first_little_photo: 'modules/goods/img/4.jpg',
 //	    second_little_photo: 'modules/goods/img/3.jpg',
 //	    third_little_photo: 'modules/goods/img/5.jpg'
 //  	};
}])