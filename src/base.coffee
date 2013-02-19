module.exports = class

  ###
  ###

  find: (nodeName = "*", index = 0) -> @_newChain("//#{nodeName}").index(index)

  ###
  ###

  element: (nodeName = "*", index = 0) -> @_newChain("/#{nodeName}").index(index)

  ###
  ###

  toString: () -> ""

  ###
  ###

  _newChain: (nodeName) ->
    # OVERRIDE ME


