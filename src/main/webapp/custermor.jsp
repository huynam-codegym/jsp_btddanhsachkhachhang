<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 8/20/2021
  Time: 2:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    class Customer{
        private  String name;
        private  String dateofBirth;
        private  String addres;

        public Customer() {
        }

        public Customer(String name, String dateofBirth, String addres) {
            this.name = name;
            this.dateofBirth = dateofBirth;
            this.addres = addres;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getDateofBirth() {
            return dateofBirth;
        }

        public void setDateofBirth(String dateofBirth) {
            this.dateofBirth = dateofBirth;
        }

        public String getAddres() {
            return addres;
        }

        public void setAddres(String addres) {
            this.addres = addres;
        }
    }
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("nam","11/05/2021","quang ninh"));
    customers.add(new Customer("ham","11/05/2021","quang ninh"));
    customers.add(new Customer("nam","11/05/2021","quang ninh"));
    request.setAttribute("nam",customers);
%>
</body>

<table>
    <tr>
        <td>ten</td>
        <td> que quan</td>
        <td> dia chi</td>
    </tr>
   <c:forEach items="${nam}" var="customers">
       <tr>
           <td>  ${c.name} </td>
           <td>  ${c.dateofBirth} </td>
           <td>  ${c.naddres} </td>
       </tr>
   </c:forEach>
</table>
</html>
