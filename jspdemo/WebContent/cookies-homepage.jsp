<html>
<head>
<title>HOMEPAGE</title></head>
<body>
<h3>PORTAL TRAINING</h3>

<!-- READ THE FAVOURITE PROGRAMMING LANGUAGE COOKIE -->
<%

//the default if there are no cookies
String favLang="Java";

//get the cookies from the browser
Cookie[] theCookies=request.getCookies();

//find our favourite language cookies
if(theCookies !=null){
	for(Cookie tempCookie: theCookies){
		if("myApp.favouriteLanguage".equals(tempCookie.getName())){
			favLang= tempCookie.getValue();
			break;
		}
	}
}


%>
<!-- now show a personalized page...use favLang variable -->
<!-- show new books for this lang -->
<h4>New books for: <%=favLang %></h4>
<ul>

<li>blah blah blah
<li>blah blah blah
<li>blah blah blah


</ul>
<h4>Latest news report for: <%=favLang %></h4>
<ul>

<li>blah blah blah
<li>blah blah blah
<li>blah blah blah
</ul>

<h4>Hot jobs for: <%=favLang %></h4>
<ul>
<li>blah blah blah
<li>blah blah blah
<li>blah blah blah
</ul>


<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>
</body></html>