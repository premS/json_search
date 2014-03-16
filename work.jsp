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

           

        

		   	 
				      <h4><a href="#">${nam}'s Work Experience:</a></h4>
	 
    <br>
    

<script type='text/javascript' src='https://www.google.com/jsapi'></script>
    <script type='text/javascript'>
      google.load('visualization', '1', {packages:['table']});
      google.setOnLoadCallback(drawTable);
      function drawTable() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Name');
        data.addColumn('string', 'Title');
        data.addColumn('string', 'Company');
        data.addColumn('string', 'Time Period');
        data.addRows([
                      <c:forEach var="row" items="${work}">

                      ['${row.getTitle()}','${row.getTitle()}',' ${row.getCompany()}','${row.getDateRange()}'], 
                      </c:forEach>  

        ]);

        var table = new google.visualization.Table(document.getElementById('table_div'));
        table.draw(data, {showRowNumber: true});
      }
    </script>
 <div id='table_div'></div>
 
<script type="text/javascript" src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization',
       'version':'1','packages':['timeline']}]}"></script>
<script type="text/javascript">

google.setOnLoadCallback(drawChart);
function drawChart() {
  var container = document.getElementById('example2.2');
  var chart = new google.visualization.Timeline(container);
  var dataTable = new google.visualization.DataTable();
  dataTable.addColumn({ type: 'string', id: 'Name' });
  dataTable.addColumn({ type: 'date', id: 'Start' });
  dataTable.addColumn({ type: 'date', id: 'End' });
  dataTable.addRows([

                     <c:forEach var="row" items="${work}">
                 ["${row.getTitle()} - ${row.getCompany()}",new Date("${row.getStartYear()},${row.getStartMonth()},1"),new Date("${row.getEndYear()},${row.getEndMonth()},1")], 
  </c:forEach>  

   ]);

  var options = {
    timeline: { showRowLabels: false }
  };

  chart.draw(dataTable, options);
}
</script>
<br>
<div id="example2.2" style="width:1200px;height:350px; "></div>
    <h4><a href="#">${nam}'s Education:</a></h4>
	 <script type='text/javascript'>
      google.load('visualization', '1', {packages:['table']});
      google.setOnLoadCallback(drawTable);
      function drawTable() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'School Name');
        data.addColumn('string', 'Field');
        data.addColumn('string', 'Degree');
        data.addColumn('string', 'Time Period');
        data.addRows([
                      <c:forEach var="row1" items="${edu}">
                      ["${row1.getSchool()}","${row1.getField()}"," ${row1.getDegree()}","${row1.getDateRange()}"], 
                      </c:forEach>  
        ]);
        var table = new google.visualization.Table(document.getElementById('table_div1'));
        table.draw(data, {showRowNumber: true});
      }
    </script>
 <div id='table_div1'></div>


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