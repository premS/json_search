<!DOCTYPE html>
<!--[if lt IE 8 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 8)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

   <!--- Basic Page Needs
   ================================================== -->
	<meta charset="utf-8">
	<title>Resumator</title>
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- CSS
   ================================================== -->
	<link rel="stylesheet" href="css/base.css">
	<link rel="stylesheet" href="css/layout.css">

	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
   <script src="http://yui.yahooapis.com/3.14.1/build/yui/yui-min.js"></script>
</head>

<body>

   <div id="content-wrap">

      <!-- Header
      ================================================== -->
      <header class="container">
<h1><a href="index.htm">Resumator</a></h1>
            <h3>Indeed-Test Project</h3>


         <nav id="nav-wrap" class="cf">

                        <ul id="menu">
	            <li><a href="index.jsp">Home</a></li>
	            <li class="current"><a href="search.do">Search</a></li>

	            <li><a href="aboutme.htm">About Me</a></li>
            </ul> <!-- end #menu -->
 <!-- end #menu -->

         </nav>

      </header>


      <div id="content" class="container">

         

         <!-- main
         ================================================== -->
         <section class="main grid9 first">

           

        

		   	 
				      <h4><a href="#">Search by Skill:</a></h4>
		   		  <form method="post" action="search_skill.do" >
                    <div id="demo" class="yui3-skin-sam"><input type="text" id="url" name="url" class="inputtext"/></div>
				<script>
YUI().use('autocomplete', 'autocomplete-filters', 'autocomplete-highlighters', function (Y) {
  var states = [
<%=request.getAttribute("name")%>
  ];

  Y.one('#url').plug(Y.Plugin.AutoComplete, {
    resultFilters    : 'phraseMatch',
    resultHighlighter: 'phraseMatch',
    source           : states
  });
});
</script>
<input type="submit" value="Search">
</form>

          


         


         </section> <!-- end #main -->

         <!-- sidebar
         ================================================== -->
         <!-- end #sidebar -->

      </div>

      <!-- search section
      ================================================== -->
     


   </div> <!-- end content-wrap -->

   <!-- footer
   ================================================== -->
 

     

<footer class="container">
  <div id="footer-bottom" class="grid12 first">

	      <p>
         2013 Copyright Info &nbsp; &nbsp; &nbsp;
		   Design by <a href="http://www.styleshout.com/">styleshout</a>
         </p>

         <!-- Back To Top Button -->
         <div id="go-top"><a href="#" title="Back to Top">Go To Top</a></div>

      </div>
     </footer>

      <!-- footer-bottom
      ================================================== -->
     

  

   <!-- Java Script
   ================================================== -->
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
   <script>window.jQuery || document.write('<script src="js/jquery-1.10.2.min.js"><\/script>')</script>

   <script src="js/custom.js"></script>  

</body>

</html>