"use strict"

angular.module("frontApp")
  .factory "Api", ($http) ->

    host = "http://127.0.0.1:3000"
    #host = ""

    getPeople: ->
      $http.get(host + "/people")
        .success (data, status, headers, config) ->

    postPeople: (obj) ->
      $http.post(host + "/people.json", obj)
        .success (data, status, headers, config) ->

    deletePeople: (id) ->
      $http.delete(host + "/people/" + id + ".json")
        .success (data, status, headers, config) ->
