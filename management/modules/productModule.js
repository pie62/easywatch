angular.module('productModule', ['angularFileUpload', 'simplePagination', 'textAngular'])  //'ngSanitize',

.controller('allProductCtl', function ($scope, $http, Pagination) {
    // $scope.ctlname = 'All Product Page';
    $http.get('api/get_all_product_data.php').then(function(response) {
        if (response == 'false') {
            console.log("can not get");
        } else {
            console.log(response.data);
            $scope.products = response.data;
            // console.log($scope.products.length);
            // pdLength = $scope.products.length
            $scope.pagination = Pagination.getNew(10);
            $scope.pagination.numPages = Math.ceil($scope.products.length / $scope.pagination.perPage);
        }
    });
    $scope.modalRemoe = function (g) {
        $('#myModal').modal('toggle');
        $scope.p = g;
    };
    $scope.removeProduct = function (par) {
        $('#myModal').modal('hide');
        var rdata = {
            model: par.model,
            id: par.id
        };
        $http.post('api/remove_product.php', rdata).success(function(res) {
            if (res == 'false') {
                console.log("Can not REMOVE DATA");
            } else {
                location.reload();
            }
        });
    };
}).controller('addProductCtl', function ($scope, $http, FileUploader, $location) {
    // $scope.ctlname = 'Add Product Page';
    // Declare default varible = null,  if user not input
    $scope.pd_color = null;
    $scope.pd_wrt = null;
    $scope.pd_detail = null;
    $http.get('api/get_brand_name.php').success(function(response) {
        if (response == 'false') {
            console.log("can not get");
        } else {
            //console.log();
            $scope.pdBrand = response;
        }
    });
    $scope.wrt = ['3 เดือน', '6 เดือน', '1 ปี', '2 ปี'];
    $scope.openAddBrand = function() {
        $('#add_brand').modal('toggle');
    };
    $scope.addBrand = function() {
        if ($scope.bname == null) {
            console.log('no data input');
        } else {
            var bdata = {
                brand_name: $scope.bname
            };
            $http.post('api/add_brand.php', bdata).success(function(res) {
                if (res == 'false') {
                    console.log("Can't add brand name");
                } else {
                    console.log("Success add brand name");
                    $('#add_brand').modal('toggle');
                }
            });
            location.reload();
        }
    };
    var product_ID;
    $scope.addProduct = function() {
        var pdata = {
            brand_id: $scope.pd_brand_id.brand_id,
            model: $scope.pd_model,
            color: $scope.pd_color,
            warranty: $scope.pd_wrt,
            price: $scope.pd_price,
            unit: $scope.pd_unit,
            detail: $scope.pd_detail
        };
        console.log(pdata);
        $http.post('api/put_product.php', pdata).success(function(res) {
            if (res == 'false') {
                console.log("Can not Insert DATA ERROE!!");
                //alert(res);
            } else {
                console.log('product ID: ' + res);
                product_ID = res;
            }
        });
    };
    // -- Start Uploader -----------------------------
    var uploader = $scope.uploader = new FileUploader({
        url: 'upload.php'
    });
    // FILTERS
    uploader.filters.push({
        name: 'imageFilter',
        fn: function(item /*{File|FileLikeObject}*/ , options) {
            var type = '|' + item.type.slice(item.type.lastIndexOf('/') + 1) + '|';
            return '|jpg|png|jpeg|bmp|gif|'.indexOf(type) !== -1;
        }
    });
    // CALLBACKS
    uploader.onWhenAddingFileFailed = function(item /*{File|FileLikeObject}*/ , filter, options) {
        console.info('onWhenAddingFileFailed', item, filter, options);
    };
    uploader.onAfterAddingFile = function(fileItem) {
        console.info('onAfterAddingFile', fileItem);
    };
    uploader.onAfterAddingAll = function(addedFileItems) {
        console.info('onAfterAddingAll', addedFileItems);
    };
    uploader.onBeforeUploadItem = function(item) {
        console.info('onBeforeUploadItem', item);
    };
    uploader.onProgressItem = function(fileItem, progress) {
        console.info('onProgressItem', fileItem, progress);
    };
    uploader.onProgressAll = function(progress) {
        console.info('onProgressAll', progress);
    };
    uploader.onSuccessItem = function(fileItem, response, status, headers) {
        console.info('onSuccessItem', fileItem, response, status, headers);
    };
    uploader.onErrorItem = function(fileItem, response, status, headers) {
        console.info('onErrorItem', fileItem, response, status, headers);
    };
    uploader.onCancelItem = function(fileItem, response, status, headers) {
        console.info('onCancelItem', fileItem, response, status, headers);
    };
    uploader.onCompleteItem = function(fileItem, response, status, headers) {
        console.info('onCompleteItem', fileItem, response, status, headers);
    };
    uploader.onCompleteAll = function() {
        console.info('onCompleteAll');
    };
    console.info('uploader', uploader);
    // ------------------------------  End Uploader -----------------------------
    $scope.addImg = function() {
        var img = {}; // ไว้เก็บ Array ของรูป
        var aaa = uploader.queue.length;
        for (var i = 0; i < aaa; i++) {
            img[i] = 'images/' + uploader.queue[i].file.name;
        }
        var imgData = {
            pb_id: product_ID,
            images: img
        };
        uploader.uploadAll();
        console.log(imgData);
        $http.post('api/add_img.php', imgData).success(function(res) {
            if (res == 'false') {
                console.log("Can not Insert image data");
            }
            else {
                $location.path('/product/'+$scope.pd_model);
            }
        });
    };
}).controller('detailCtl', function ($scope, $routeParams, $http, $location) {
    console.log($routeParams.pd_model);
    $scope.pd_model = $routeParams.pd_model;

    var product_m = {model: $scope.pd_model, }

    $http.post('api/get_product_data.php', product_m).success(function(res) {
        if (res == 'false') {
            console.log("Can not find product DATA");
            //alert(res);
        } else {
            console.log(res[0]);
            $scope.product = res[0];
            // $scope.detail = $scope.product.detail;
         }
    });

    $http.post('api/get_product_img.php', product_m).success(function(res) {
        if (res == 'false') {
            console.log("Can not find product img");
        } else {
            $scope.imgs = res;
            console.log(res);

            $scope.imgShow = $scope.imgs[0].img_path;
         }
    });
    $scope.imgCh = function (n) {
        $scope.imgShow = $scope.imgs[n].img_path;
    };
    $scope.removeProduct = function (par) {
        $('#myModal').modal('hide');
        // $modalInstance.dismiss('cancel');
        var rdata = {
            model: par,
            id: $scope.product.id
        };
        console.log(rdata);
        $http.post('api/remove_product.php', rdata).success(function(res) {
            if (res == 'false') {
                console.log("Can not REMOVE DATA");
            } else {
                $location.path('/product');
                location.reload();
            }
        });
    };
}).controller('editCtl', function ($scope, $routeParams, $http, $location) {
    $scope.pd_model = $routeParams.pd_model;
    var product_m = {model: $scope.pd_model, }
    $http.post('api/get_product_data.php', product_m).success(function(res) {
        if (res == 'false') {
            console.log("Can not find product DATA");
            //alert(res);
        } else {
            console.log(res[0]);
            $scope.product = res[0];

            $scope.pd_model2 = $scope.product.model;
            $scope.pd_price = parseInt($scope.product.price);
            $scope.pd_unit = parseInt($scope.product.stock);
            $scope.pd_color = $scope.product.color;
            $scope.pd_wrt = $scope.product.warranty;
            $scope.pd_detail = $scope.product.detail;
         }
    });
    $scope.wrt = ['3 เดือน', '6 เดือน', '1 ปี', '2 ปี'];

    $scope.cancleEdit = function () {
        $location.path('/product/' + $routeParams.pd_model);
    };

    $scope.editProduct = function () {
        var pdata = {
            pd_id: $scope.product.id,
            model: $scope.pd_model2,
            color: $scope.pd_color,
            warranty: $scope.pd_wrt,
            price: $scope.pd_price,
            unit: $scope.pd_unit,
            detail: $scope.pd_detail
        };
        console.log(pdata);
        $http.post('api/edit_product.php', pdata).success(function(res) {
            if (res == 'false') {
                console.log("Can not EDIT DATA ERROE!!");
                //alert(res);
            } else {
                $location.path('/product/' + $scope.pd_model2);
            }
        });
    };
    $scope.removeProduct = function (par) {
        $('#myModal').modal('hide');
        // $modalInstance.dismiss('cancel');
        var rdata = {
            model: par,
            id: $scope.product.id
        };
        $http.post('api/remove_product.php', rdata).success(function(res) {
            if (res == 'false') {
                console.log("Can not REMOVE DATA");
            } else {
                $location.path('/product');
                location.reload();
            }
        });
    };
}).controller('promotionCtl', function ($scope, $http, Pagination, $route) {

    function getProduct ($scope, $http, Pagination, n) {
        $http.get('api/get_product_promotion_empty.php').then(function(result) {
            if (result.data == 'false') {
                console.log("can not get");
            } else {
                $scope.products = result.data;
                $scope.pagination = Pagination.getNew(n);
                $scope.pagination.numPages = Math.ceil($scope.products.length / $scope.pagination.perPage);
            }
        });
    }

    function getProductPromotion ($scope, $http, Pagination) {
        $http.get('api/get_product_promotion.php').then(function(result) {
            if (result.data == 'false') {
                console.log("can not get");
            } else {
                $scope.pd_pmt = result.data;
                $scope.pagepmt = Pagination.getNew(6);
                $scope.pagepmt.numPages = Math.ceil($scope.pd_pmt.length / $scope.pagepmt.perPage);
            }
        });
    }

    getProduct($scope, $http, Pagination, 10);
    getProductPromotion($scope, $http, Pagination);
    

    $scope.editPmt = function (p) {
        $scope.pricePmt = null;
        $scope.priceEdit = p.price;
        $scope.brandEdit = p.brand_name;
        $scope.modelEdit = p.model;
        $('#productPanel').fadeOut();
        $('#removePanel').fadeOut();
        $('#editPanel').fadeIn();
    };
    $scope.cancel = function () {
        $('#editPanel').fadeOut();
        $('#removePanel').fadeOut();
        $('#productPanel').fadeIn();
    };
    $scope.updataPmt = function () {
        var pdata = {
            model: $scope.modelEdit,
            price_mpt: $scope.pricePmt
        };
        console.log(pdata);
        $http.post('api/update_promotion.php', pdata).success(function(res) {
            if (res == 'false') {
                console.log("Can not update promotion");
            } else {
                console.log("update Success");
                $('#editPanel').fadeOut();
                $('#productPanel').fadeIn();
                $route.reload();
            }
        });
    };
    $scope.removePmt = function (pd) {
        $scope.brandRemove = pd.brand_name;
        $scope.modelRemove = pd.model;
        $scope.pricerm = pd.price;
        $scope.pricepmtrm = pd.price_promotion;
        $('#productPanel').fadeOut();
        $('#editPanel').fadeOut();
        $('#removePanel').fadeIn();
    };
    $scope.pmtRemove = function () {
        pdata = {
            model: $scope.modelRemove
        };
        console.log(pdata);
        $http.post('api/remove_promotion.php', pdata).success(function(res) {
            if (res == 'false') {
                console.log("Can not remove promotion");
            } else {
                console.log("update Success");
                $('#removePanel').fadeOut();
                $('#productPanel').fadeIn();
                $route.reload();
            }
        });
    };
   
});