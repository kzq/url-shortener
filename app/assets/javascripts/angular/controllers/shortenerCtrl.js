app.controller('shortenerCtrl', ['$scope', 'urlShortenerFactory', function($scope, urlShortenerFactory) {
  $scope.webAddresses = urlShortenerFactory.query();
  
  $scope.addUrl = function() {
    urlShortenerFactory.save($scope.webAddressUrl,
      function(response, _headers) {
        $scope.webAddresses.push(response);
      },
      function(response) {
        alert('Errors: ' + response.data.errors.join('. '));
      }
    );
  };
}]);