"use strict"

angular.module("frontApp", [
  "ngSanitize",
  "ngRoute"
]).config(["$routeProvider", ($routeProvider) ->
    $routeProvider
      .when "/",
        templateUrl: "views/main.html"
        controller: "MainCtrl"
      .otherwise
        redirectTo: "/"
]).config(["$httpProvider", ($httpProvider) ->

    $httpProvider.defaults.transformRequest = (data) ->
      return data if data is `undefined`
      $.param data

    $httpProvider.defaults.headers.post = "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
])
