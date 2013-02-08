App.Router = Backbone.Router.extend
  
  routes:
    "": "index"

  #
  # If you require Google Analytics tracking for each
  # rendered page view, uncomment lines 11-18.
  #
  # initialize: ->
  #   @bind "all", @_trackPageview
  #
  # _trackPageview: ->
  #   url = Backbone.history.getFragment()
  #
  #   if _gaq?
  #     _gaq.push(["_trackPageview", "/#{url}"])

  # Function to render the view, and make it the
  # current view. This assists with garbage collection.
  showView: (view, renderedView) ->
    @currentView.close() if @currentView?

    if renderedView?
      $("#container").html(renderedView)
    else
      $("#container").html(view.render().el)

    @currentView = view

    view

  index: ->
    # Replace this with your real view.
    @showView(new App.SampleView)