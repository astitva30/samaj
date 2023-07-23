<%-- 
    Document   : Payment
    Created on : 23 Jun, 2023, 8:59:49 PM
    Author     : deshp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%
          ArrayList<String> arr1=  (ArrayList)session.getAttribute("bankId");
            ArrayList<String> arr2=   (ArrayList)session.getAttribute("bankName");
              ArrayList<String> arr3=   (ArrayList)session.getAttribute("accountNo");
                ArrayList<String> arr4=   (ArrayList)session.getAttribute("accountName");
                  ArrayList<String> arr5=   (ArrayList)session.getAttribute("branchCode");
                    ArrayList<String> arr6=   (ArrayList)session.getAttribute("branchName");
                      ArrayList<String> arr7=   (ArrayList)session.getAttribute("ifsCode");
                        ArrayList<String> arr8=   (ArrayList)session.getAttribute("address");
                          ArrayList<String> arr9=   (ArrayList)session.getAttribute("pincode");
                            ArrayList<String> arr10=   (ArrayList)session.getAttribute("ph1");
                              ArrayList<String> arr11=   (ArrayList)session.getAttribute("image");
                              
                              int length = arr1.size();
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
            
            
            /*---------------------header*/
            
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
    color:black;
    font-weight: bolder;
    width:230px;
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
/*=============== GOOGLE FONTS ===============*/


:root {
  --accent-color: red;
}

body {
  font-family: "Poppins", sans-serif;
  background-color: #eee;
  color: #444;
}

h1 {
  margin: 30px 0 30px;
  text-align: center;
  color: var(--accent-color);
}

.faq-container {
  max-width: 70%;
  margin: 0 auto;
  border-radius: 10px;
  background-color: #fff;
  overflow: hidden;
  box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 12px;
}

.faq {
  box-sizing: border-box;
  background: transparent;
  padding: 30px;
  position: relative;
  overflow: hidden;
}

.faq:not(:first-child) {
  border-top: 1px solid #e6e6e6;
}

.faq-title {
  margin: 0 35px 0 0;
}

.faq-text {
  margin: 30px 0 0;
  display: none;
  line-height: 1.5rem;
}

.faq.active {
  background-color: #f8f8f8;
  box-shadow: inset 4px 0px 0px 0px var(--accent-color);
}

.faq.active .faq-title {
  color: var(--accent-color);
}

.faq.active .faq-text {
  display: block;
}

.faq-toggle {
  background-color: transparent;
  border: 1px solid #e6e6e6;
  color: inherit;
  border-radius: 50%;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 16px;
  padding-top: 3px;
  position: absolute;
  top: 30px;
  right: 30px;
  height: 30px;
  width: 30px;
  transition: 0.3s ease;
}

.faq-toggle:focus {
  outline: none;
}

.faq.active .faq-toggle {
  transform: rotate(180deg);
  background-color: var(--accent-color);
  border-color: var(--accent-color);
  color: #fff;
}
/*--------------------------------------------bank Image*/
.bankimage{
    margin-top: 33px;
    padding: 5px 5px;
    
    border:2px solid red;
}
/*---------------------------------------------------------------table*/
table{
    margin-left:25px;
  margin-top: 30px;
  width: 100%;
  border:none;
  table-layout: fixed;
}
td{
   border: 1px solid black;
   overflow: hidden;
   white-space: nowrap;
   border:none;
}
.short-desc{
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    width: 90%;
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
                        <li><a href="#">FAMILY</a></li>
                        <li><a href="#">EVENT</a></li>
                        <li><a href="CommitteeMembers">COMMITTEE</a></li>
                        <li><a href="Achievements">ACHIEVEMENT</a></li>
                        <li><a href="#services">GALLERY</a></li>
                        <li><a href="#">PAYMENT</a></li>
                    </ul>  
                </div>
            </div>
        </header>
        
        
        
        
        <h1>Payment Options</h1>
<div class="faq-container">
  <div class="faq active">
    <h3 class="faq-title">
      BANK OF INDIA
    </h3>
      <div class="faq-text">
          <h3>Cheque Deposit / Cash Deposit / Online NEFT Transfer</h3>
          <div class="bankimage col-md-4">
              
            <img src="<%="bank/"+arr11.get(0)%>" >
          </div>
          <div class="col-md-8">
              <table>
    <thead>
      <tr>
        <td width="17%"></td>
        <td width="2%"></td>
        <td width="81%"></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Bank Name</td>
        <td>:</td>
        <td><%=arr2.get(0)%></td>
      </tr>
      <tr>
        <td>Account Number</td>
        <td>:</td>
        <td><%=arr3.get(0)%></td>
      </tr><tr>
        <td>Account Name</td>
        <td>:</td>
        <td><%=arr4.get(0)%></td>
      </tr>
      <tr>
        <td>Branch Code</td>
        <td>:</td>
        <td><%=arr5.get(0)%></td>
      </tr><tr>
        <td>Branch Name</td>
        <td>:</td>
        <td><%=arr6.get(0)%></td>
      </tr>
      <tr>
        <td>IFS Code</td>
        <td>:</td>
        <td><%=arr7.get(0)%></td>
      </tr>
      <tr>
        <td>Address</td>
        <td>:</td>
        <td><%=arr8.get(0)%></td>
      </tr>
      <tr>
        <td>Pincode</td>
        <td>:</td>
        <td><%=arr9.get(0)%></td>
      </tr>
      <tr>
        <td>Phone</td>
        <td>:</td>
        <td><%=arr10.get(0)%></td>
      </tr>
    </tbody>
  </table>
  
              
          </div>
      </div>
    <button class="faq-toggle">
      <i class="fas fa-angle-down"></i>
    </button>
  </div>
    
        <%for(int i=1;i<arr1.size();i++){%>
    <div class="faq">
    <h3 class="faq-title">
      STATE BANK OF INDIA
    </h3>
      <div class="faq-text">
          <h3>Cheque Deposit / Cash Deposit / Online NEFT Transfer</h3>
          <div class="bankimage col-md-4">
              
            <img src="<%="bank/"+arr11.get(i)%>" >
          </div>
          <div class="col-md-8">
              <table>
    <thead>
      <tr>
        <td width="17%"></td>
        <td width="2%"></td>
        <td width="81%"></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Bank Name</td>
        <td>:</td>
        <td><%=arr2.get(i)%></td>
      </tr>
      <tr>
        <td>Account Number</td>
        <td>:</td>
        <td><%=arr3.get(i)%></td>
      </tr><tr>
        <td>Account Name</td>
        <td>:</td>
        <td><%=arr4.get(i)%></td>
      </tr>
      <tr>
        <td>Branch Code</td>
        <td>:</td>
        <td><%=arr5.get(i)%></td>
      </tr><tr>
        <td>Branch Name</td>
        <td>:</td>
        <td><%=arr6.get(i)%></td>
      </tr>
      <tr>
        <td>IFS Code</td>
        <td>:</td>
        <td><%=arr7.get(i)%></td>
      </tr>
      <tr>
        <td>Address</td>
        <td>:</td>
        <td><%=arr8.get(i)%></td>
      </tr>
      <tr>
        <td>Pincode</td>
        <td>:</td>
        <td><%=arr9.get(i)%></td>
      </tr>
      <tr>
        <td>Phone</td>
        <td>:</td>
        <td><%=arr10.get(i)%></td>
      </tr>
    </tbody>
  </table>
  
              
          </div>
      </div>
    <button class="faq-toggle">
      <i class="fas fa-angle-down"></i>
    </button>
  </div>
<%}%>
  </div>

  

  

  
</div>



<!--footer----------------------------->
<footer class="footer-section" style="margin-top:30px;">
    <div class="black-footer-line">
        <div class="container">
        <div class="foter-icon">
            <div class="logo-footer">
            <img src="logo.jpg"  width="150px" height="" alt="">
            </div>
            
            <div class="link-so">
                <ul class="footer-menu"> 
                    <li><a href="https://www.maheshwarisamajjaipur.com/contact-us">Contact Us</a></li>
                    <li><a href="https://www.maheshwarisamajjaipur.com/awards">Awards</a></li>
                    <li><a href="http://jaipurmaheshwari.com/" target='_blank'>Matrimonial</a></li>
                    <li><a href="http://www.maheshwarimahasabha.org/" target='_blank'>Akhil Bhartiya  Mahasabha</a></li>
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

<script>
    const buttons = document.querySelectorAll(".faq-toggle");

buttons.forEach((button) => {
  button.addEventListener("click", () =>
    button.parentElement.classList.toggle("active")
  );
});
</script>
    </body>
</html>
