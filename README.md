XPath generation library

## Motification

To be used with selenium tests

### Examples

```javascript
var xpgen = require("xpgen");

// //*[@id='container']
var path;

path = xpgen.find().eq("@id","container").toString(); 

// //div[@id='container']//*[contains(@class, 'row')]
path = xpgen.find("div").eq("@id","container").find().contains("@class", "row").toString();

// //*[contains(text(), "hello")] 
path = xpath.find().contains("text()","hello").toString(); 

// //a[href='http://classdojo.com']/img[0]
path = xpath.find("a").eq("href", "http://classdojo.com").element("img").toString(); 
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


### .index(value)

Sets the index for the element to search. 

```javascript
xpgen.element("div", 5); // div[5]
xpgen.element("div").index(5); // div[5] 
```

### .contains(attribute, value)

```javascript
xpgen.element("div").contains('text()', "tacos") // div[contains(text(), "tacos")]
```

### .eq(attribute, value)

Looks for an attribute with a value **equal** to the given one

```javascipt
xpgen.element("div").eq("@data-age", 50); // div[@data-age='50']
```

### .neq(attribute, value)

Looks for an attribute with a value **not equal** to the given one

```javascipt
xpgen.element("div").eq("@data-age", 50); // div[@data-age!='50']
```

### .gt(attribute, value)

Looks for an attribute with a value **greater than** to the given one

```javascipt
xpgen.element("div").gt("@data-age", 50); // div[@data-age>'50']
```

### .lt(attribute, value)

Looks for an attribute with a value **less than** to the given one

```javascipt
xpgen.element("div").gt("@data-age", 50); // div[@data-age<'50']
```

### .gte(attribute, value)

Looks for an attribute with a value **greater than or equal to** to the given one

```javascipt
xpgen.element("div").gt("@data-age", 50); // div[@data-age>='50']
```

### .lte(attribute, value)

Looks for an attribute with a value **less than or equal to** to the given one

```javascipt
xpgen.element("div").gt("@data-age", 50); // div[@data-age<='50']
```

### .or()


```javascipt
// div[@data-age='50' or @data-age='60']
xpgen.element("div").eq("@data-age", 50).or().eq("@data-age", "60"); 
```

### .and()

```javascipt
// div[contains(@class, 'account') and href='http://site.com/account']
xpgen.element("a").contains("class", "account").and().eq("href", "http://site.com/account"); 
```


## AttrChain API

### .contains(value)

```javascript
xpgen.element("div").attr("href").eq("http://classdojo.com")¡¡
```

