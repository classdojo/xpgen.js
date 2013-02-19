module.exports = class ElementChain extends require("./base")

  ###
  ###

  constructor: (@_nodeName, @parent) ->
    @_search = []


  ###
  ###

  toString: () -> 
    chain = @parent.toString() 

    if @_search.length
      index = @_search.join(' ')
    else 
      index = @_index

    chain += @_nodeName + "[#{index}]"
    chain

  ###
  ###

  contains: (name, value) ->
    @_addSearch "contains(#{name},'#{value}')"


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
   registers this chain to the 
  ###

  register: (name) ->
    @root().register name, @
    @


  ###
  ###

  root: () ->

    p = @parent
    while p.parent
      p = p.parent

    return p

  ###
   clones this chain
  ###

  clone: () ->
    chain = new ElementChain @_nodeName, @parent
    chain._search = @_search.concat()
    chain._index = @_index
    chain

  ###
  ###

  _newChain: (nodeName, parent) -> new ElementChain nodeName, @


  ###
  ###

  _addSearch: (search) ->
    @_search.push search
    @




