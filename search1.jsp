<!DOCTYPE html>
<!--[if lt IE 8 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 8)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
   <script src="http://yui.yahooapis.com/3.3.0/build/yui/yui-min.js"></script>
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
 <style type="text/css">
/* custom styles for this example */
.dt-example {margin:1em;}

/* css to counter global site css */
.dt-example th {text-transform:none;}
.dt-example table {width:auto;}
.dt-example caption {display:table-caption;}
</style>
</head>

<body class="yui3-skin-sam  yui-skin-sam">

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
	           
	            <li><a href="aboutme.html">About Me</a></li>
            </ul> <!-- end #menu -->
 <!-- end #menu -->

         </nav>

      </header>


      <div id="content" class="container">

         

         
				      <h4><a href="#">Search Results:</a></h4>

	  
<div id="presorted" class="dt-example"></div>

<script type="text/javascript">
YUI({ filter: 'raw' }).use("datatable-sort", function (Y) {
    var cols = [
        {key:"Id", label:"Id", sortable:true},
        {key:"First Name", label:"First Name", sortable:true},
        {key:"Last Name", label:"Last Name", sortable:true},
        {key:"Skills", label:"Skills", sortable:true},
        {key:"Work Ex",formatter: "<a href='work1.jsp?id={value}'>View</a>",allowHTML: true, label:"Work Ex", sortable:true},
     
    ],
    presortedData = [
    <c:forEach var="row" items="${cands}">
    
    {Id:"${row.getResID()}",'First Name':"${row.getFname()}",'Last Name':"${row.getLname()}",'Skills':"${row.getSkills()}",'Work Ex':"${row.getPosId()}"},    
    </c:forEach>    
        ],

    
    dt2 = new Y.DataTable.Base({columnset:cols, recordset:presortedData, summary:"Skill list", caption:"This table is sortable"}).plug(Y.Plugin.DataTableSort, {lastSortedBy:{key:"Company",dir:"asc"}}).render("#presorted");


});

</script>
         <!-- end #main -->


      </div>

   </div> <!-- end content-wrap -->

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
   
   <script src="js/custom.js"></script>  

</body>

</html>