<%-- 
    Document   : SingleAchievement
    Created on : 24 Jun, 2023, 7:35:00 PM
    Author     : deshp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String name=(String)session.getAttribute("nameAc1");
    String description=(String)session.getAttribute("description1");
    String imageNameAc=(String)session.getAttribute("imageNameAc1");
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap.css" />
    <link rel="stylesheet" href="font-awesome.min.css" />
    <link rel="stylesheet" href="animate.min.css" />
    <link rel="stylesheet" href="stylee.css" />
    <link rel="stylesheet" href="media.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
            /*-------------------------------------navigation bar*/
.header{
    background:#ffffff;
    color: rgb(0, 0, 0);
    padding-top:10px;
    min-height:150px;
    border-bottom: black 2px solid;
}

#shivanyaenterprises-logo{
    height:120px;
    width: auto;
    float:left;
    margin-bottom: 20px;
    margin-left:50px;
}

#branding{
    font-size:30px;
    font-weight: bolder;
    width:250px;
    height: 40px;
    float:left;
    margin-top:30px;
    margin-left:40px;
}


.header a {
    color: rgb(0, 0, 0);
    text-decoration: none;
    font-size: 20px;
}


.header a:link,
.header a:visited{
    color: rgb(0, 0, 0);
    border: 2px rgb(255, 255, 255) solid;
    padding: 10px;
    border-radius:5%;
    transition: border .5s;
}

.header a:hover,
.header a:active{
    border: 2px rgb(0, 0, 0) solid;
}

.header li {
    display:inline;
    padding: 0 5px 0 5px;
    margin:1px;
    font-weight:bolder;
}

.header .container2{
    /*margin-left: 400px;*/
    float:right;
    margin-top:45px;
    /* animation: move-down 1s; */
    
}

.links{
    display:inline;
    margin-left: 10px;
    padding: 12px 8px 12px 8px;
    background-color: rgb(191, 214, 240);
    border:2px black solid;
    /*border-radius:5px;*/
    font-weight: bold;
    transition: border .3s;
    transition: background-color .7s;
}
.links:hover{
    border:2px black solid;
    /*border-radius:5px;*/
    cursor: pointer;
    background-color:#123c69;
    color:white;
}

@keyframes move-down{
    from{transform: translateY(-50px);}
    to{transform: translateY(0px);}
}

        </style>
    </head>
    <body>
         <header class="header">
            <div class="container1">
                <img src="logo.jpg" id="shivanyaenterprises-logo" alt="Shivanya Enterprises Logo">
                <h1 id="branding">कायस्थ  चांद्रसेनीय प्रभू &thinsp; समाज</h1>
                <div class="container2">
                    <ul>
                        <li><a href="LoadHomepage">HOME</a></li>
                        <li><a href="AboutUs">ABOUT US</a></li>
                        <li><a href="Family.jsp">FAMILY</a></li>
                        <li><a href="#contact">EVENT</a></li>
                        <li><a href="CommitteeMembers">COMMITTEE</a></li>
                        <li><a href="Achievements">ACHIEVEMENT</a></li>
                        <li><a href="#services">GALLERY</a></li>
                        <li><a href="Payment">PAYMENT</a></li>
                    </ul>  
                </div>
            </div>
         </header>
    <center>
         <h2 style="margin-top:20px;">ACHIEVEMENTS</h2>
        <hr style="width:350px;height:5px;background-color:black">
    </center>
        <div class="row">
            
            <div class="col-md-3" style="height:400px;margin-left:60px;">
                <img style="margin-top:50px;border:2px solid red;" src="<%="achievements/"+imageNameAc%>">
            </div>
            <div class="col-md-7" style="height:400px;margin-left:20px;">
                <h3 style="margin-top:80px;">Name: <%=name%></h3>
                <p style="margin-top:20px;font-size: 17px;"><%=description%></p>
            </div>

        </div>
    </body>
</html>
