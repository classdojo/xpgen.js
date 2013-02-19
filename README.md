XPath generation library


### Exaples

```javascript
var xpgen = require("xpgen");

var path = xpgen.find().id("container").toString(); // //*[@id='container']
path = xpgen.find("div").id("container").find().class("row").toString(); // //div[@id='container']//*[contains(@class, 'row')]
path = xpath.find().text().contains("hello").toString(); // //*[contains(text(), "hello")]
path = xpath.find("a").attr("href", "http://classdojo.com").element("img").toString(); // //a[href='http://classdojo.com']/img
```
