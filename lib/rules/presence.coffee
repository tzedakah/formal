class Presence
  constructor: (@object, @attribute) ->
    @self = Presence
    @self.message = "#{@attribute} is required."
    @ok = true

  run: ->
    unless @valid()
      @message = @self.message
      @ok = false
    @

  valid: ->
    @object[@attribute]? and @object[@attribute] isnt ''
    
module.exports = Presence
