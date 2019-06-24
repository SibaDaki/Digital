<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Member Tree</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
	
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
  
  
  <script type='text/javascript' src='jquery.js'></script>
  <link rel="stylesheet" href="demo.css"/>
  <link rel="stylesheet" href="jquery.orgchart.css"/>
  <script src="jquery.orgchart.js"></script>
  <script src="js/jquery.matrixchart.js"></script>

   <script type='text/javascript'> </script>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <title> - jsFiddle demo</title>
  
  <script type='text/javascript' src='jquery.js'></script>
  <link rel="stylesheet" href="demo.css"/>
  <link rel="stylesheet" href="jquery.orgchart.css"/>
  <script src="jquery.orgchart.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="js/jquery.matrixchart.js"></script>
  
  
  <body>

<div class="wrapper">
   
	 
	 <button class="w3-button w3-teal w3-xlarge" onclick="w3_open()">☰</button> 

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


    	
 <script type='text/javascript'>
 
 
 
 
$(function(){
var members;
$.ajax({
	url:'load.php',
	async:false,
	success:function(data){
		members=$.parseJSON(data)
	}
})

		//memberId,parentId,otherInfo
		for(var i = 0; i < members.length; i++){
			
		    var member = members[i];
			
			if(i==0){
				$("#mainContainer").append("<li id="+member.memberId+">"+member.otherInfo+"</li>")
			}else{
				
				if($('#pr_'+member.parentId).length<=0){
				  $('#'+member.parentId).append("<ul id='pr_"+member.parentId+"'><li id="+member.memberId+">"+member.otherInfo+"</li></ul>")
				}
				else{
				  $('#pr_'+member.parentId).append("<li id="+member.memberId+">"+member.otherInfo+"</li>")
			     }
				
			}
		}
					


    
	$("#mainContainer").orgChart({container: $("#main"),interactive: true, fade: true, speed: 'slow'});	

}); 


</script>


</head>
<body>
<div  style="display: none">


<ul id="mainContainer" class="clearfix"></ul>	
  	
</div>
<div id="main">
	
</div>
  
  
</body>


</html>








