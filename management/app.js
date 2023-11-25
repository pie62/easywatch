angular.module('app', ['ngRoute','ngCookies', 'userModule', 'productModule', 'orderModule'])

    .run(['$rootScope', function($rootScope) {
        $rootScope.$on('$routeChangeSuccess', function (event, current, previous) {
            $rootScope.pageTitle = current.$$route.title;
        });
    }])

    .controller('homeCtl', function ($scope, $http) {
        
        $http.get('api/home/get_num_new_order.php').then(function(res) {
            $scope.newOrder = res.data[0].num;
        });

        $http.get('api/home/get_num_new_msg.php').then(function(res) {
            $scope.newMsg = res.data[0].num;
        });

        $http.get('api/home/get_num_order_confirm.php').then(function(res) {
            $scope.cfOrder = res.data[0].num;
        });
    })
    
    .controller('navCtl', function ($scope, $cookies) {
        $scope.adminname = $cookies.get('adminlogin');
    })

    .controller('inboxCtl', function ($scope, $http) {
        
        $http.get('api/inbox/get_new_msg.php').then(function (res) {
            if (res.data == 'false') {
                console.log('no new msg');
            }
            else {
                $scope.newMsg = res.data;
                console.log(res.data);
            }
        });
    })

    .config(function ($routeProvider){
        $routeProvider
            .when(
                '/', {
                    controller: 'homeCtl',
                    templateUrl: 'views/home.html',
                    title: 'ระบบจัดการร้าน'
                }
            )
            .when(
                '/inbox', {
                    controller: 'inboxCtl',
                    templateUrl: 'views/inbox.html',
                    title: 'ข้อความ'
                }
            )
            .when(
                '/product', {
                    controller: 'allProductCtl',
                    templateUrl: 'views/product.html',
                    title: 'สินค้าทั้งหมด'
                }
            )
            .when(
                '/product/addproduct', {
                    controller: 'addProductCtl',
                    templateUrl: 'views/addproduct.html',
                    title: 'เพิ่มสินค้า'
                }
            )
            .when(
                '/product/promotion', {
                    controller: 'promotionCtl',
                    templateUrl: 'views/promotion.html',
                    title: 'โปรโมชั่นสินค้า'
                }
            )
            .when(
                '/product/:pd_model', {
                    controller: 'detailCtl',
                    templateUrl: 'views/detail.html',
                    title: 'รายละเอียดสินค้า'
                }
            )
            .when(
                '/product/edit/:pd_model', {
                    controller: 'editCtl',
                    templateUrl: 'views/edit.html',
                    title: 'แก้ไขสินค้า'
                }
            )
            .when(
                '/order/new', {
                    controller: 'newOrderCtl',
                    templateUrl: 'views/new_order.html',
                    title: 'รายการสั่งซื้อใหม่'
                }
            )
            .when(
                '/order/confirmed', {
                    controller: 'confirmedOrderCtl',
                    templateUrl: 'views/order_wait_sent.html',
                    title: 'รายการสั่งซื้อรอจัดส่ง'
                }
            )
            .when(
                '/order/old', {
                    controller: 'oldOrderCtl',
                    templateUrl: 'views/order_old.html',
                    title: 'รายการสั่งซื้อจัดส่งแล้ว'
                }
            )
            .when(
                '/order/:orderId', {
                    controller: 'orderDetailCtl',
                    templateUrl: 'views/order_detail.html',
                    title: 'รายละเอียดรายการสั่งซื้อ'
                }
            )
            .otherwise({
                redirectTo: '/'
            });
    });
