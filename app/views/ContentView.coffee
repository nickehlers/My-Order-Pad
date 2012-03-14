{OrderView} = require 'views/OrderView'
class exports.ContentView extends Backbone.View
    id: 'content'

    initialize: (collection) =>
        @template = require('./templates/content')
        @collection = collection

        @collection.bind('add',(item)=>
            @addOne( item )
        )

    render: ->
        $(@el).html( @template() )
        @addAll()
        @

  
    addAll: () =>
        #loop over collection and add each order
        @collection.each( (order) =>
            @addOne(order)
        )

    addOne: (model) =>
        #create an order view and append it to the body
        o = new OrderView({model: model})
        @$('#orderList').append o.render().el
        model.bind('remove', o.remove)
        o.bind('destroy', (model)=>
            @collection.remove( model )
        )
