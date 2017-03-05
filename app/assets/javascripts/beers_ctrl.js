(function() {
  "use strict";

  angular.module("app").controller("ctrlbeers", function($scope, $http) {

    $scope.setup = function() {
      $http.get("beers.json").then(function(response) {
        $scope.beers = response.data;
      });
    }

    $scope.addBeer = function(name, yeast, alcohol, blg, hop, ibu) {
      var beer = {
        name: name, 
        yeast: yeast, 
        alcohol: alcohol, 
        blg: blg,
        hop: hop, 
        ibu: ibu
      };
      $http.post("beers.json", beer).then(function(response) {
        $scope.beers.push(response.data);
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

    $scope.toggleOrder = function(attribute) {
      $scope.orderAttribute = attribute;
    }
  });
})();