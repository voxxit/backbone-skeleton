#= require './lib/jquery'
#= require './lib/underscore'
#= require './lib/backbone'
#
#= require './setup'
#
#= require_tree './templates'
#= require_tree './models'
#= require_tree './collections'
#= require_tree './views'
#
#= require './router'

$ ->

  # Initialize views & router
  App.router = new App.Router

  Backbone.history.start()