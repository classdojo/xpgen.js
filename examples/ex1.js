var xpgen = require("../");

console.log(xpgen.find().contains("class", "test").and().gt("href", "hello").find("div").toString())