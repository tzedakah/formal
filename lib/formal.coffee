_ = require "underscore"

class Formal
  @validate: ->
    for rule in @rules
      rule.run()

    erroneous = _.filter @rules, (rule) -> rule.ok is false 

    @valid = erroneous.length is 0

  @validates: (rule,attribute) ->
    @rules.push new Formal[rule] @,attribute

  @is_included_into: (object) ->
    object.__proto__.validate = Formal.validate
    object.__proto__.validates = Formal.validates

    object.rules = []

  @extends: (klass) ->
    klass.validate = Formal.validate

module.exports = Formal
