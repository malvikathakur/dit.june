<html>
<head>
<title>CONFIRMATION</title>
</head>

<%

//READ FORM DATA
String favLang=request.getParameter("favouriteLanguage");


//CREATE THE COOKIE
	Cookie theCookie= new Cookie("myApp.favouriteLanguage",favLang);

//SET THE LIFESPAN
	theCookie.setMaxAge(60*60*24*365);

//send the cookie to the browser
	response.addCookie(theCookie);
%>
<body>
Thanks we set your favourite language to: ${param.favouriteLanguage}
<br>
<a href="cookies-homepage.jsp">RETURN TO THE HOMEPAGE.</a>
</body>

</html>