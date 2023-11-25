angular.module('app', ['ngRoute', 'ngCookies', 'ngSanitize', 'userModule','productModule', 'orderModule'])

.run(['$rootScope', function($rootScope) {
    $rootScope.$on('$routeChangeSuccess', function(event, current, previous) {
        $rootScope.pageTitle = current.$$route.title;
    });
}])

.controller('homeCtl', function($scope) {
    // $scope.ctlname = 'Home Page';
})

.controller('aboutCtl', function($scope, $http) {

    $scope.sentMessage = function () {
    	var data = {
    		name: 	$scope.name,
    		email: 	$scope.email,
    		msg: 	$scope.msg
    	};
    	console.log(data);
    	$http.post('api/add_message.php', data).then(function (res) {
    		if ( res.data == 'false') {
    			console.log('MySQL Erroe');
    		} else {
    			$('#formMsg').fadeOut();
    			$('#affTerSent').fadeIn();
    		}
    	});
    };
})

.controller('navCtl', ['$scope', function ($scope) {
	
}])
.controller('howCtl', ['$scope', function ($scope) {
	
}])

.config(function ($routeProvider) {
    $routeProvider
    .when('/', {
        controller: 'homeCtl',
        templateUrl: 'views/home.html',
        title: 'หน้าแรก'
    })
    .when('/login_registration', {
        controller: 'userCtl',
        templateUrl: 'views/login_regis.html',
        title: 'เข้าสู่ระบบ หรือ สมัครสมาชิก'
    })
    .when('/cart', {
        controller: 'cartCtl',
        templateUrl: 'views/cart.html',
        title: 'ตะกร้าสินค้า'
    })
    
    .when('/order', {
        controller: 'orderCtl',
        templateUrl: 'views/order.html',
        title: 'รายการสั่งซื้อ'
    })
    .when('/order/:orderId', {
        controller: 'orderDetailCtl',
        templateUrl: 'views/order_detail.html',
        title: 'รายละเอียดรายการสั่งซื้อ'
    })
    .when('/order/:orderId/payment', {
        controller: 'paymentCtl',
        templateUrl: 'views/payment.html',
        title: 'แจ้งการชำระเงิน'
    })
    .when('/about', {
        controller: 'aboutCtl',
        templateUrl: 'views/about.html',
        title: 'เกี่ยวกับเรา - ติดต่อเรา'
    })
    .when('/how', {
        controller: 'howCtl',
        templateUrl: 'views/how.html',
        title: 'วิธีการสั่งซื้อ-ชำระเงิน'
    })
    .when('/cart/to_order', {
        controller: 'toOrderCtl',
        templateUrl: 'views/to_order.html',
        title: 'สั่งซื้อสินค้า'
    })
    .when('/products', {
        controller: 'productsCtl',
        templateUrl: 'views/products.html',
        title: 'สินค้า'
    })
    .when('/products/all', {
        controller: 'productsCtl',
        templateUrl: 'views/products_all.html',
        title: 'สินค้าทั้งหมด'
    })
    .when('/products/promotion', {
        controller: 'productsCtl',
        templateUrl: 'views/promotion.html',
        title: 'สินค้าลดราคา'
    })
    .when('/products/:brandName', {
        controller: 'productBrandCtl',
        templateUrl: 'views/products_brand.html',
        title: 'สินค้า'
    })
    .when('/products/:brandName/:modelName', {
        controller: 'detailCtl',
        templateUrl: 'views/detail.html',
        title: 'รายละเอียดสินค้า'
    })
    .otherwise({
        redirectTo: '/'
    });;
});