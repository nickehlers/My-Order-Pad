class exports.OrderView extends Backbone.View
    className: 'order row-fluid'

    events:
        "click .remove": "onRemoveClick"
        "focusout input[name=name]": "onBlur"
        "click input[type=checkbox]": "onChange"
        "click .topping_icon": "onToppingClick"

    initialize: ()->
        @template = require('./templates/order')

    render: =>
        $(@el).html @template( {model: @model} )
        this

    remove: =>
        console.log('remove in view', $(@el) )
        $(@el).remove();

    onRemoveClick: =>
        @trigger('destroy', @model)

    onBlur: (e)->
        console.log("Setting...", $(e.srcElement).attr('name'), $(e.srcElement).val() )
        d = []
        d[$(e.srcElement).attr('name')] = $(e.srcElement).val()
        @model.set( d )

    onChange: (e)-> 
        d = []
        d[$(e.srcElement).attr('name')] = $(e.srcElement).is(':checked')
        @model.set( d )

    onToppingClick: (e)->
        console.log("topping clicked",this, e)
        $(e.currentTarget).toggleClass('selected')