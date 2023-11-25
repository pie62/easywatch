angular.module('productModule', ['simplePagination'])

.filter('range', function() {
  	return function(input, total) {
    	total = parseInt(total);

    	for (var i=0; i<total; i++) {
      		input.push(i);
    	}

    	return input;
  	};
})

.controller('productsCtl', ['$scope', '$http', '$cookies', '$location', 'Pagination', function ($scope, $http, $cookies, $location, Pagination) {
	
	$http.get('api/product/get_product_promotion.php').then(function (result) {
		if (result.data == 'false') {
			console.log('Error get product promotion');
		}
		else {
			$scope.pmts = result.data;
			$scope.pagep = Pagination.getNew(9);
			$scope.pagep.numPages = Math.ceil($scope.pmts.length/$scope.pagep.perPage);
		}
	});

	$http.get('api/product/get_product_all.php').then(function (result) {
		if (result.data == 'false') {
			console.log('Error get product all');
		}
		else {
			$scope.pds = result.data;
			$scope.pagination = Pagination.getNew(9);
			$scope.pagination.numPages = Math.ceil($scope.pds.length/$scope.pagination.perPage);
		}
	});

	$scope.atcModal = function (r) {
		if ( !$cookies.get('userlogin') ) {
			$location.path('/login_registration');
		}
		$scope.atc = r;
		$scope.unit = 1;
	};

	$scope.addToCart = function () {
		var data = {
			username: 	$cookies.get('userlogin'),
			model: 		$scope.atc.model,
			unit: 		$scope.unit
		};
		$http.post('api/cart/add_to_cart.php', data).then(function (res) {
			if (res.data == 'false') {
				console.log('Error Add to cart');
			}
		});
	};
	
}])

.controller('productBrandCtl', function ($scope, $http, $cookies, $location, $routeParams, Pagination) {

	var bname = $routeParams.brandName;
	$scope.bname = bname;
	
	var data = {
		brandName: bname
	};

	$http.post('api/product/get_product_from_brand.php', data).then(function (result) {
		if (result.data == 'false') {
			console.log('Error get product all');
		}
		else {
			$scope.pds = result.data;
			$scope.pagination = Pagination.getNew(9);
			$scope.pagination.numPages = Math.ceil($scope.pds.length/$scope.pagination.perPage);
		}
	});

	$scope.atcModal = function (r) {
		if ( !$cookies.get('userlogin') ) {
			$location.path('/login_registration');
		}
		$scope.atc = r;
		$scope.unit = 1;
	};

	$scope.addToCart = function () {
		var data = {
			username: 	$cookies.get('userlogin'),
			model: 		$scope.atc.model,
			unit: 		$scope.unit
		};
		$http.post('api/cart/add_to_cart.php', data).then(function (res) {
			if (res.data == 'false') {
				console.log('Error Add to cart');
			}
		});
	};
})

.controller('detailCtl', function ($scope, $http, $cookies, $location, $routeParams) {
	var bname = $routeParams.brandName;
	var mname = $routeParams.modelName;
	$scope.bname = bname;
	$scope.mname = mname;
	
	var data = {
		modelName: mname
	};

	$http.post('api/product/get_product_detail.php', data).then(function (result) {
		if (result.data == 'false') {
			console.log('Error get product detail');
		}
		else {
			$scope.pd = result.data[0];
			$scope.imgs = result.data;
			$scope.imgShow = result.data[0].img_path;
		}
	});

	$scope.imgCh = function (n) {
		$scope.imgShow = $scope.imgs[n].img_path;
	};

	$scope.atcModal = function (r) {
		if ( !$cookies.get('userlogin') ) {
			$location.path('/login_registration');
		}
		$scope.atc = r;
		$scope.unit = 1;
	};

	$scope.addToCart = function () {
		var data = {
			username: 	$cookies.get('userlogin'),
			model: 		$scope.atc.model,
			unit: 		$scope.unit
		};
		$http.post('api/cart/add_to_cart.php', data).then(function (res) {
			if (res.data == 'false') {
				console.log('Error Add to cart');
			}
		});
	};
})

//---------------------------------------------
.controller('sideBarCtl', ['$scope', '$http', function ($scope, $http) {
	$http.get('api/sidebar/get_brand_name.php').then(function (result) {
		if (result.data == 'false') {
			console.log('Error getbrand name');
		}
		else {
			$scope.brands = result.data;
		}
	});
}]);