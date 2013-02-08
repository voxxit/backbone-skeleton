App.SampleView = Backbone.View.extend

  template: _.template(App.T.SampleView)

  events:
    "click button": "function1"

  initialize: ->
    _.bindAll(@, @function1, @function2)

  render: ->
    $(@el).html(@template())

    @

  function1: (e) ->

  function2: ->