<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%
         Cookie cookie = null;
         Cookie[] cookies = null;

         // Get an array of Cookies associated with the this domain
         cookies = request.getCookies();

         if( cookies != null ) {
            out.println("<h2> Found Cookies Name and Value</h2>");
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
               if((cookie.getName( )).compareTo("mean") == 0 ) {
                  cookie.setMaxAge(0);
                  response.addCookie(cookie);
                  out.print("Deleted cookie: " +
                  cookie.getName( ) + "<br/>");
               }
               out.print("Name : " + cookie.getName( ) + ", ");
               out.print("Value: " + cookie.getValue( )+" <br/>");
            }
         } else {
            out.println(
            "<h2>No cookies founds</h2>");
         }
      %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>