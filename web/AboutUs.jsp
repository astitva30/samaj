<%-- 
    Document   : AboutUs
    Created on : 24 Jun, 2023, 11:55:36 AM
    Author     : deshp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>

<%
        ArrayList arr=  (ArrayList)  session.getAttribute("arr");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
        <link rel="stylesheet" href="bootstrap.css" />
    <link rel="stylesheet" href="font-awesome.min.css" />
    <link rel="stylesheet" href="animate.min.css" />
    <link rel="stylesheet" href="stylee.css" />
    <link rel="stylesheet" href="media.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
            html, body { height: 100%; margin: 0;}
                        /*---------------------header*/
            
            /*-------------------------------------navigation bar*/
.header{
    background:#ffffff;
    color: rgb(0, 0, 0);
    padding-top:10px;
    height:150px;
    border-bottom: black 2px solid;
    margin-bottom:70px;
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
    color:black;
    font-weight: bolder;
    width:250px;
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
                        <li><a href="#">ABOUT US</a></li>
                        <li><a href="Family.jsp">FAMILY</a></li>
                        <li><a href="#">EVENT</a></li>
                        <li><a href="CommitteeMembers">COMMITTEE</a></li>
                        <li><a href="Achievements">ACHIEVEMENT</a></li>
                        <li><a href="#services">GALLERY</a></li>
                        <li><a href="Payment">PAYMENT</a></li>
                    </ul>  
                </div>
            </div>
        </header>
        
        
        <!-----------------------------------------------------------------------------------------committee members-->
        <div style="width:100%" class="row">
        
            <div class="col-md-7" style="margin-left:70px;margin-top:-27px;">
                <center><h2 style="font-size:28px;font-weight: bolder;margin-top:15px;border-bottom: 3px solid red;width:150px;padding-bottom: 5px;">ABOUT US</h2>
                        <p style="font-size: 17px;width:95%;margin-top:20px;"><%=arr.get(0)%></p
                </center>
            </div>
            <div class="col-md-3" style="margin-left:40px;margin-top: 20px;">
                <center><img src="logo.jpg" style="border:6px solid red;padding:20px;margin-bottom: 20px;">
                    <h1>कायस्थ  चांद्रसेनीय प्रभू समाज</h1>
                    <br>
                    <div style="margin-top:-10px;">
                        <div class="tagline1 text-center"><%=arr.get(1)%></div>
                        <div class="tagline4 text-center">
                            <svg width="15px" height="15px" viewBox="0 0 16 16" class="bi bi-telephone" fill="currentColor">
                            <path fill-rule="evenodd" d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                            </svg> <%=arr.get(2)%>
                            <img style="width: 20px;" src="https://maheshwarisamajjaipur.com/whatsapp.svg"></img>
                            <%=arr.get(3)%>  &nbsp;
                            <img style="width: 20px;" src="https://maheshwarisamajjaipur.com/gmail.svg"/>
                            <u><%=arr.get(4)%></u> 
                        </div>

                    </div>
                    </center>
            </div>
        </div>
        
             <footer class="footer-section">
    <div class="black-footer-line">
        <div class="container">
        <div class="foter-icon">
            <div class="logo-footer">
            <img src="logo.jpg" width="150px" height="" alt="">
            </div>
            
            <div class="link-so">
                <ul class="footer-menu"> 
                    <li><a href="https://www.maheshwarisamajjaipur.com/contact-us">Contact Us</a></li>
                    <li><a href="https://www.maheshwarisamajjaipur.com/awards">Awards</a></li>
                    <li><a href="http://jaipurmaheshwari.com/" target='_blank'>Matrimonial</a></li>
                    <li><a href="http://www.maheshwarimahasabha.org/" target='_blank'>Akhil Bhartiya Mahasabha</a></li>
                    <!--<li><a href="suggestion/MjE=">Suggestion Box</a></li>-->
                    <li><a href="https://www.maheshwarisamajjaipur.com/wemissyou">We’ll Miss You</a></li>
                </ul>
                
                <span class="social-ic">
                    <a target="_blank" href="https://facebook.com/shrimaheshwarisamajjaipurofficial"><img src="https://maheshwarisamajjaipur.com/img/soc-01.png" alt=""></a>
                     <a target="_blank" href="https://www.instagram.com/smsjofficial/"><img src="https://maheshwarisamajjaipur.com/img/soc-04.png" alt=""></a>
                    <!--a href="#"><img src="https://maheshwarisamajjaipur.com/img/soc-02.png" alt=""></a-->
                    <!--a href="#"><img src="https://maheshwarisamajjaipur.com/img/soc-03.png" alt=""></a>
                    <a href="#"><img src="https://maheshwarisamajjaipur.com/img/soc-04.png" alt=""></a-->
                   
                </span>
                
                
            </div>
            
            <div class="link-so">
                
                <span class="social-ic" style="margin: 0px;">
                    <a href="https://www.maheshwarisamajjaipur.com/img/Maheshwari Samaj (19-10-2021).apk" style="width: 110px;"><img src="https://www.maheshwarisamajjaipur.com/img/play-store-btn.png" alt=""></a>
                   
                </span>
                
                
            </div>
            
        </div>

        <p class="copy">© 2021 ckp Samaj</p>
          
          
           
        </div>
    </div>
  </footer>           
                        
                        
                        
    </body>
</html>
