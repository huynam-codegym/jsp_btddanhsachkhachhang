<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.Client" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 8/19/2021
  Time: 3:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    List<Client> clientsList = new ArrayList<>();
    Client client1 = new Client("Huy nam","2000/05/10","Nam Định","http://webcoban.vn/image/cat-2.jpg");
    Client client2 = new Client("Nhat anh","1999/12/25","Bình thuan","http://webcoban.vn/image/sumo.jpg");
    Client client3 = new Client("hoang hai","1989/10/22","ha noi","http://webcoban.vn/image/hugo.jpg");
    Client client4 = new Client("danh huu","2005/11/21","quang ninh","http://webcoban.vn/image/hugo.jpg");
    Client client5 = new Client("khanh van","2003/12/09","lang son","http://webcoban.vn/image/hugo.jpg");
    clientsList.add(client1);
    clientsList.add(client2);
    clientsList.add(client3);
    clientsList.add(client4);
    clientsList.add(client5);
    request.setAttribute("danhsach",clientsList);
  %>

  <table border="1" width="80%"  >
    <tr>
      <th>name</th>
      <th>Age</th>
      <th>Address</th>
      <th>Picter</th>
    </tr>
    <c:forEach items="${danhsach}" var="a">
      <tr>
        <td>${a.name}</td>
        <td>${a.age}</td>
        <td>${a.address}</td>
        <td><img src="${a.img}" alt="" width="150px" height="100px"></td>
      </tr>
    </c:forEach>
  </table
  </body>
</html>
