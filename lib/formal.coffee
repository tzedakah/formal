class Formal
  @validators: [ "presence", "numeric" ]
  
  @validate: ->
    @valid = true

  @is_included_into: (klass) ->
    klass.prototype.validate = Formal.validate

  @extends: (klass) ->
    klass.validate = Formal.validate

module.exports = Formal
