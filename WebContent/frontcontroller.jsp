<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Entering Front Controller </h1>
        <ul> 
            <li> Time : <%= new Date()%> </li>
            <li> Value of action is ${param.action} </li> 
        </ul>
        <%
            int c = 1;
            String str = request.getParameter("action");
            if (str != null) {
                try {
                    c = Integer.parseInt(str);
                } catch (Exception e) {
                    out.println(e);
                }
            }
        %>
        <% if (c == 1) {%> 
               <jsp:include page="one.jsp"/>
        <% }
           if (c == 2) {%> 
               <jsp:include page="second.jsp"/>
        <%}
           if (c == 3) {%> 
               <jsp:include page="three.jsp"/>
        <%}%>
        <h1> Leaving Front Controller </h1>
    </body>
</html>

