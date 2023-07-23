<%-- 
    Document   : CommitteeMembers
    Created on : 25 Jun, 2023, 3:27:25 PM
    Author     : deshp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%
        ArrayList<String> arrayHead1=  (ArrayList)session.getAttribute("arrayHead1");
            ArrayList<String> arrayHead2=(ArrayList)    session.getAttribute("arrayHead2");
                ArrayList<String> arrayHead3=(ArrayList)session.getAttribute("arrayHead3");
                    ArrayList<String> arrayHead4=(ArrayList)session.getAttribute("arrayHead4");
        ArrayList<String> arrayMahila1=(ArrayList)session.getAttribute("arrayMahila1");
        ArrayList<String> arrayMahila2=(ArrayList)session.getAttribute("arrayMahila2");
        ArrayList<String> arrayMahila3=(ArrayList)session.getAttribute("arrayMahila3");
        ArrayList<String> arrayMahila4=(ArrayList)session.getAttribute("arrayMahila4");
        ArrayList<String> arrayNavyuvak1=(ArrayList)session.getAttribute("arrayNavyuvak1");
        ArrayList<String> arrayNavyuvak2=(ArrayList)session.getAttribute("arrayNavyuvak2");
        ArrayList<String> arrayNavyuvak3=(ArrayList)session.getAttribute("arrayNavyuvak3");
        ArrayList<String> arrayNavyuvak4=(ArrayList)session.getAttribute("arrayNavyuvak4");
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
    min-height:140px;
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
    width:240px;
    height: 40px;
    float:left;
    margin-top:30px;
    margin-left:20px;
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
    padding: 12px 4px 12px 4px;
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

/*-----------------------------------*/
.tab {
    margin-top:20px;
  float: left;
  border: 1px solid #ccc;
  background-color: #dfe8eb;
  width: 20%;
  height: 560px;
  border-radius: 10px 0 0 10px;
}

.tab button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 22px 16px;
  width: 90%;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 17px;
  margin: 5%;
  border-radius: 4px;
}

.tab button:hover {
  background-color: #bee9f7;
}

.tab button.active {
  background-color: #6398a8;
}

.tabcontent {
    margin-top:20px;
  float: left;
  padding: 0px 12px;
  width: 60%;
  border-left: none;
  height: 400px;
  border-radius: 0 10px 10px 0;
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
        
        <div class="tab">
  <button class="tablinks" onclick="openTab(event, 'firstTab')" id="defaultOpen">Head Committee</button>
  <button class="tablinks" onclick="openTab(event, 'secondTab')">Mahila Committee</button>
  <button class="tablinks" onclick="openTab(event, 'thirdTab')">Navyuvak Committee</button>
  </div>
        
  <div id="firstTab" class="tabcontent">
    
        <!------------------edit home data form-->
        <center><h1>HEAD COMMITTEE</h1></center>
        <center><hr style="width:20%;height:4px;color:black;background-color:black;"></center>
        
        <div class="col-md-12">
            <%for(int i=0;i<arrayHead1.size();i++){%>
            <div class="col-md-3">
                                    <div class="member-image">
                                        <div class="hover-show">
                                            <span class="number">
                                            </span>
                                        </div>
                                        <img src="<%="images/"+arrayHead2.get(i)%>" alt=""/>      </div>

                                    <div class="emmber-detail text-center">
                                        <b><a href="/single/committee/774" ><h5><%=arrayHead3.get(i)%></h5></a></b>
                                        <!--style='font-family:"KrutiDev010";'-->
                                        <i><h6><%=arrayHead4.get(i)%></h6></i>
                                        <!--style='font-family: "KrutiDev010";'-->
                                    </div>
                                </div>
                                        <%}%>
        </div>
        
                        
  </div>
  <div id="secondTab" class="tabcontent">
    
        <!------------------edit home data form-->
        <center><h1>MAHILA COMMITTEE</h1></center>
        <center><hr style="width:20%;height:4px;color:black;background-color:black;"></center>
        
        <div class="col-md-12">
            <%for(int i=0;i<arrayMahila1.size();i++){%>
            <div class="col-md-3">
                                    <div class="member-image">
                                        <div class="hover-show">
                                            <span class="number">
                                            </span>
                                        </div>
                                        <img src="<%="images/"+arrayMahila2.get(i)%>" alt=""/>      </div>

                                    <div class="emmber-detail text-center">
                                        <b><a href="/single/committee/774" ><h5><%=arrayMahila3.get(i)%></h5></a></b>
                                        <!--style='font-family:"KrutiDev010";'-->
                                        <i><h6><%=arrayMahila4.get(i)%></h6></i>
                                        <!--style='font-family: "KrutiDev010";'-->
                                    </div>
                                </div>
                                        <%}%>
        </div>
                        
  </div>
  <div id="thirdTab" class="tabcontent">
    
        <!------------------edit home data form-->
        <center><h1>NAVYUVAK COMMITTEE</h1></center>
        <center><hr style="width:20%;height:4px;color:black;background-color:black;"></center>
        
        <div class="col-md-12">
            <%for(int i=0;i<arrayNavyuvak1.size();i++){%>
            <div class="col-md-3">
                                    <div class="member-image">
                                        <div class="hover-show">
                                            <span class="number">
                                            </span>
                                        </div>
                                        <img src="<%="images/"+arrayNavyuvak2.get(i)%>" alt=""/>      </div>

                                    <div class="emmber-detail text-center">
                                        <b><a href="/single/committee/774" ><h5><%=arrayNavyuvak3.get(i)%></h5></a></b>
                                        <!--style='font-family:"KrutiDev010";'-->
                                        <i><h6><%=arrayNavyuvak4.get(i)%></h6></i>
                                        <!--style='font-family: "KrutiDev010";'-->
                                    </div>
                                </div>
                                        <%}%>
        </div>
                        
  </div>

        
        
        
        <script>
                    function openTab(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

document.getElementById("defaultOpen").click();
                    
                </script>
    </body>
</html>
