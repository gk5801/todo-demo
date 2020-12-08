<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<body>

<form action = "todo-demo.jsp">
 Add new item <input type="text" name="theItem" />
 <input type="submit" value="submit" />
</form>
<%
   List<String> items = (List<String>) session.getAttribute("myToDoList");
if(items == null)
{
	items = new ArrayList<String>();
	session.setAttribute("myToDoList",items);
}

String theItem = request.getParameter("theItem");

if( (theItem != null) && (!theItem.trim().equals("")) )
	{ items.add(theItem); }
%>

<b>To do List Items </b><br/>
<ol>
<%
  for(String temp : items)
  {
	  out.println("<li>" + temp +"</li>");
  }
%>
</ol>

</body>
</html>