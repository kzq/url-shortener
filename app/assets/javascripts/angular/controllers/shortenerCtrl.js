app.controller("shortenerCtrl",  ['$scope', function($scope) {
  $scope.webAddresses = [
    { url: 'http://www.google.co.uk', shortForm: 'localhost:300/12lk'},
    { url: 'http://www.google.co.uk', shortForm: 'localhost:300/12lk'},
    { url: 'http://www.google.co.uk', shortForm: 'localhost:300/12lk'},
    { url: 'http://www.google.co.uk', shortForm: 'localhost:300/12lk'},
    { url: 'http://www.google.co.uk', shortForm: 'localhost:300/12lk'}
  ];
  
  $scope.addUrl = function() {
    
  };
}]);
