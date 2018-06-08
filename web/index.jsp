<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title id="userr">BANGKOK HOSPITAL</title>

    <script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
    <link href="css/modern-business.css" type="text/css" rel="stylesheet">
    <link href="css/indexstyle.css" rel="stylesheet" type="text/css"/>

</head>

<body>
  
    <div style="height:100%;margin:0px;background-image:url('http://media2.govtech.com/images/940*529/hospital1.jpg'); background-position: center;background-size: 100% 100%;background-repeat: no-repeat;" id="headerimage">
        
         <img class="sclogo" src="" />
        
        
    </div>
    
    <!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content clogin">
                    
    
                    <div class="modal-body">

        <div class="">
            <form class="form" method="post" action="Home">
                <h2 id="login-header"><b>User Account</b></h2>
            <label>Email :</label>
            <input type="text" name="email" id="email" style="color:black;">
            <label>Password :</label>
            <input type="password" name="password" id="password" style="color:black;">
            <input type="submit" class="btn btn-primary" name="login" id="login" value="Login"> 
            </form>
	</div>
      </div>

    </div>
  </div>
</div>

 
 <div class="blockHeader" style="width:100%; height: 20px; margin:0" id="headerblock1">
<!--                    <h1 style="padding-left:30px;padding-top:20px">
                        <img src="img/sci.png" width="50px" height="50px"> Our Programs..
                    </h1>-->
                </div>
 <div class="ccontentblock" style="width:100%; height: 10px; margin:0">
<!--                    <h1 style="padding-left:30px;padding-top:20px">
                        <img src="img/sci.png" width="50px" height="50px"> Our Programs..
                    </h1>-->
</div>

<!--    Profile-->
        <div id="profile" class="ccontentblock blockHeader" style="width:75%; margin-right: auto; margin-left: auto; height:auto; margin-top: 30px; margin-bottom: 40px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);; display:none; height:565px;">
            <h1 class="page-header" style="padding-left:30px;padding-top:20px; border-bottom: black">
                <img src="img/curriculum.png" width="50px" height="50px"> Profile 
            </h1>
            
            <div class="cprofileBox" id="cprofileInner">
            </div>
            
        </div>






    <div id="apply" class="capplycontent" >

            <button id="cancelReg" style="background-color:#17A085;border-color:#17A085;border-width: 0px;float: right;padding-right: 20px;padding-top: 10px"><img src="img/error.png" width="40px" height="40px"></button>

            <div id="applyInner" class="elementcontent" style="width:auto; height:auto;"></div>


        </div>
    

        <!--About Part-->
        <div id="about" class="ccontentblock">
            
             <div class="blockHeader">    
            <h1 class="page-header" style="padding-left:30px;padding-top:20px; border-bottom: black">
                 <img src="img/team.png" width="50px" height="50px"> About Us
            </h1>
             </div>
            <div class="" style="padding-top: 30px">
                <div class="col-md-6" style="padding-left:85px; padding-right:0px;">
                    <img clas="img-responsive" src="img/about.png" width="350px" height="250px"style="margin-top:20px;margin-left:25px;border-radius:15px;" >
                </div>
                <div class="col-md-6" style="padding-right: 50px">
                    <h4>
                    BANGKOK HOSPITAL
                    </h4>
                    <p><img src="img/play-button.png" width="20px" height="20px"> Bangkok Hospital was established in 1972 as one of the first private hospitals in Thailand. Over the past 40 years we have expanded our operations to become a tertiary care facility with dedicated hospitals for cancer and cardiology. At Bangkok Hospital, we offer the full complement of diagnosis, treatment, and rehabilitation services, with specialists in all major fields of healthcare, but what sets us apart from other hospitals is our dedication to specialized tertiary care. Services and treatment processes are internationally certified by the Joint Commission International, one of the largest and most respected accreditation agencies for healthcare.</p>
                </div>
                
            </div>
        </div>
        <!--    Contact Us part-->
        <div id="contact" class="ccontentblock">
             <div class="blockHeader">
            <h1 class="page-header" style="padding-left:30px;padding-top:20px; border-bottom: black">
                <img src="img/contacts.png" width="50px" height="50px"> Contact Us
            </h1>
             </div>
            
            <div class="" style="padding-top: 40px">
                <div class="col-md-6" style="padding-left:30px">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d124015.71338639094!2d100.51345566784526!3d13.74923521674889!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x30e29e5b7989ef8b%3A0xc3da9a922b9e237!2z4LmC4Lij4LiH4Lia4Liy4LilIGJhbmdrb2sgZ3Bz!3m2!1d13.7492451!2d100.5834962!5e0!3m2!1sen!2sth!4v1527596529944" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                <div class="col-md-6" style="padding-right: 50px;padding-top: 35px;">
                    <p><img src="img/notebook.png" width="20px" height="20px"> 
2 Soi Soonvijai 7, New Petchburi Road., Huaykwang, Bangkok 10310 Thailand</p>
                    <p><img src="img/phone-call.png" width="20px" height="20px"> Phone: (+66) 2310-3000 1719 (local mobile calls only)</p>
                    <p><img src="img/office-material.png" width="20px" height="20px"> Tax: 
(+66) 2318-1546 (+66) 2310-3327</p>
                    <p><img src="img/email.png" width="20px" height="20px"> Email: 
info@bangkokhospital.com</p>
                </div>
                
            </div>
        </div>

        <!-- Page Content -->
        <div class="ccontentblock" id="otherInfo" style="margin-bottom:50px;">

            <!-- Marketing Icons Section -->
                <div class="blockHeader">
                    <h1 class="page-header" style="padding-left:30px;padding-top:20px; border-bottom: black"><img src="img/school_2.png" width="50px" height="50px"> Strategic Goals</h1>
                </div>
                <div class="col-md-6">
      
                    <ul>
                        <li>Our physicians are experienced and supported by advanced medical technology to monitor your health, enabling early detection and solution of health problems. We offer strategies for staying healthy, including ways to be active and strong. Our goal is to partner with you, helping you achieve a fuller, healthier life. </li>  
                    </ul>

                </div>
                <div class="col-md-6">
                    <img class="img-responsive" src="http://www.bkh.co.th/wp-content/uploads/2016/10/New-BKH.jpg" style="border-radius: 15px" alt="">
                </div>
            </div>
            
            <!-- /.row -->
            
             <div class="blockHeader" style="width:100%; height: 20px; margin:0">
<!--                    <h1 style="padding-left:30px;padding-top:20px">
http://media2.govtech.com/images/940*529/hospital1.jpg
http://www.bkh.co.th/wp-content/uploads/2016/10/New-BKH.jpg
                        <img src="img/sci.png" width="50px" height="50px"> Our Programs..
                    </h1>-->
                </div>
 <div class="ccontentblock" style="width:100%; height: 10px; margin:0">
<!--                    <h1 style="padding-left:30px;padding-top:20px">
                        <img src="img/sci.png" width="50px" height="50px"> Our Programs..
                    </h1>-->
</div>

            <!-- Portfolio Section -->
<!--                <div class="col-lg-12">
                    <h2 class="page-header blockHeader"><img src="img/graduate.png" width="50px" height="50px" style="border-radius: 15px"> Our Student</h2>
                </div>-->
<div class="blockHeader" style="width:100%; height: 570px; padding-left: 100px" id="ourstudents">

                    <h1 class="" style="padding-left:30px;padding-top:20px; margin-bottom: 30px;"><img src="img/school_2.png" width="50px" height="50px"> Our Doctors</h1>

                <div class="col-md-4 col-sm-6">
                    <a href="#">
                        <img class=" img-portfolio img-hover" src="img/Doctor_1.jpg" width="293px" height="195px" style="border-radius: 15px" alt="">
                    </a>
                </div>
                <div class="col-md-4 col-sm-6">
                    <a href="#">
                        <img class=" img-portfolio img-hover" src="img/Doctor_2.jpg" width="293px" height="195px" style="border-radius: 15px" alt="">
                    </a>
                </div>
                <div class="col-md-4 col-sm-6">
                    <a href="#">
                        <img class=" img-portfolio img-hover" src="img/Doctor_3.jpg" width="293px" height="195px" style="border-radius: 15px" alt="">
                    </a>
                </div>
                <div class="col-md-4 col-sm-6">
                    <a href="#">
                        <img class=" img-portfolio img-hover" src="img/Doctor_4.jpg" width="293px" height="195px" style="border-radius: 15px" alt="">
                    </a>
                </div>
                <div class="col-md-4 col-sm-6">
                    <a href="#">
                        <img class=" img-portfolio img-hover" src="img/Doctor_5.jpg" width="293px" height="195px" style="border-radius: 15px" alt="">
                    </a>
                </div>
                <div class="col-md-4 col-sm-6">
                    <a href="#">
                        <img class=" img-portfolio img-hover" src="img/Doctor_6.jpg" width="293px" height="195px" style="border-radius: 15px" alt="">
                    </a>
                </div>  
            <!-- /.row -->

            <!-- Features Section -->
            
            <!-- /.row -->
</div>
<!--            <hr>

         Call to Action Section 
        <div class="well">
            <div class="row">
                <div class="col-md-8">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.</p>
                </div>
                <div class="col-md-4">
                    <a class="btn btn-lg btn-default btn-block" href="#">Call to Action</a>
                </div>
            </div>
        </div>

       <hr>-->

        <!-- Footer -->
        

    
    <!-- /.container -->


  
    

</body>

</html>

<script>
$("#cancelReg").click(function(){   
         $(".capplycontent").slideUp(400,function(){
             $("#applyInner").html('');
         });
         
          $("#whyus").show();
                 $("#about").show();
                 $("#otherInfo").show();
                 $("#contact").show(); 
                 $("#ourstudents").show(); 
                 $("#headerimage").show(); 
                 $("#headerblock1").show();
                 toggleSlider();
         
     });
    </script>