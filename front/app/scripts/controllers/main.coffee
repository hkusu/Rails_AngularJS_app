"use strict"

angular.module("frontApp")
  .controller "MainCtrl", ["$scope", "Api", ($scope, Api) ->

    clearInput = ->
      $scope.new_name = ""
      $scope.new_age = ""
      $scope.new_memo = ""

    clearInput()

    Api.getPeople().then (res) ->
      $scope.results = res.data

    $scope.doPost = ->

      obj =
        "person[name]": $scope.new_name
        "person[age]": $scope.new_age
        "person[memo]": $scope.new_memo

      Api.postPeople(obj).then (res) ->
        $scope.results.push res.data
        clearInput()

    $scope.doDelete = (index) ->
      Api.deletePeople($scope.results[index].id).then (res) ->
        $scope.results.splice index, 1
]
