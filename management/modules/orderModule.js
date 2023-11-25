angular.module('orderModule', [])

.controller('newOrderCtl', function ($scope, $http, Pagination, $route) {

	$http.get('api/order/get_new_order.php').then(function(res) {
        if (res.data == 'false') {
        	console.log('no new order');
        }
        else {
        	$scope.nOrders = res.data;

        	$scope.pagination = Pagination.getNew(10);
            $scope.pagination.numPages = Math.ceil($scope.nOrders.length / $scope.pagination.perPage);
        }   
    });

    $scope.confirm = function (i) {
    	var data = {
    		id: i
    	};
    	$http.post('api/order/confirm_pay.php', data).then(function (res) {
    		if (res.data == 'false') {
    			console.log('Database Error');
    		}
    		else {
    			$route.reload();
    		}
    	});
    };

})

.controller('confirmedOrderCtl', function ($scope, $http, Pagination) {
	
	$http.get('api/order/get_confirmed_order.php').then(function(res) {
        if (res.data == 'false') {
        	console.log('no confirmed order');
        }
        else {
        	$scope.cOrders = res.data;

        	$scope.pagination = Pagination.getNew(10);
            $scope.pagination.numPages = Math.ceil($scope.cOrders.length / $scope.pagination.perPage);
        }   
    });

    $scope.orderModalSent = function (u) {
    	$scope.m = u;
    	$scope.emsCode = '';
    };

    $scope.orderSent = function () {
    	var data = {
    		id: $scope.m.id, 
    		ems: $scope.emsCode
    	}
    	$http.post('api/order/sent_order.php', data).then(function (result) {
    		if (result.data == 'false') {
    			console.log('have error');
    		}
    		else {
    			location.reload();
    		}
    	});
    };

})

.controller('oldOrderCtl', function ($scope, $http, Pagination) {

	$http.get('api/order/get_old_order.php').then(function(res) {
        if (res.data == 'false') {
        	console.log('no confirmed order');
        }
        else {
        	$scope.oOrders = res.data;

        	$scope.pagination = Pagination.getNew(10);
            $scope.pagination.numPages = Math.ceil($scope.oOrders.length / $scope.pagination.perPage);
        }   
    });
})

.controller('orderDetailCtl', function ($scope, $http, $routeParams) {

	var oid = $routeParams.orderId;
	var data = {
		orderId: oid
	};

	$http.post('api/order/get_order_detail.php', data).then(function (result) {
		if ( result.data == 'false') {
			console.log('have no this order');
		}
		else {
			$scope.details = result.data;
		}
	});

	$http.post('api/order/get_order_by_id.php', data).then(function (result) {
		if ( result.data == 'false') {
			console.log('have no this order');
			$scope.haveOrder = false;
		}
		else {
			$scope.order = result.data[0];
			$scope.haveOrder = true;
		}
	});
});