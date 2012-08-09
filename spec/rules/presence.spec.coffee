Presence = require "../../lib/rules/presence"

describe "Presence", ->
  validator = null
  object = null

  beforeEach ->
    object = 
      name: ""
    validator = new Presence object,"name"

  it "invalidates empty attributes", ->
    expect(validator.valid()).toBeFalsy()

  it "validates good attributes", ->
    object.name = "Something not empty"
    expect(validator.valid()).toBeTruthy()

  it "invalidates null attributes", ->
    object.name = null
    expect(validator.valid()).toBeFalsy()

  it "returns a message", ->
    expect(validator.run().message).toBeDefined()
