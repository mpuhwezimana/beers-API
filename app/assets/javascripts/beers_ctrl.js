(function() {
  "use strict";

  angular.module("app").controller("ctrlbeers", function($scope, $http) {

    $scope.setup = function() {
      $http.get("beers.json").then(function(response) {
        $scope.beers = response.data;
      });
    }    
    $scope.toggleInfo = function(beer) {
      beer.visibility = !beer.visibility;
    }
    $scope.deleteBeer = function(index) {
      $http.delete("/beers/#{id}.json").then(function(response) {
      $scope.beers.splice(index, 1);
      })
    }
  });
})();