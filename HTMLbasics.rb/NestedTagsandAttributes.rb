  #Assess HTML document structure
  #Whenever we nest an HTML tag inside of another tag, we indent the inner tag so that the overall tag hierarchy is clear. 
  <!DOCTYPE html>
<html>
  <head>
    <title>Web development course</title>
  </head>
  <body>
    <header>
    <!-- header element documentation: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/header -->
 
      <nav id="main-navigation">
      <!-- nav element documentation: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/nav -->
 
        <ul>
        <!-- ul element documentation: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ul -->
 
          <li><a href="/web">Introduction to the web</a></li>
          <!-- li element documentation: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/li -->
 
          <li><a href="/html">Learn HTML</a></li>
        </ul>
      </nav>
    </header>
  </body>
</html>

#Identify HTML tag attributes and their purposes:
#This is extra information we can add to a tag to identify, classify, style or modify the default behaviour of the lement the tag contains. 

 <p id='main_paragraph'>This element can be uniquely identified  using the 'main_paragraph' id HTML attribute</p>
 
  <p class='other_paragraphs'>This element belongs to a group of elements who share the 'other_paragraphs' HTML class attribute</p>
  <p class='other_paragraphs'>This element also belongs to a group of elements who share the 'other_paragraphs' HTML class attribute</p>