class Numeric
  constructor: (@attribute) ->
    @self = Numeric
    @self.message = "{{=attribute}} is not a numeric."
    @

  run: ->
    @message = @self.message unless @valid()
    @

  valid: ->
    @self.condition(@attribute)
    
  @condition: (attr)->
    !isNaN(parseFloat(attr))

module.exports = Numeric
