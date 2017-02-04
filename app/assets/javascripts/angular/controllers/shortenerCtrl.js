app.controller('shortenerCtrl', ['$scope', 'urlShortenerFactory', function($scope, urlShortenerFactory) {
  
  $scope.webAddresses = [
    { url: 'http://www.google.co.uk', shortForm: 'localhost:300/12lk'},
    { url: 'http://www.google.co.uk', shortForm: 'localhost:300/12lk'},
    { url: 'http://www.google.co.uk', shortForm: 'localhost:300/12lk'},
    { url: 'http://www.google.co.uk', shortForm: 'localhost:300/12lk'},
    { url: 'http://www.google.co.uk', shortForm: 'localhost:300/12lk'}
  ];
  
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