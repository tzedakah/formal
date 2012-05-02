class Presence
  constructor: (@attribute) ->
    @self = Presence
    @self.message = "{{=name}} is required."
    @status = null

  run: ->
    @message = @self.message unless @valid()
    @

  valid: ->
    @self.condition(@attribute)
    
  @condition: (attr)->
    attr != ''

module.exports = Presence
