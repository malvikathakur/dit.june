<%@ page import="java.util.*" %>
<html>
<body>
<!-- step1 make html form -->

<form action="todolist.jsp">

Add new item <input type="text" name="theItem" /><br>
<input type="submit" value="Submit"/><br>
</form>
<!-- step2 add items to the list -->
<%
	//get the to do items from the session
	List<String> items=(List<String>) session.getAttribute("myTODOLIST");

	//if to do items does not exist then create a new one
	if(items==null){
		items=new ArrayList<String>();
		session.setAttribute("myTODOLIST",items);
	}
	
	//see if there is items to add in the list
	String theItem =request.getParameter("theItem");
	if(theItem!=null){
		items.add(theItem);
	}
%>
<!-- step3 display all todo items from the list -->

<hr>
<b>TO DO LIST:</b>
<ol>
<%
for(String temp:items){
	out.println("<li>"+temp);
}

%>
</ol>

</body>
</html>