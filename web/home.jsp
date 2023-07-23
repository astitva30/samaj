<%@page pageEncoding="UTF-8" %>
<%@page import="java.util.ArrayList"%>

<%
    String about=(String)session.getAttribute("aboutt");
    ArrayList<String> name=(ArrayList)session.getAttribute("name");
    ArrayList<String> post=(ArrayList)session.getAttribute("post");
    ArrayList<String> imageName=(ArrayList)session.getAttribute("imageName");
    ArrayList<String> nameAc=(ArrayList)session.getAttribute("nameAc");
    ArrayList<String> description=(ArrayList)session.getAttribute("description");
    ArrayList<String> desc=(ArrayList)session.getAttribute("desc");
    ArrayList<String> imageNameAc=(ArrayList)session.getAttribute("imageNameAc");
    ArrayList<String> arrr=(ArrayList)session.getAttribute("arrr");
    
//    String image1 = "images/" +imageName.get(0);
%>

<!DOCTYPE html>
<html>

<head>
    <title>Homepage</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="bootstrap.css" />
    <link rel="stylesheet" href="font-awesome.min.css" />
    <link rel="stylesheet" href="animate.min.css" />
    <link rel="stylesheet" href="stylee.css" />
    <link rel="stylesheet" href="media.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <script src="https://code.jquery.com/jquery-1.12.4.min.js"
        integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous">
    </script>
    <script src="jquery.min.js"></script>
    <script src="bootstrap.min.js"></script>
    <script src="wow.min.js"></script>

    <style>
        html, body { height: 100%; margin: 0; }

.slider, .slider .imgs {
  width: 100%;
  height: 85%;
  /*max-height: 300px;*/
  position: relative;
}

.slider {
  height: 85%;
  /*max-height: 300px;*/
}

.slider .imgs {
  display: flex;
  overflow: hidden;
}

.slider .img {
  min-width: 100%;
  height: 100%;
  display: flex;
  align-items: flex-end;
  justify-content: center;
  position: absolute;
  left: 100%;
  /* animation duration can't be greater than variable interval in JS! */
  /* check JS for other settings */
  animation: .6s cubic-bezier(0.645, 0.045, 0.355, 1) 0s left;
  animation-fill-mode: forwards;
  background-size: cover !important;
  background-position: 50% !important;
}

/* Change images here */
.slider .img:nth-of-type(1) { background: url('4.png'); }
.slider .img:nth-of-type(2) { background: url('goku.png'); }
.slider .img:nth-of-type(3) { background: url('4.png'); }
.slider .img:nth-of-type(4) { background: url('goku.png'); }

.slider .img span {
  padding: 7px 20px;
  background: rgba(0, 0, 0, .8);
  border-top-left-radius: 7px;
  border-top-right-radius: 7px;
  color: #f0f0f0;
  font-size: 14px;
  font-family: sans-serif;
}

.dots {
  position: absolute;
  margin-top:5px;
  display: flex;
  justify-content: center;
  width: 100%;
}

.dot {
  width: 8px;
  height: 8px;
  background: gray;
  border-radius: 50%;
  margin: 0 3px;
  cursor: pointer;
}

.active-dot {
  background: #3f3f3f;
  cursor: default;
}

@keyframes leftNext {
  from { left: 100%; }
  to { left: 0; }
}

@keyframes leftCurr {
  from { left: 0; }
  to { left: -100%; }
}

@keyframes rightNext {
  from { left: -100%; }
  to { left: 0; }
}

@keyframes rightCurr {
  from { left: 0; }
  to { left: 100%; }
}
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


/*------------------------------------*/
        .ads-slide {
		height:300px;
		}
		
		.ads-slide img {
		height:300px;
		}
        .top-navbar-mobiledd {
            display: none;
        }

        @media only screen and (min-width: 140px) and (max-width: 767px) {
            .top-navbar-mobiledd {
                display: block;
                position: fixed;
                width: 100%;
                z-index: 99;
            }
        }

        #loader{display:none;}
#send_otp {
    text-align: center;
    background-color: #e44c32;
    border: 0;
    width: 48%;
    height: 36px;
    font-size: 16px;
    color: #fff;
    cursor: pointer;
    padding: 6px;
}
#otpss{display:none;}
.check_box {
    display: flex;
    align-items: center;
    margin: 0 0 30px;
    width: 100%;
}
.check_box input[type="checkbox"] {
    margin: 0 5px 0 0;
}
#signsend_otp {
    text-align: center;
    background-color: #e44c32;
    border: 0;
    min-width: 244px;
    height: 50px;
    font-size: 16px;
    color: #fff;
    cursor: pointer;
    padding: 12px;
}
#signotpss{display:none;}
#error_msg , #signerror_msg{color:red;}



/* ----------------------------------
SLIDER
*/
/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
/*.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}*/

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
/*-----------------------------achivements*/
*,
::before,
::after {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}



#cCarousel {
  position: relative;
  max-width: 900px;
  margin: auto;
}

#cCarousel .arrow {
  position: absolute;
  top: 50%;
  display: flex;
  width: 45px;
  height: 45px;
  justify-content: center;
  align-items: center;
  border-radius: 50%;
  z-index: 1;
  font-size: 26px;
  color: white;
  background: #00000072;
  cursor: pointer;
}

#cCarousel #prev {
  left: 0px;
}

#cCarousel #next {
  right: 0px;
}

#carousel-vp {
  width: 770px;
  height: 400px;
  display: flex;
  align-items: center;
  position: relative;
  overflow: hidden;
  margin: auto;
}

@media (max-width: 770px) {
  #carousel-vp {
    width: 510px;
  }
}

@media (max-width: 510px) {
  #carousel-vp {
    width: 250px;
  }
}

#cCarousel #cCarousel-inner {
  display: flex;
  position: absolute;
  transition: 0.3s ease-in-out;
  gap: 10px;
  left: 0px;
}

.cCarousel-item {
  width: 250px;
  height: 365px;
  border: 2px solid white;
  border-radius: 15px;
  overflow: hidden;
  display: flex;
  flex-direction: column;
}

.cCarousel-item img {
  width:70%;
  object-fit: cover;
  min-height: 210px;
  color: white;
}

.cCarousel-item .infos {
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-around;
  background: white;
  color: black;
}

.cCarousel-item .infos button {
  background: #222;
  padding: 10px 30px;
  border-radius: 15px;
  color: white;
  font-size: 1rem;
  font-weight: bold;
  cursor: pointer;
}

    </style>


</head>

<body class="page-bg">
    <div class="main-div">
<!--        <header class="header-section menu-hidden-mobile">
            <div class="work-mark">

                <div class="tagline2" style="font-size: 38px;">कायस्थ चांद्रसेनीय प्रभू समाज</div>
                <div class="">&nbsp;</div>
            </div>

            <div class="container">
                <div class="left-logo-section"><a href="/"><img src="logo.jpg" alt="" /></a></div>
                <div class="right-social-section menu-hidden-mobile">
                    <span class="mobile-no"><img src="https://www.maheshwarisamajjaipur.com/img/phone.png" alt="" />
                        1800-180-6832</span>

                </div>
            </div>
        </header>-->
        
        <header class="header">
            <div class="container1">
                <img src="logo.jpg" id="shivanyaenterprises-logo" alt="Shivanya Enterprises Logo">
                <h1 id="branding">कायस्थ  चांद्रसेनीय प्रभू &thinsp; समाज</h1>
                <div class="container2">
                    <ul>
                        <li><a href="#">HOME</a></li>
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

        <div class="amrque">
            <div class="container">
                <b>News</b>
                <marquee style="font-size: 15px;" behavior="scroll" direction="left" onmouseover="this.stop();"
                    onmouseout="this.start();"> श्री माहेश्वरी समाज जयपुर के इतिहास में पहली बार चांदपोल मोक्षधाम के
                    नवीनीकरण पर ध्यान दिया गया है एवं सर्वधर्म मोक्षधाम चांदपोल के नवीनीकरण विकास एवं नियमित संचालन
                    योजना का
                    शुभारंभ कर दिया गया है। श्री माहेश्वरी समाज जयपुर के इतिहास में पहली बार चांदपोल मोक्षधाम के
                    नवीनीकरण पर
                    ध्यान दिया गया है एवं सर्वधर्म मोक्षधाम चांदपोल के नवीनीकरण विकास एवं नियमित संचालन योजना का शुभारंभ
                    कर
                    दिया गया है। | श्री माहेश्वरी समाज जयपुर के इतिहास में पहली बार चांदपोल मोक्षधाम के नवीनीकरण पर
                    ध्यान
                    दिया गया है एवं सर्वधर्म मोक्षधाम चांदपोल के नवीनीकरण विकास एवं नियमित संचालन योजना का शुभारंभ कर
                    दिया
                    गया है। श्री माहेश्वरी समाज जयपुर के इतिहास में पहली बार चांदपोल मोक्षधाम के नवीनीकरण पर ध्यान दिया
                    गया
                    है एवं सर्वधर्म मोक्षधाम चांदपोल के नवीनीकरण विकास एवं नियमित संचालन योजना का शुभारंभ कर दिया गया
                    है। |
                    माहेश्वरी बन्धुओं की सेवा के लिए महेश सेवा कोष में अधिक से अधिक आर्थिक सहयोग करें। आप सहयोग राशि
                    ऑनलाइन
                    भेजने के लिए उपरोक्त लिंक का उपयोग करें। आप द्वारा दी गई सहयोग राशि पर आयकर की धारा 80जी में छूट है।
                    माहेश्वरी बन्धुओं की सेवा के लिए महेश सेवा कोष में अधिक से अधिक आर्थिक सहयोग करें। आप सहयोग राशि
                    ऑनलाइन
                    भेजने के लिए उपरोक्त लिंक का उपयोग करें। आप द्वारा दी गई सहयोग राशि पर आयकर की धारा 80जी में छूट है।
                    |
                    सभी समाज बन्धुओं को महेश नवमी की हार्दिक शुभकामनाएं / | सभी बन्धुओं से वैब साइट से सम्बन्धित सुझाव
                    आमंत्रित हैं | माहेश्वरी बन्धुओं के लिए नि: शुल्क एम्बुलेंस सेवा उपलब्ध | माहेश्वरी बन्धुओं की
                    सुविधा के
                    लिए समाज कार्यालय में ई-मित्र संचालित किया जा रहा है। | वैब साइट पर विज्ञापन के माध्यम से अपने
                    व्यवसाय
                    में वृद्धि करें विज्ञापन दर : वार्षिक रुपए 50000/-, अर्द्ध वार्षिक रुपए 30000/-एवं मासिक रुपए 7000/
                    12*3.5 INCH Size | जयपुर नगर निगमों की 31 जनवरी 2020 को निर्धारित सीमा में निवास कर रहे माहेश्वरी
                    बन्धुओं की नई जनगणना का कार्य मोबाइल ऐप के माध्यम से प्रारम्भ | COVID + माहेश्वरी बन्धुओं को नि:
                    शुल्क
                    परामर्श हेतु एपैक्स हास्पिटल के सहयोग से COVID -19 हैल्पलाइन 9024177987 संचालित है |
                </marquee>
            </div>
        </div>
</div>
        
               <!-------------------------------first slideshow-->
               <!-- this slider can be used multiple times on the same page -->
<!-- don't change class names because slider will not work -->
<div class="slider">
  <div class="imgs">
    <!-- you can add divs with class img here and they will be 
         automatically added to slider -->
    <!-- style="left: 0;" in case JS is disabled -->
    <div class="img" style="left: 0;"> 
      
    </div>
    <div class="img">
      
    </div>
    <div class="img">
      
    </div>
    <div class="img">
      
    </div>
  </div>
  <div class="dots"></div>
</div>
            
        

        <!-----------------------------------------------------------------------------------------committee members-->
        <div class="col-md-1"></div>
            <div class="col-md-10" style="margin-top:-50px">
                <div class="border-box" style="">
                    <h2 class="heading-text">Kayast Chandrasenya Samaj Mgmt. Committee <a href="/categoriescommittee"> All</a></h2>
                    <div class="samaj-member-slider">
                        <div class="camen">
                            <div class="col-md-3">

                                <h4 class="heading-text" style="text-align: center;"><a href="/karyakarni#home">  श्री माहेश्वरी समाज </a></h4>

                                <div>
                                    <div class="member-image">
                                        <div class="hover-show">
                                            <span class="number">
                                            </span>
                                        </div>
                                        <img src="<%="images/"+imageName.get(0)%>" alt=""/>      </div>

                                    <div class="emmber-detail text-center">
                                        <b><a href="/single/committee/774" ><h5><%=name.get(0)%></h5></a></b>
                                        <!--style='font-family:"KrutiDev010";'-->
                                        <i><h6><%=post.get(0)%></h6></i>
                                        <!--style='font-family: "KrutiDev010";'-->
                                    </div>
                                </div>



                                <div>
                                    <div class="member-image">
                                        <div class="hover-show">
                                            <span class="number">
                                            </span>
                                        </div>
                                        <img src="<%="images/"+imageName.get(1)%>" alt=""/>      </div>

                                    <div class="emmber-detail text-center">
                                        <b><a href="/single/committee/58" ><h5><%=name.get(1)%></h5></a></b>
                                        <!--style='font-family:"KrutiDev010";'-->
                                        <i><h6><%=post.get(1)%></h6></i>
                                        <!--style='font-family: "KrutiDev010";'-->
                                    </div>
                                </div>


                            </div>


                            <div class="col-md-3">

                                <h4 class="heading-text" style="text-align: center;"><a href="/karyakarni#menu1"> श्री माहेश्वरी महिला परिषद </a></h4>

                                <div>
                                    <div class="member-image">
                                        <div class="hover-show">
                                            <span class="number">
                                            </span>
                                        </div>
                                        <img src="<%="images/"+imageName.get(2)%>" alt=""/>      </div>

                                    <div class="emmber-detail text-center">
                                        <b><a href="/single/committee/628" ><h5><%=name.get(2)%></h5></a></b>
                                        <!--style='font-family:"KrutiDev010";'-->
                                        <i><h6><%=post.get(2)%></h6></i>
                                        <!--style='font-family: "KrutiDev010";'-->
                                    </div>
                                </div>






                                <div>
                                    <div class="member-image">
                                        <div class="hover-show">
                                            <span class="number">
                                            </span>
                                        </div>
                                        <img src="<%="images/"+imageName.get(3)%>" alt=""/>      </div>

                                    <div class="emmber-detail text-center">
                                        <b><a href="/single/committee/632" ><h5><%=name.get(3)%></h5></a></b>
                                        <!--style='font-family:"KrutiDev010";'-->
                                        <i><h6><%=post.get(3)%></h6></i>
                                        <!--style='font-family: "KrutiDev010";'-->
                                    </div>
                                </div>


                            </div>


                            <div class="col-md-3">

                                <h4 class="heading-text" style="text-align: center;"><a href="/karyakarni#menu2">श्री माहेश्वरी नवयुवक मंडल </a></h4>

                                <div>
                                    <div class="member-image">
                                        <div class="hover-show">
                                            <span class="number">
                                            </span>
                                        </div>
                                        <img src="<%="images/"+imageName.get(4)%>" alt=""/>      </div>

                                    <div class="emmber-detail text-center">
                                        <b><a href="/single/committee/106658" ><h5><%=name.get(4)%></h5></a></b>
                                        <!--style='font-family:"KrutiDev010";'-->
                                        <i><h6><%=post.get(4)%></h6></i>
                                        <!--style='font-family: "KrutiDev010";'-->
                                    </div>
                                </div>






                                <div>
                                    <div class="member-image">
                                        <div class="hover-show">
                                            <span class="number">
                                            </span>
                                        </div>
                                        <img src="<%="images/"+imageName.get(5)%>" alt=""/>      </div>

                                    <div class="emmber-detail text-center">
                                        <b><a href="/single/committee/106662" ><h5><%=name.get(5)%></h5></a></b>
                                        <!--style='font-family:"KrutiDev010";'-->
                                        <i><h6><%=post.get(5)%></h6></i>
                                        <!--style='font-family: "KrutiDev010";'-->
                                    </div>
                                </div>


                            </div>
                                        
                                        <div class="col-md-3">

                                <h4 class="heading-text" style="text-align: center;"><a href="/karyakarni#menu2">श्री माहेश्वरी नवयुवक मंडल </a></h4>

                                <div>
                                    <div class="member-image">
                                        <div class="hover-show">
                                            <span class="number">
                                            </span>
                                        </div>
                                        <img src="<%="images/"+imageName.get(4)%>" alt=""/>      </div>

                                    <div class="emmber-detail text-center">
                                        <b><a href="/single/committee/106658" ><h5><%=name.get(4)%></h5></a></b>
                                        <!--style='font-family:"KrutiDev010";'-->
                                        <i><h6><%=post.get(4)%></h6></i>
                                        <!--style='font-family: "KrutiDev010";'-->
                                    </div>
                                </div>






                                <div>
                                    <div class="member-image">
                                        <div class="hover-show">
                                            <span class="number">
                                            </span>
                                        </div>
                                        <img src="<%="images/"+imageName.get(5)%>" alt=""/>      </div>

                                    <div class="emmber-detail text-center">
                                        <b><a href="/single/committee/106662" ><h5><%=name.get(5)%></h5></a></b>
                                        <!--style='font-family:"KrutiDev010";'-->
                                        <i><h6><%=post.get(5)%></h6></i>
                                        <!--style='font-family: "KrutiDev010";'-->
                                    </div>
                                </div>


                            </div>


                        </div>
                    </div>
                </div>
            </div>
<div class="col-md-1"></div>
                                        
                                        
                                        <div class="col-md-4" style="margin-left: 50px;margin-top:50px;border:2px solid black;border-radius:5px;">
        <center><h2 style="font-size:28px;font-weight: bolder;margin-top:15px;border-bottom: 3px solid red;width:150px;padding-bottom: 5px;">ABOUT US</h2>
            
            <p style="margin-top:30px;font-size:16px;width:98%;"><%=about%><a href="AboutUs">read more...</a></p>
</center>
  </div>
                                        <!--------------------------------------achivements-->
                                                                            
 <div class="col-md-7" style="margin-top:30px">
  <div class="awards border-box">
  <h2 class="heading-text">Achievement <a href="Achievements">View All</a></h2>
  <section>
  <div id="cCarousel">
    <div class="arrow" id="prev"><i class="fa-solid fa-chevron-left"></i></div>
    <div class="arrow" id="next"><i class="fa-solid fa-chevron-right"></i></div>

    <div id="carousel-vp" style="margin-left:7%">
      <div id="cCarousel-inner">

        <article class="cCarousel-item">
          <img  style="margin-top:20px" src="<%="achievements/"+imageNameAc.get(0)%>" alt="Moon">
          <div class="infos">
              <h3 style="margin-top:0px;margin-left:-70px"><%=nameAc.get(0)%></h3>
              <div style="margin-top:-20px;margin-left:-60px;height: 30px;width:170px"><%=desc.get(0)%></div>
            <form style="margin-top:-20px" action="SingleAchievement" method="post">
              <input type="hidden" name="achieverName" value="<%=nameAc.get(0)%>">
              <input type="submit" style="border:none;background: none;margin-right:-19px;color: orange" value="see more...">

            </form> 
          </div>
        </article>

        <article class="cCarousel-item">
          <img  style="margin-top:20px" src="<%="achievements/"+imageNameAc.get(1)%>" alt="Moon">
          <div class="infos">
            <h3 style="margin-top:0px;margin-left:-70px"><%=nameAc.get(1)%></h3>
              <div style="margin-top:-20px;margin-left:-60px;height: 30px;width:170px"><%=desc.get(1)%></div>
            <form style="margin-top:-20px" action="SingleAchievement" method="post">
              <input type="hidden" name="achieverName" value="<%=nameAc.get(1)%>">
              <input type="submit" style="border:none;background: none;margin-right:-19px;color: orange" value="see more...">

            </form>
          </div>
        </article>

        <article class="cCarousel-item">
          <img  style="margin-top:20px" src="<%="achievements/"+imageNameAc.get(2)%>" alt="Moon">
          <div class="infos">
            <h3 style="margin-top:0px;margin-left:-70px"><%=nameAc.get(2)%></h3>
              <div style="margin-top:-20px;margin-left:-60px;height: 30px;width:170px"><%=desc.get(2)%></div>
            <form style="margin-top:-20px" action="SingleAchievement" method="post">
              <input type="hidden" name="achieverName" value="<%=nameAc.get(2)%>">
              <input type="submit" style="border:none;background: none;margin-right:-19px;color: orange" value="see more...">

            </form>
          </div>
        </article>

        <article class="cCarousel-item">
          <img  style="margin-top:20px" src="<%="achievements/"+imageNameAc.get(3)%>" alt="Moon">
          <div class="infos">
            <h3 style="margin-top:0px;margin-left:-70px"><%=nameAc.get(3)%></h3>
              <div style="margin-top:-20px;margin-left:-60px;height: 30px;width:170px"><%=desc.get(3)%></div>
            <form style="margin-top:-20px" action="SingleAchievement" method="post">
              <input type="hidden" name="achieverName" value="<%=nameAc.get(3)%>">
              <input type="submit" style="border:none;background: none;margin-right:-19px;color: orange" value="see more...">

            </form>
          </div>
        </article>

        <article class="cCarousel-item">
          <img  style="margin-top:20px" src="<%="achievements/"+imageNameAc.get(4)%>" alt="Moon">
          <div class="infos">
            <h3 style="margin-top:0px;margin-left:-70px"><%=nameAc.get(4)%></h3>
              <div style="margin-top:-20px;margin-left:-60px;height: 30px;width:170px"><%=desc.get(4)%></div>
            <form style="margin-top:-20px" action="SingleAchievement" method="post">
              <input type="hidden" name="achieverName" value="<%=nameAc.get(4)%>">
              <input type="submit" style="border:none;background: none;margin-right:-19px;color: orange" value="see more...">

            </form>
          </div>
        </article>

        <article class="cCarousel-item">
          <img  style="margin-top:20px" src="<%="achievements/"+imageNameAc.get(5)%>" alt="Moon">
          <div class="infos">
           <h3 style="margin-top:0px;margin-left:-70px"><%=nameAc.get(5)%></h3>
              <div style="margin-top:-20px;margin-left:-60px;height: 30px;width:170px"><%=desc.get(5)%></div>
            <form style="margin-top:-20px" action="SingleAchievement" method="post">
              <input type="hidden" name="achieverName" value="<%=nameAc.get(05)%>">
              <input type="submit" style="border:none;background: none;margin-right:-19px;color: orange" value="see more...">

            </form>
          </div>
        </article>
      </div>
    </div>
  </div>
</section>
  </div>
     </div>
                                        
          
              
                                  
                       
                                        
          <%if(arrr.isEmpty()==false){%>
                                      <div class="ads-img" >
                                          <img src="<%= "advertise/"+arrr.get(0)%>" style="margin-top:40px;" width="100%" height="300px" alt=""/>  
                                      </div>
                                      <%}%>
                                      
                                      
                                      
                                      
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
		
          
          
          
      
          

  
 
  			
<!--        <script src="slick.js"></script>
        <script src="custome.js"></script>-->
        <script>
            
            //---------------------------------------------achivements

const prev = document.querySelector("#prev");
const next = document.querySelector("#next");

let carouselVp = document.querySelector("#carousel-vp");

let cCarouselInner = document.querySelector("#cCarousel-inner");
let carouselInnerWidth = cCarouselInner.getBoundingClientRect().width;

let leftValue = 0;

// Variable used to set the carousel movement value (card's width + gap)
const totalMovementSize =
  parseFloat(
    document.querySelector(".cCarousel-item").getBoundingClientRect().width,
    10
  ) +
  parseFloat(
    window.getComputedStyle(cCarouselInner).getPropertyValue("gap"),
    10
  );

prev.addEventListener("click", () => {
  if (!leftValue == 0) {
    leftValue -= -totalMovementSize;
    cCarouselInner.style.left = leftValue + "px";
  }
});

next.addEventListener("click", () => {
  const carouselVpWidth = carouselVp.getBoundingClientRect().width;
  if (carouselInnerWidth - Math.abs(leftValue) > carouselVpWidth) {
    leftValue -= totalMovementSize;
    cCarouselInner.style.left = leftValue + "px";
  }
});

const mediaQuery510 = window.matchMedia("(max-width: 510px)");
const mediaQuery770 = window.matchMedia("(max-width: 770px)");

mediaQuery510.addEventListener("change", mediaManagement);
mediaQuery770.addEventListener("change", mediaManagement);

let oldViewportWidth = window.innerWidth;

function mediaManagement() {
  const newViewportWidth = window.innerWidth;

  if (leftValue <= -totalMovementSize && oldViewportWidth < newViewportWidth) {
    leftValue += totalMovementSize;
    cCarouselInner.style.left = leftValue + "px";
    oldViewportWidth = newViewportWidth;
  } else if (
    leftValue <= -totalMovementSize &&
    oldViewportWidth > newViewportWidth
  ) {
    leftValue -= totalMovementSize;
    cCarouselInner.style.left = leftValue + "px";
    oldViewportWidth = newViewportWidth;
  }
}

            
//            -----------------first slider
{
  const sliders = document.querySelectorAll(".slider");
  // interval between switching images
  // can't be less than your animation duration in css!
  const interval = 2800;
  // if you don't want to first animation last longer than other animations  
  // set animDuration (in miliseconds) to your value of animation duration in css
  const animDuration = 600;

  for (let i = 0; i <= sliders.length; ++i) {
    const slider = sliders[i];
    const dots = slider.querySelector(".dots");
    const sliderImgs = slider.querySelectorAll(".img");

    let currImg = 0;
    let prevImg = sliderImgs.length - 1;
    let intrvl;
    let timeout;

    // Creates dots and add listeners to them
    for (let i = 0; i < sliderImgs.length; ++i) {
      const dot = document.createElement("div");
      dot.classList.add("dot");
      dots.appendChild(dot);
      dot.addEventListener("click", dotClick.bind(null, i), false);
    }

    const allDots = dots.querySelectorAll(".dot");
    allDots[0].classList.add("active-dot");

    sliderImgs[0].style.left = "0";
    timeout = setTimeout(() => {
      animateSlider();
      sliderImgs[0].style.left = "";
      intrvl = setInterval(animateSlider, interval);
    }, interval - animDuration);   

    /**
     * Animates images
     * @param {number} [nextImg] - index of next image to show
     * @param {boolean} [right = false] - animate to right
     */
    function animateSlider(nextImg, right) {
      if (!nextImg)
        nextImg = currImg + 1 < sliderImgs.length ? currImg + 2 : 1;

      --nextImg;
      sliderImgs[prevImg].style.animationName = "";

      if (!right) {
        sliderImgs[nextImg].style.animationName = "leftNext";
        sliderImgs[currImg].style.animationName = "leftCurr";
      } 
      else {
        sliderImgs[nextImg].style.animationName = "rightNext";
        sliderImgs[currImg].style.animationName = "rightCurr";
      }

      prevImg = currImg;
      currImg = nextImg;

      currDot = allDots[currImg];
      currDot.classList.add("active-dot");
      prevDot = allDots[prevImg];
      prevDot.classList.remove("active-dot");
    }

    /**
     * Decides if animate to left or right and highlights clicked dot
     * @param {number} num - index of clicked dot
     */
    function dotClick(num) {
      if (num == currImg)
        return false;

      clearTimeout(timeout);
      clearInterval(intrvl);

      if (num > currImg)
        animateSlider(num + 1);
      else
        animateSlider(num + 1, true);

      intrvl = setInterval(animateSlider, interval);
    }
  }
}
            
            
            
            



	


        </script>
    </div>    
</body>

</html>
