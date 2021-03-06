

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/adminstaffstyle.css" type="text/css" rel="stylesheet">
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
        <link href="css/modern-business.css" type="text/css" rel="stylesheet">
        
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <title>Staff - Administrator</title>
    </head>
    <body>
        <div class="container">
	<div class="row">

		<section class="content">
			<h1>Staff Console</h1>
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default">
                                    <div class="panel-body" style="overflow:hidden;">
						<div class="pull-right">
							<div class="btn-group">
								<button type="button" class="btn btn-success btn-filter" data-target="accept">Accepted</button>
								<button type="button" class="btn btn-warning btn-filter" data-target="reject">Rejected</button>
								<button type="button" class="btn btn-default btn-filter" data-target="unprocessed">Waiting</button>
							</div>
						</div>
						<div class="table-container">
							<table class="table table-filter">
								<tbody>
                                                                    
                                                                <c:forEach items="${unprocessed}" var="p">
                                                                   
                                                                    <tr data-status="unprocessed" style="width:200px;" id="data">
										<td>
											<div class="media element" id="">
												<a href="#" class="pull-left">
													<img width="75" height="75" src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
                                                                                                    <h4 class="title">
														
														${p.getFname()} ${p.getLname()}
													</h4>
                                                                                                </a>
												<div id="${p.getId()}">
													
													
                                                                                                          
                                                                                                        
												</div>
                                                                                            
                                                                                                 <div class="col-md-5" style="margin:auto; text-align: center;">
                                                                                                      
                                                                                                        <b>Ethnicity - ${p.getEthnicity()}</b>
                                                                                                       
                                                                                                        
                                                                                                 </div>
											</div>
										</td>
									</tr>
                                                                
                                                                
                                                                </c:forEach>
									
                                                                        <c:forEach items="${rejected}" var="p">
                                                                   
                                                                    <tr data-status="reject" style="width:200px;" id="data">
										<td>
											<div class="media">
												<a href="#" class="pull-left">
													<img width="75" height="75" src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
                                                                                                    <h4 class="title">
														
														${p.getFname()} ${p.getLname()}
													</h4>
                                                                                                </a>
												<div class="" id="${p.getId()}">
													
													
                                                                                                          
                                                                                                        
												</div>
                                                                                            
                                                                                                 <div class="col-md-5" style="margin:auto; text-align: center;">
                                                                                                      
                                                                                                        <b>Ethnicity - ${p.getEthnicity()}</b>
                                                                                        
                                                                  
                                                                                                        
                                                                                                 </div>
											</div>
										</td>
									</tr>
                                                                
                                                                
                                                                </c:forEach>
                                                                        
                                                                        <c:forEach items="${accepted}" var="p">
                                                                    
                                                                    <tr data-status="accept" style="width:200px;" id="data">
										<td>
											<div class="media">
												<a href="#" class="pull-left">
													<img width="75" height="75" src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
                                                                                                    <h4 class="title">
														
														${p.getFname()} ${p.getLname()}
													</h4>
                                                                                                </a>
												<div class="" id="${p.getId()}">
													
													
                                                                                                          
                                                                                                        
												</div>
                                                                                            
                                                                                                 <div class="col-md-5" style="margin:auto; text-align: center;">
                                                                                                      
                                                                                                        <b>Ethnicity - ${p.getEthnicity()}</b>
                                                                                                 </div>
											</div>
										</td>
									</tr>
                                                                
                                                                
                                                                </c:forEach>
									
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="content-footer">
					<p>
						
					</p>
				</div>
			</div>
		</section>
		
	</div>
</div>
        
    
        <script>
            
            $(".element").click(function() {
                
               // alert($(this).children('div:first').attr('id')); // get id of clicked li
                //window.location.href = window.location.href +"/" + this.id;
                window.location.href =  "PatientDetail?id=" + $(this).children('div:first').attr('id');
                //$.post("StudentDetail",{"name": this.id},function(data){},"json");
            });
            
            
                    $(document).ready(function () {

                $('.star').on('click', function () {
              $(this).toggleClass('star-checked');
            });

            $('.ckbox label').on('click', function () {
              $(this).parents('tr').toggleClass('selected');
            });

            $('.btn-filter').on('click', function () {
              var $target = $(this).data('target');
              if ($target != 'all') {
                $('.table tr').css('display', 'none');
                $('.table tr[data-status="' + $target + '"]').fadeIn('slow');
              } else {
                $('.table tr').css('display', 'none').fadeIn('slow');
              }
            });

         });    
        </script>
        
        
    </body>
    
</html>
