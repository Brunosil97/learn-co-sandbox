#CSS - Cascading style sheets - is the language we use for styling web pages 
#CSS instructions live apart from the HTML elements and have a different look and feel (syntax)
#One of the most amazing displays of the power of CSS is the CSS Zen Garden where people take the exact same HTML pages and use CSS 

#Difference between HTML and CSS:
#HTML we focus on structure, hierarchy, and meaning, the "marking up" of context.
#CSS focuses more on the aesthetic quality of the page. 

#List the basic characteristics of CSS:
#There are 3 things to keep in mind:
#What is the specific HTML we want to style?
#What are the qualities we want to modify (e.g. the properties of text in a paragraph)?
#How do we want to modify the qualities of the element (e.g. font family, font colour, font size, line height, letter sopacing etc?)

#Once you've decided what to modify and how, we can start writing CSS rules 

#For example if you want the body of the page to have a black background, your selector syntax may be html or body. For anchors, your selector would be a:

/*
selects all anchor tag elements in the document (e.g. <a href="page-link.html">Page Link</a>)
*/
a
 
/*
selects all headers of type h3 in the document (e.g. <h3>Type selectors</h3>)
*/
h3


#The element type class is commonly used selector. Class selectors are used to select all elements that share a given class name. The class selector syntac is '.classname':

/*
select all elements that have the 'important-topic' classname (e.g. <h1 class='important-topic'>
and <h1 class='important-topic'>)
*/
.important-topic

#You can use the id selector to style elements. The id selector syntac is: #idvalue. 

/*
selects the HTML element with the id 'main-header' (e.g. <h1 id='main-header'>)
*/
#main-header

#Declare CSS properties and values:
#Each element has a list of qualities that can be styled. CSS "property" names identify those qualities. For text styling, examples of property names include text color, text-align and line-height
#CSS property values are directly related to property names. If we are working with the color property, the value could be names color such as red. 
#A CSS property name with a CSS property value is a CSS declaration. To apply a declaration like 'color: blue' to a HTML element you need to combine it with a CSS selector 

selector {
  color: blue;
}
/*
This is a css declaration for a selector
'color' is a property name and 'blue' is a css property value
!!!!! CSS declarations must end with a semi-colon (;) !!!!!
*/

/*
The CSS declaration block below:
* Will apply to all `h1` elements
* Will change the text color to blue
* Will set the font family to Georgia
*/
h1 {
  color: blue;
  font-family: Georgia;
}

