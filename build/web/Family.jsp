<%-- 
    Document   : Family
    Created on : 25 Jun, 2023, 10:50:00 AM
    Author     : deshp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<Html>  
    <head>   
    <title>  
    Registration Page  
    </title> 
<!--        <link rel="stylesheet" href="bootstrap.css" />
    <link rel="stylesheet" href="font-awesome.min.css" />
    <link rel="stylesheet" href="animate.min.css" />
    <link rel="stylesheet" href="stylee.css" />
    <link rel="stylesheet" href="media.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />-->

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
    margin-left:40px;
}

#branding{
    font-size:30px;
    font-weight: bolder;
    width:230px;
    height: 40px;
    float:left;
    margin-top:30px;
    margin-left:10px;
}


.header a {
    color: rgb(0, 0, 0);
    text-decoration: none;
    font-size: 18px;
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
    </style> 
    </head>  
    <body bgcolor="antiquewhite">  
        
        
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
                        <li><a href="homepage.jsp">COMMITTEE</a></li>
                        <li><a href="Achievements">ACHIEVEMENT</a></li>
                        <li><a href="#services">GALLERY</a></li>
                        <li><a href="Payment">PAYMENT</a></li>
                    </ul>  
                </div>
            </div>
        </header>
        
        
        
        
    <br>  
    <br>  
    
    <Html>  
    <head>   
    <title>  
    Registration Page  
    </title> 
    <style>
        
    </style> 
    </head>  
    <body bgcolor="antiquewhite">  
        
    <br>  
    <br>  
    <div class ="container" style="color:brown;font-size:40px;font-weight:bold">
        Family Regristration <hr>

    
    </div><br>
    <form >  
      
    <label>Family Head Name :</Head></label> <br>       
    <input type="text" name="firstname" size="15"/> <br> <br>
    <label> Gotra : </label><br>
    <input type="text" name="middlename" size="15"/> <br> <br>  
    <label> Profession/Business: </label><br>       
    <input type="text" name="lastname" size="15"/> <br> <br>  
      
    <label>   
    No.of Persons in Family:
    </label> <br>
    <select onchange="persons_family();" id="persons">  
        <option selected disabled>SELECT</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
    </select>  
    <hr>
    
    <section id="address_info">

    </section>
<br>
<div class="d">
    Contact detail <br><input text=""/> 
</div>
<div>
    Email<br><input text=""/> <br>

</div><br>
<div>
    Info given by<br><input text=""/><br>
</div>
<hr>
<button type ="submit"> Register Family</button>

    </form>  

    <script>
        function persons_family() {
            var persons_count = document.getElementById('persons').value;

            for (let index = 1; index <=persons_count; index++) {

                document.getElementById('address_info').innerHTML += `<div class="class">
        <label for="f">Name of Person</label>
        <input type="text">
        <label for="p">Relation with Family Head</label>
        <input type="text">
        <label for="f">DOB</label>
        <label for="start"></label>

<input type="date" id="start"
       value="2018-07-22"
       min="1900-01-01" max="2099-12-31">
    
        <label for="p">Marital Status</label>
        <select>
            <option value="1">Select</option>
            <option value="2">Single</option>
            <option value="3">Married</option>
            </select>
        
        <label for="f">Educaton qualification</label>
        <input type="text">
        <label for="f">Current Status</label>
        <input type="text">
        
    </div><div class="demo">
        <h2>Current Address ${index} </h2> 
            Village/FlatNo.<input id = "cvillage${index}" type="text"/><br> <br>
            Post/Area<input "cpost${index}"  type="text"/> <br> <br>
            Tehsil/LandMark <input"cTehsil${index}" type="text"><br><br>
            District/City <input id="cDistrict${index}"type="text"><br><br>
            State<select>  
                <option value="1">Choose</option>
                <option value="1">Madhya Pradesh</option>
                <option value="2">Chhattisgarh</option>
                <option value="3">Uttar Pradesh</option>
                <option value="4">Gujrat</option>
                <option value="5">Maharashtra</option>
                <option value="6">Rajasthan</option>
                <option value="7">Bihar</option>
                <option value="8">Jharkhand</option>
                <option value="9">Odisha</option>
                <option value="10">West Bengal</option>
                <option value="11">Andhra Pradesh</option>
                <option value="12">Karnataka</option>
                <option value="13">Kerala</option>
                <option value="14">Tamil Nadu</option>
                <option value="15">Telangana</option>
                <option value="16">Jammu and Kashmir</option>
                <option value="17">Himachal Pradesh</option>
                <option value="18">Punjab</option>
                <option value="19">Uttarakhand</option>
                <option value="20">Tripura</option>
                <option value="21">Arunachal Pradesh</option>
                <option value="22">Assam</option>
                <option value="23">Goa</option>
                <option value="24">Haryana</option>
                <option value="25">Manipur</option>
                <option value="26">Mizoram</option>
                <option value="27">Meghalaya</option>
                <option value="28">Nagaland</option>
                <option value="29">Sikkim</option>
               
    </select>  
    <hr>
</div> <div class="demo">
    <h2>Permanent Address ${index} </h2> 
        Village/FlatNo.<input "pvillage${index}" type="text"/><br> <br>
        Post/Area<input "ppost${index}" type="text"/> <br> <br>
        Tehsil/LandMark <input "pTehsil${index}" type="text"><br><br>
        District/City <input "pDistrict${index}" type="text"><br><br>
        <br>
        State<select>  
            <option value="1">Choose</option>
            <option value="1">Madhya Pradesh</option>
            <option value="2">Chhattisgarh</option>
            <option value="3">Uttar Pradesh</option>
            <option value="4">Gujrat</option>
            <option value="5">Maharashtra</option>
            <option value="6">Rajasthan</option>
            <option value="7">Bihar</option>
            <option value="8">Jharkhand</option>
            <option value="9">Odisha</option>
            <option value="10">West Bengal</option>
            <option value="11">Andhra Pradesh</option>
            <option value="12">Karnataka</option>
            <option value="13">Kerala</option>
            <option value="14">Tamil Nadu</option>
            <option value="15">Telangana</option>
            <option value="16">Jammu and Kashmir</option>
            <option value="17">Himachal Pradesh</option>
            <option value="18">Punjab</option>
            <option value="19">Uttarakhand</option>
            <option value="20">Delhi</option>
            <option value="21">Arunachal Pradesh</option>
            <option value="22">Assam</option>
            <option value="23">Goa</option>
            <option value="24">Haryana</option>
            <option value="25">Manipur</option>
            <option value="26">Mizoram</option>
            <option value="27">Meghalaya</option>
            <option value="28">Nagaland</option>
            <option value="29">Sikkim</option>
            <option value="29">Tripura</option>
</select>  
</div>`;
                
            }
        }
    </script>

    </body>  
</Html>
    
    
    
    
    </body>  
</Html>
