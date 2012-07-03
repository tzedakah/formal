Presence = require "../../lib/rules/presence"

describe "Presence", ->
  validator = null

  beforeEach ->
    name = ""
    validator = new Presence(name)

  it "invalidates empty attributes", ->
    expect(validator.valid()).toBeFalsy()

  it "returns a message", ->
    expect(validator.run().message).toBeDefined()
