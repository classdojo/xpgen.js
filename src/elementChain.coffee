module.exports = class ElementChain extends require("./base")

  ###
  ###

  constructor: (nodeName, @parent) ->
    @_chain = nodeName
    @_search = []


  ###
  ###

  toString: () -> 
    chain = @parent.toString() 

    if @_search.length
      index = @_search.join(' ')
    else 
      index = @_index

    chain += @_chain + "[#{index}]"
    chain

  ###
  ###

  contains: (name, value) ->
    @_addSearch "contains(#{name}, '#{value}')"


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
    @_addSearch "#{name}#{op}'#{value}'"

  ###
  ###

  or: () ->
    @_addSearch "or"

  ###
  ###

  and: () ->
    @_addSearch "and"


  ###
  ###

  index: (value) ->
    @_search = []
    @_index = value
    @

  ###
  ###

  _newChain: (nodeName, parent) -> new ElementChain nodeName, @


  ###
  ###

  _addSearch: (search) ->
    @_search.push search
    @




