<!DOCTYPE html>
<html lang="en">
    
    <h1  style="color:#eeeeee;padding-top: 5px;padding-left: 10px">Registration Form</h1>

                    <form method="post" action="Register" style="color:#eeeeee;" id="registerform">
                        
                        <div class="col-sm-12">
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>First Name</label>
                                    <input required="required" type="text" name="fname" placeholder="Enter First Name Here.." class="form-control">
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Last Name</label>
                                    <input required="required" type="text" name="lname" placeholder="Enter Last Name Here.." class="form-control">
                                </div>
                                <div class="col-sm-4 form-group">
                                    <label>Email Address (Use as username)</label>
                                    <input required="required" name="email" type="text" placeholder="Enter Email Address Here.." class="form-control">
                                </div>
                                <div class="col-sm-4 form-group">
                                    <label>Password</label>
                                    <input required="required" name="password" type="text" placeholder="Enter Password Here.." class="form-control">
                                </div>

                                <div class="col-sm-4 form-group">
                                    <label>Phone Number</label>
                                    <input required="required" name="phonenum" type="text" placeholder="Enter Phone Number Here.." class="form-control">
                                </div>		


                            </div>


                            <div class="row">
                                <div class="col-sm-4 form-group">
                                    <label>City</label>
                                    <input required="required"name="city" type="text" placeholder="Enter City Name Here.." class="form-control">
                                </div>	 
                                <div class="col-sm-4 form-group">
                                    <label>Province</label>
                                    <input required="required" name="province" type="text" placeholder="Enter Province Name Here.." class="form-control">
                                </div>	
                                <div class="col-sm-4 form-group">
                                    <label>Zip</label>
                                    <input required="required" name="zipcode" type="text" placeholder="Enter Zip Code Here.." class="form-control">
                                </div>		
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <textarea required="required" name="address" placeholder="Enter Address Here.." rows="3" class="form-control"></textarea>
                            </div>
                            
                            <div class="col-sm-4 form-group">
                                    <label>Age</label>
                                    <input required="required" name="age" type="text" placeholder="Input age.." class="form-control">
                                </div>	
                            <div class="col-sm-4 form-group">
                                <label>Gender</label>
                             <select name="gender" style="color:black" form="registerform">
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select>
                                </div>	

                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>Religion</label>
                                    <br>
                                    <select name="religion" style="color:black" form="registerform">
                                        <option value="Buddhism">Buddhism</option>
                                        <option value="Hindu">Hindu</option>
                                        <option value="Muslim">Muslim</option>
                                        <option value="Jew">Jew</option>  
                                    </select>
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Ethnicity</label>
                                    <br>
                                    <select name="ethnicity" style="color:black" form="registerform">
                                        <option value="Thai">Thai</option>
                                        <option value="Chinese">Chinese</option>
                                        <option value="German">German</option>
                                        <option value="Korean">Korean</option>  
                                        <option value="Lao">Lao</option> 
                                        <option value="Indian">Indian</option> 
                                    </select>
                                </div>
                            </div>
            </div>
            <button type="submit" class="btn btn-lg btn-info" style="margin-left: 30px;margin-bottom: 20px" data-toggle="modal" data-target=".bs-example-modal-lg"><img src="img/checked.png" width="40px" height="40px"></button>
        </form> 
</html>
