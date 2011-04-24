<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>${recipe.title}</title>
</head>
<body>
	<%
     UserService userService = UserServiceFactory.getUserService();
     if (!userService.isUserLoggedIn()) {
   %>
	Please
	<a href="<%=userService.createLoginURL("/newlogin.jsp")%>">log in</a>
	<% } else { %>
	Welcome,
	<%= userService.getCurrentUser().getNickname(); %>! (
	<a href="<%=userService.createLogoutURL("/")%>">log out</a>)
	<%
     }
   %>
</body>
</html>
