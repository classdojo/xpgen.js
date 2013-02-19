XPath generation library

## Motification

To be used with selenium tests

### Examples

```javascript
var xpgen = require("xpgen");

var path = xpgen.find().id("container").toString(); // //*[@id='container']
path = xpgen.find("div").id("container").find().class("row").toString(); // //div[@id='container']//*[contains(@class, 'row')]
path = xpath.find().text().contains("hello").toString(); // //*[contains(text(), "hello")]
path = xpath.find("a").attr("href", "http://classdojo.com").element("img").toString(); // //a[href='http://classdojo.com']/img[0]
```

## API

### Chain .find(nodeName = "*")

Starts a chain with the given node name

```javascript
console.log(xpgen.find().toString()); // //*
console.log(xpgen.find("div").toString()); // //div

```

### Chain .element(nodeName, index = 0)

```javascript
xpgen.element("div"); // div[0]
xpgen.element("div", 5); // div[5]
xpgen.element("div", "contains(@class, 'fish')"); // div[contains(@class, 'fish')]
```

## Chain API

### TextChain .text()

returns a new text chain


### .contains(attribute, value)

```javascript
xpgen.element("div").contains('text()', "tacos") // div[contains(text(), "tacos")]
```

## TextChain API

### .contains()

