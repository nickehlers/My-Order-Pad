class exports.HomeView extends Backbone.View
  id: 'viewporter'

  render: ->
    $(@el).html require('./templates/home')
    this
