angular.module('orderModule', [])

.controller('cartCtl', ['$scope', '$http', '$cookies', '$location', '$route', function ($scope, $http, $cookies, $location, $route){
	if ( !$cookies.get('userlogin') ) {
		$location.path('/login_registration');
	}

	var udata = {
		username: $cookies.get('userlogin')
	};

	$http.post('api/cart/get_cart_data.php', udata).then(function (result) {
		if (result.data == 'false') {
			console.log('no cart Data');
		}
		else {
			$scope.cart = result.data;
			$scope.getPriceTotal = PriceTotal();
			$scope.unitTotal = getUnitTotal();
		}
	});

	$scope.removeItem = function (m) {
		var rdata = {
			username: $cookies.get('userlogin'),
			model: m
		};
		$http.post('api/cart/remove_item_cart.php', rdata).then(function (result) {
			if (result.data == 'false') {
				console.log('Delete Error');
			}
			else {
				console.log('Delete Success');
				$route.reload();
			}
		});
		
	};

	$scope.editBtn = function (item) {
		$scope.bbb = item.brand_name;
		$scope.mmm = item.model;
	};

	$scope.editItem = function (m) {
		// $('#editUnit').modal('toggle');
		var data = {
			username: $cookies.get('userlogin'),
			model: m,
			unit: $scope.unitCh
		};

		$http.post('api/cart/edit_item_cart.php', data).then(function (result) {
			if (result.data == 'false') {
				console.log('Edit Error');
			}
			else {
				console.log('Edit Success');
				location.reload();
			}
		});
	};

	function PriceTotal () {
		var total = 0;
		for (var i = 0; i < $scope.cart.length; i++) {
			var price = 0;
			if ( $scope.cart[i].price_promotion > 1 ){
				price = $scope.cart[i].price_promotion;
			} else {
				price = $scope.cart[i].price;
			}
			total += ( price * $scope.cart[i].unit);
		}
		return total;
	}
	function getUnitTotal () {
		var total = 0;
		for (var i = 0; i < $scope.cart.length; i++) {
			total += parseInt($scope.cart[i].unit);
		}
		return total;
	}

}])

.controller('toOrderCtl', ['$scope', '$http', '$cookies', '$location', function ($scope, $http, $cookies, $location){
	if ( !$cookies.get('userlogin') ) {
		$location.path('/login_registration');
	}

	var udata = {
		username: $cookies.get('userlogin')
	};

	$http.post('api/cart/get_cart_data.php', udata).then(function (result) {
		if (result.data == 'false') {
			console.log('no cart Data');
		}
		else {
			$scope.cart = result.data;
			$scope.priceTotal = gerPriceTotal ();
		}
	});

	function gerPriceTotal () {
		var total = 0;
		for (var i = 0; i < $scope.cart.length; i++) {
			var price = 0;
			if ( $scope.cart[i].price_promotion > 1 ){
				price = $scope.cart[i].price_promotion;
			} else {
				price = $scope.cart[i].price;
			}
			total += ( price * $scope.cart[i].unit);
		}
		return total;
	}

	$scope.addOrder = function () {
		var order = {
			username: 	$cookies.get('userlogin'),
			totalprice: gerPriceTotal(),
			fname: 		$scope.fname,
			lname: 		$scope.lname,
			phone: 		$scope.phone,
			email: 		$scope.email,
			address: 	$scope.address,
			detail: 	$scope.cart
		};
		$http.post('api/order/add_order.php', order).then(function (result) {
			if (result.data == 'false') {
				console.log('Error add Order');
			}
			else {
				console.log('Success add Order');
				$location.path('/order');
			}
		});
	};

}])

.controller('paymentCtl', ['$scope', '$http', '$cookies', '$location', '$routeParams', function ($scope, $http, $cookies, $location, $routeParams){
	if ( !$cookies.get('userlogin') ) {
		$location.path('/login_registration');
	}
	var oid = $routeParams.orderId;
	var udata = {
		username: $cookies.get('userlogin'),
		orderId:  oid
	};

	$http.post('api/order/get_order_by_username.php', udata).then(function (result) {
		if (result.data == 'false') {
			console.log('No Order to pay');
		}
		else {
			$scope.odata = result.data[0];
		}
	});

	$scope.orderPay = function () {
		var pay = {
			id: $scope.odata.id, 
			bankName: $scope.bankName, 
			acNumber: $scope.acNumber,
			payDate: $scope.payDate
		};
		console.log(pay);
		$http.post('api/order/pay_order.php', pay).then(function (result) {
			if (result.data == 'false') {
				console.log('Error Order to pay');
			}
			else {
				console.log('Success add pay data');
				$location.path('/order');
			}
		});
	};

}])

.controller('orderCtl', function ($scope, $http, $cookies, $location) {
	if (!$cookies.get('userlogin')) {
		$location.path('/login_registration');
	}

	var udata = {
		username: $cookies.get('userlogin')
	};

	$http.post('api/order/get_all_order_by_username.php', udata).then(function (result) {
		if (result.data == 'false') {
			$scope.haveOrder = false;
		}
		else {
			$scope.orders = result.data;
			$scope.haveOrder = true;
		}
	});

	$http.post('api/order/get_all_order_no_pay.php', udata).then(function (result) {
		if (result.data == 'false') {
			$scope.payOrder = false;
		}
		else {
			$scope.noPays = result.data;
			$scope.payOrder = true;
		}
	});

})

.controller('orderDetailCtl', function ($scope, $http, $cookies, $location, $routeParams) {

	if (!$cookies.get('userlogin')) {
		$location.path('/login_registration');
	}
	var oid = $routeParams.orderId;
	var data = {
		username: $cookies.get('userlogin'),
		orderId:  oid
	};
	
	$http.post('api/order/get_order.php', data).then(function (result) {
		if (result.data == 'false') {
			$scope.haveOrder = false;
		}
		else {
			$scope.order = result.data[0];
		}
	});

	$http.post('api/order/get_order_detail.php', data).then(function (result) {
		if (result.data == 'false') {
			console.log('nooooooooooooo');
		}
		else {
			$scope.items = result.data;
			$scope.haveOrder = true;
		}
	});
});