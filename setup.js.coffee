# For garbage collection
Backbone.View.prototype.close = ->
  @beforeClose() if @beforeClose?

  @remove()
  @unbind()

# Namespace
window.App = window.App || {}

# Templates
App.T = {}