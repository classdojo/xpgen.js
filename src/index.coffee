ElementChain = require "./elementChain"

XPGen = class extends require("./base")

  ###
  ###

  _newChain: (nodeName) -> new ElementChain nodeName, @


module.exports = new XPGen()