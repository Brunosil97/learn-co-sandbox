#Identify CSS syntac:
p #selector {color #property : blue; #value}

#Identify CSS use formats:
#How do we apply CSS to an HTML page? By using one of three CSS use formats: Inline, Internal, and external 

#Inline includes the styles directly into the HTML element with the style attribute

<p style="Color: blue;"></p>
#This is generally not the best practive. It only affects that single element. If we want all paragraph elements on our page to appear blue, we would have to add that attribute to every element individually, which is inefficient and difficult to maintain into the future. It breaks the principle of separation od content and presentation

#Internal CSS is inside of style tags in the HTML documents head section
<html>
  <head>
    <style>
      p { color: blue; }
    </style>
  </head>
  <body>
 
  <p>This is a paragraph.</p>
 
  </body>
</html>
#This rule will display all paragraphs in this document as blue, which is a step up in scope from the inline styles that only apply to a single elements. But this applys to a single document. 

#If we want our CSS to carry across various pages, we can use an external style sheet.
<html>
  <head>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
 
  <p>This is a paragraph.</p>
 
  </body>
</html>
#With the link tag we can use the relation attribute to define the target as a style sheet and the link source our CSS file that contains all the CSS we want 

#ID and Class selectors:
#ID selectors target all elements with a specific ID attribute value. 

p#introduction {
  color: blue;
}

#In this case, the browser will look for a p element with the ID attribute "intoduction" and apply the CSS to that element. ID selectors are useful when you want to give a single element on the page a unique identity and set it apart from everything else.
#The class selectors target all elements with a class attribute value matching the selector name. We specify a class selector using the period symbol followed by the name value

p.alert {
  color: red;
}

#The difference between ID and Class, is that IDs are meant for one element on the page that has a unique identity where class selectors are meant to be spread throughout the page across multiple elements. 

#Compund selectors:
#Compound selectors let us apply the same CSS rules to multiple elements at once. If we want to make both h1 and h2 elements display green, we use both as selectors, separated with a comma

h1, h2 {
  color: green;
}

#Descendant selectors:
#Descendant selectors target elements that are descendants of the mathcing selector name, A descendant selector is indicated by a space in between one selector and another

article p {
  color: blue;
}

#Child selectors:
#The child selector targets all elements that are the new immediate children of a specified element 

article > p {
  color: blue;
}

#Only p tags one level down from article will display as blue.

#Adjacent sibling selector:
#Targets elements that appear directly after the matching selector name 

h3 + p {
  color: blue;
}
#will style the parragraph directlty following h3 element but not paragraphs that come after first 

#General sibling selector:
#The general sibling selector will style all matched elements after the preceding selector name 

h3 ~ p {
  color: red;
}
#all paragraphs that come after the h3 will receive styling 

#Universal:
#universal matches any elements and will apply to elements that are not targeted by other rules. It's indicated by the star symbol

* {
  color: yellow;
}
#will set the color of the text yellow for any element that hasn't had its color property specified elsewhere

#Attribute selector:
#Targets elements with a particular attribute

input[type="text"] {
  width: 200px;
}
#here we want to find input elements, but only those with a type value that matches "text" The browser will then apply the width we want

#Pseudo class selector:
#Based on a particular state of an element or relationship to other elements, USED with colon 

a:link {
  color: blue;
}
 
a:visited {
  color: purple;
}
#If the link is unvisited it will show up as blue, if its visited it will show as purple

#Hexadecimal color values:
#Hex colors begin with # and are followed by, generally, 6 numbers, but some are actually letters. The lowest number is 0 and the highest single digit number is f 

#RGB color values:
p {
  color: rgb(255, 255, 255);
}
#Here we set our p to the color white 

p {
  color: rgba(0, 0, 255, 0.5);
}
#adding an a for 'opacity' makes it transparent 