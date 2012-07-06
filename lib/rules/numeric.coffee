class Numeric
  constructor: (@attribute) ->
    @self = Numeric
    @self.message = "{{=attribute}} is not a numeric."
    @ok = true
    @

  run: ->
    unless @valid()
      @message = @self.message
      @ok = false
    @

  valid: ->
    @self.condition(@attribute)
    
  @condition: (attr)->
    !isNaN(parseFloat(attr))

module.exports = Numeric
