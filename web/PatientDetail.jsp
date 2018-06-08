<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
    <link href="css/indexstyle.css" type="text/css" rel="stylesheet">
    <link href="css/modern-business.css" type="text/css" rel="stylesheet">

   
                    
                    <form  class="" method="post" action="PatientDetail" style="color:#eeeeee; width:75%; margin-left: auto; margin-right: auto;">
                        <a href="PatientDetail.jsp"></a>
                        <div class="col-sm-12">
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>First Name</label>
                                    <input type="text" name="fname" placeholder="Enter First Name Here.." value="${S.getFname()}" class="form-control">
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Last Name</label>
                                    <input type="text" name="lname" placeholder="Enter Last Name Here.." value="${S.getLname()}" class="form-control">
                                </div>
                                <div class="col-sm-4 form-group">
                                    <label>Email Address (Use as username)</label>
                                    <input name="email" type="text" placeholder="Enter Email Address Here.." value="${S.getEmail()}" class="form-control">
                                </div>
                                <div class="col-sm-4 form-group">
                                    <label>Password</label>
                                    <input name="password" type="text" placeholder="Enter Password Here.." value="***" class="form-control">
                                </div>

                                <div class="col-sm-4 form-group">
                                    <label>Phone Number</label>
                                    <input name="phonenum" type="text" placeholder="Enter Phone Number Here.." value="${S.getPhonenum()}" class="form-control">
                                </div>		


                            </div>


                            <div class="row">
                                <div class="col-sm-4 form-group">
                                    <label>City</label>
                                    <input name="city" type="text" placeholder="Enter City Name Here.." value="${S.getCity()}"class="form-control">
                                </div>	
                                <div class="col-sm-4 form-group">
                                    <label>Province</label>
                                    <input name="province" type="text" placeholder="Enter Province Name Here.." value="${S.getProvince()}" class="form-control">
                                </div>	
                                <div class="col-sm-4 form-group">
                                    <label>Zip</label>
                                    <input name="zipcode" type="text" placeholder="Enter Zip Code Here.." value="${S.getZipcode()}" class="form-control">
                                </div>		
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <textarea name="address" placeholder="Enter Address Here.." rows="3" class="form-control">${S.getAddress()}</textarea>
                            </div
                            
                            
                            
                            	<div class="col-sm-4 form-group">
                                    <label>Age</label>
                                    <input name="zipcode" type="text" placeholder="Enter Age" value="${S.getZipcode()}" class="form-control">
                                </div>	

                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>Religion</label>
                                     <input name="religion" type="text" placeholder="Enter Age" value="${S.getReligion()}" class="form-control">
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Ethnicity</label>
                                     <input name="ethnicity" type="text" placeholder="Enter Age" value="${S.getEthnicity()}" class="form-control">
                                </div>
                            </div>
                        </div>
            <input type="hidden" name="ID" value="${S.getId()}">
            <button type="submit" class="btn btn-lg btn-success " name="accept" >Accept</button>
            <button type="submit" class="btn btn-lg btn-danger"  name="reject">Reject</button>
        </form> 
       

</html>

