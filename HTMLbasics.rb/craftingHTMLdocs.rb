#Identify patterns for Tags, Markup, and content
#Every web page youve  ever seen in a browser is the rendered output of HTML that was requested by a browser 

#You can't write in HTML: "print this line 3 times" etc 

#Tags:
#HTML consists of different markup elements which are comprised of markup that "wraps" content. If we wanted Hello World to appear as a paragraph we would use the p tag. 

<p> Hello World </p> 

#Attributes:
#We can add attributes inside the opening tag. Like the "a" element, which is used for links. Has a "href" attribute to specify the destination of the link: 

<a href="http://www.flatironschool.com">Flatiron School</a>

#Nesting of elements:
#We also frequently nest elements inside of each other. to have a link of displayed as a separate paragraph, we could nest an "a" element inside of a "p"

<p>This <a href="http://www.google.com">link</a> will be a part of a separate paragraph.</p>
#would print: "This link will be a part of a separate paragraph."

#Define the document type tag: <doctype>

#The HTML standard says that all HTML documemnts begin with a "doctype declaration" tag. It should go first 
#we can simply write  <!DOCTYPE html> at the top of our html files 
<!DOCTYPE html>
<html>
    <head>
        <!-- metadata about the HTML document as a whole -->
 
    </head>
 
    <body>
        <!-- content of our page will be here! -->
 
    </body>
</html>

#Headers:
#Goes from biggest <h1> to smallest <h6> 


