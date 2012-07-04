class Presence
  constructor: (@object, @attribute) ->
    @self = Presence
    @self.message = "#{@attribute} is required."
    @status = null

  run: ->
    @message = @self.message unless @valid()
    @

  valid: ->
    @object[@attribute]? and @object[@attribute] isnt ''
    
module.exports = Presence
