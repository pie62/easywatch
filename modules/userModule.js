angular.module('userModule', ['ngCookies'])

.controller('userCtl', ['$scope', '$http', '$cookies', '$location', function ($scope, $http, $cookies, $location){
	
	$scope.navUsername = $cookies.get('userlogin');

	$scope.login = function () {
		var data = {
			username: $scope.lusername,
			password: $scope.lpassword
		};
		$http.post('api/user/login.php', data).then(function (res) {
			if (res.data == 'false') {
				$scope.canlogin = false;
			}
			else {
				$cookies.put('userlogin', data.username);
				$location.path('/');
				location.reload();
			}
		});
	};

	$scope.logout = function () {
		$cookies.remove('userlogin');
		$location.path('/');
		location.reload();
	};

	$scope.regis = function () {
		var data = {
			username: $scope.rusername,
			password: $scope.rpassword
		};
		$http.post('api/user/regis.php', data).then(function (res) {
			if (res.data == 'false') {
				$scope.canregis = false;
			}
			else {
				$cookies.put('userlogin', data.username);
				$location.path('/');
				location.reload();
			}
		});
	};
}]);