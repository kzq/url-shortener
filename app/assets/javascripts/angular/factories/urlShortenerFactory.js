app.factory('urlShortenerFactory', ['$resource', function($resource) {
  return $resource('/api/shortened_urls/:id.json', { id: '@id' });
}]);