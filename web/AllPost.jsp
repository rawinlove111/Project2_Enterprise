<%-- 
    Document   : AllPost
    Created on : Aug 8, 2015, 10:44:55 PM
    Author     : Thang
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Posts</title>
    </head>
    <body>
        <div style="width: 1200px; margin-left: auto; margin-right: auto;">
            <table cellpadding="10">
                <tr>
                    <th>Id</th>
                    <th>Firstname</th>
                    <th>Lastname</th>
                    <th>Sex</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Age</th>
                    <th>Zipcode</th>
                    <th>City</th>
                    <th>Address</th>
                    <th>PhoneNo.</th>
                    <th>Eth.</th>
                    <th>Degree</th>
                    <th>Is Inter.</th>
                    <th>Status</th>
                    

                    <th></th>
                </tr>
                <c:forEach items="${Students}" var="p">
                    <tr>
                        <td>${p.getId()}</td>
                        <td>${p.getFname()}</td>
                        <td>${p.getLname()}</td>
                        <td>${p.getSex()}</td>
                        <td>${p.getEmail()}</td>
                        <td>${p.getPassword()}</td>
                        <td>${p.getDob()}</td>
                        <td>${p.getZipcode()}</td>
                        <td>${p.getCity()}</td>
                        <td>${p.getAddress()}</td>
                        <td>${p.getPhonenum()}</td>
                        <td>${p.getEthnicity()}</td>
                        <td>${p.getIsgraduate()}</td>
                        <td>${p.getIsinternational()}</td>
                        <td>${p.getStatus()}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
