Formal = require "../lib/formal"
Formal.Presence = require "../lib/rules/presence"

describe "Formal", ->
  Class = null
  object = null

  beforeEach ->
    class Class
      constructor: (@attribute) ->

  describe "given an object", ->
    beforeEach ->
      object = new Class
      Formal.is_included_into object

    it "is included in an object", ->
      expect(object.validate).toBeDefined()

    it "allows to set validations", ->
      object.validates "Presence", "attribute"
      expect(object.rules.length).toEqual 1

    it "validates an object with no validations", ->
      object.validate()
      expect(object.valid).toBeTruthy()

    it "validates an object with a validation", ->
      object.validates "Presence", "attribute"
      object.validate()
      expect(object.valid).toBeFalsy()

  describe "given a class", ->
    beforeEach ->
      Formal.extends Class

    it "extends a object", ->
      expect(Class.validate).toBeDefined()

