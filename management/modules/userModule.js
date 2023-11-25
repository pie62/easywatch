angular.module('userModule', ['ngCookies'])

	.controller('loginCtl', function ($scope, $http, $cookies, $location) {
        
		$scope.reqCh = function () {
			$scope.ere = '';
		};
		
		$scope.login = function () {
			var admin_data = {
				adminname: $scope.adminname,
				adminpass: $scope.adminpass	
			};
			
			$http.post('api/login.php', admin_data)
			.success(function (res) {
				if (res == 'false') {
					console.log('failed login');
					$scope.ere = 'ชื่่อผู้ใช้หรือรหัสผ่านผิด';
				} else {
					$cookies.put('adminlogin', res[0].name);
					$location.path('/');
					location.reload();
				}
			});
		};
		
		$scope.logout = function () {
			$cookies.remove('adminlogin');
            $location.path('/');
            location.reload();
		};
		
		$scope.adminname = $cookies.get('adminlogin');
    });