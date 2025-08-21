<<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
    // Invalidate the current session
    if (session != null) {
        session.invalidate();
    }
    
    // Clear any cookies if you're using them for authentication
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("staffSession") || cookie.getName().equals("JSESSIONID")) {
                cookie.setValue("");
                cookie.setPath("/");
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }
        }
    }
    
    // Redirect to login page
    response.sendRedirect("StaffLogin.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logging Out...</title>
</head>
<body>
    <div style="text-align: center; padding: 50px;">
        <h3>Logging out...</h3>
        <p>Please wait while we redirect you to the login page.</p>
    </div>
</body>
</html>
