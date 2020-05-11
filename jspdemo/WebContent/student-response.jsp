<html>
<head><title>STUDENT CONFIRMATION TITLE</title></head>
<body>

	The student is confirmed: ${param.firstName } ${param.lastName }<br>
	The student's country: ${param.country }<br>
	The student's gender: ${param.gender}<br>
	The student's favorite language: 
	<ul>
		<%
			String[] langs=request.getParameterValues("favouriteLanguage");
		
			for(String temp: langs){
				out.print("<li>" + temp+"</li>");
			}
		%>
	</ul>
</body>
</html>