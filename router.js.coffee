Marriott.Router = Backbone.Router.extend
  
  routes:
  
    "": "index"

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
    # ...