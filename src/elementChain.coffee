module.exports = class ElementChain extends require("./base")

  ###
  ###

  constructor: (nodeName, @parent) ->
    @_chain = nodeName
    @_index = []


  ###
  ###

  toString: () -> 
    console.log "G"
    chain = @parent.toString() 
    chain += @_chain + "[#{@_index.join(' ')}]"
    chain

  ###
  ###

  contains: (name, value) ->
    @_index.push "contains(#{name}, '#{value}')"
    @


  ###
  ###

  eq: (name, value) ->
    @op name, "=", value

  ###
  ###

  neq: (name, value) ->
    @op name, "!=", value

  ###
  ###

  gt: (name, value) ->
    @op name, ">", value

  ###
  ###

  lt: (name, value) ->
    @op name, "<", value

  ###
  ###

  gte: (name, value) ->
    @op name, ">=", value

  ###
  ###

  lte: (name, value) ->
    @op name, "<=", value

  ###
  ###

  op: (name, op, value) ->
    @_index.push "#{name}#{op}'#{value}'"
    @

  ###
  ###

  or: () ->
    @_index.push "or"
    @

  ###
  ###

  and: () ->
    @_index.push "and"
    @


  ###
  ###

  index: (value) ->
    @_index = [value]
    @

  ###
  ###

  _newChain: (nodeName, parent) -> new ElementChain nodeName, @


