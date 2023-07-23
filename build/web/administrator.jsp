
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%-- 
    Document   : administrator
    Created on : 21 Jun, 2023, 7:45:23 PM
    Author     : deshp
--%>
<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.Connection"%>

<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/samaj","root","root");
    PreparedStatement st = con.prepareStatement("Select * from committee_members");
    ResultSet records = st.executeQuery();
   
    ArrayList array1 = new ArrayList();
    ArrayList array2 = new ArrayList();
    ArrayList array3 = new ArrayList();
    ArrayList array4 = new ArrayList();
    
    while(records.next()){
        array1.add(records.getString(1));
        array2.add(records.getString(2));
        array3.add(records.getString(3));
        array4.add(records.getString(4));
    }
    PreparedStatement statm = con.prepareStatement("Select * from committee_mahila");
    ResultSet rec = statm.executeQuery();
   
    ArrayList arraym1 = new ArrayList();
    ArrayList arraym2 = new ArrayList();
    ArrayList arraym3 = new ArrayList();
    ArrayList arraym4 = new ArrayList();
    
    while(rec.next()){
        arraym1.add(rec.getString(1));
        arraym2.add(rec.getString(2));
        arraym3.add(rec.getString(3));
        arraym4.add(rec.getString(4));
    }
    PreparedStatement statem = con.prepareStatement("Select * from committee_navyuvak");
    ResultSet reco = statem.executeQuery();
   
    ArrayList arrayn1 = new ArrayList();
    ArrayList arrayn2 = new ArrayList();
    ArrayList arrayn3 = new ArrayList();
    ArrayList arrayn4 = new ArrayList();
    
    while(reco.next()){
        arrayn1.add(reco.getString(1));
        arrayn2.add(reco.getString(2));
        arrayn3.add(reco.getString(3));
        arrayn4.add(reco.getString(4));
    }
    PreparedStatement stm = con.prepareStatement("Select * from achievementtable");
    ResultSet records1 = stm.executeQuery();
   
    ArrayList arr1 = new ArrayList();
    ArrayList arr2 = new ArrayList();
    ArrayList arr3 = new ArrayList();
    ArrayList arr4 = new ArrayList();
    
    while(records1.next()){
        arr1.add(records1.getString(1));
        arr2.add(records1.getString(2));
        arr3.add(records1.getString(3));
        arr4.add(records1.getString(4));
    }

    PreparedStatement stt = con.prepareStatement("Select * from advertise");
    ResultSet records2 = stt.executeQuery();
   
    ArrayList arry1 = new ArrayList();
    ArrayList arry2 = new ArrayList();
    ArrayList arry3 = new ArrayList();
    
    while(records2.next()){
        arry1.add(records2.getString(1));
        arry2.add(records2.getString(2));
        arry3.add(records2.getString(3));
    }

    PreparedStatement stat = con.prepareStatement("Select * from bankDetails");
    ResultSet records3 = stat.executeQuery();
   
    ArrayList arrr1 = new ArrayList();
    ArrayList arrr2 = new ArrayList();
    ArrayList arrr3 = new ArrayList();
    ArrayList arrr4 = new ArrayList();
    ArrayList arrr5 = new ArrayList();
    ArrayList arrr6 = new ArrayList();
    ArrayList arrr7 = new ArrayList();
    ArrayList arrr8 = new ArrayList();
    ArrayList arrr9 = new ArrayList();
    ArrayList arrr10 = new ArrayList();
    ArrayList arrr11 = new ArrayList();
    
    while(records3.next()){
        arrr1.add(records3.getString(1));
        arrr2.add(records3.getString(2));
        arrr3.add(records3.getString(3));
        arrr4.add(records3.getString(4));
        arrr5.add(records3.getString(5));
        arrr6.add(records3.getString(6));
        arrr7.add(records3.getString(7));
        arrr8.add(records3.getString(8));
        arrr9.add(records3.getString(9));
        arrr10.add(records3.getString(10));
        arrr11.add(records3.getString(11));
    }
    
//-------------------------------about us
ArrayList<String> arr= new ArrayList<String>();
            
            PreparedStatement p = con.prepareStatement("Select * from about");
            ResultSet rs= p.executeQuery();
            while(rs.next()){
                arr.add(rs.getString(2));
                arr.add(rs.getString(3));
                arr.add(rs.getString(4));
                arr.add(rs.getString(5));
                arr.add(rs.getString(6));
                
            }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>
            *{
                box-sizing: border-box;
            }
            
            /*------------------------------------header*/
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
            /*---------------------------------/*/
            
            
            .fieldtheme{
                border: 2px solid black;
            }
            h2{
    text-align: center;
    font-size: 25px;
    text-transform: uppercase;
    letter-spacing: 1px;
    margin-top:50px;
    color: black;
}
            .table-wrapper{
    margin: 10px 70px 70px;
    box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
}

.fl-table {
    margin-top:50px;
    border-radius: 5px;
    font-size: 20px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 100%;
    max-width: 100%;
    white-space: nowrap;
    background-color: white;
}

.fl-table td, .fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
    font-size: 15px;
}

.fl-table thead th {
    color: #ffffff;
    background: #4FC3A1;
}


.fl-table thead th:nth-child(odd) {
    color: #ffffff;
    background: #324960;
}

.fl-table tr:nth-child(even) {
    background: #F8F8F8;
}
@media (max-width: 767px) {
    .fl-table {
        display: block;
        width: 100%;
    }
    .table-wrapper:before{
        content: "Scroll horizontally >";
        display: block;
        text-align: right;
        font-size: 11px;
        color: white;
        padding: 0 0 10px;
    }
    .fl-table thead, .fl-table tbody, .fl-table thead th {
        display: block;
    }
    .fl-table thead th:last-child{
        border-bottom: none;
    }
    .fl-table thead {
        float: left;
    }
    .fl-table tbody {
        width: auto;
        position: relative;
        overflow-x: auto;
    }
    .fl-table td, .fl-table th {
        padding: 20px .625em .625em .625em;
        height: 60px;
        vertical-align: middle;
        box-sizing: border-box;
        overflow-x: hidden;
        overflow-y: auto;
        width: 120px;
        font-size: 13px;
        text-overflow: ellipsis;
    }
    .fl-table thead th {
        text-align: left;
        border-bottom: 1px solid #f7f7f9;
    }
    .fl-table tbody tr {
        display: table-cell;
    }
    .fl-table tbody tr:nth-child(odd) {
        background: none;
    }
    .fl-table tr:nth-child(even) {
        background: transparent;
    }
    .fl-table tr td:nth-child(odd) {
        background: #F8F8F8;
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tr td:nth-child(even) {
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tbody td {
        display: block;
        text-align: center;
    }
}



.tab {
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
  float: left;
  padding: 0px 12px;
  width: 70%;
  border-left: none;
  height: 400px;
  border-radius: 0 10px 10px 0;
}

/*---------update button*/
.signup-button{
    margin-top:20px;
    width: 50%;
    height: 50px;
    padding:5px;
    border:4px black solid;
    border-radius: 5px;
    background-color: #fff;
    
    color: black;
    font-size:18px;
    cursor: pointer;
}
.signup-button:hover{
    background: linear-gradient(135deg, #71b7e6, #9b59b6);
    color: black;
    border:2px solid black;            
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
                        
                        <li><a href="LoadHomepage">Logout</a></li>
                    </ul>  
                </div>
            </div>
        </header>
        
        <div class="tab">
  <button class="tablinks" onclick="openTab(event, 'firstTab')" id="defaultOpen">About Us</button>
  <button class="tablinks" onclick="openTab(event, 'secondTab')">Payments</button>
  <button class="tablinks" onclick="openTab(event, 'thirdTab')">Head Committee</button>
  <button class="tablinks" onclick="openTab(event, 'fourthTab')">Mahila Committee</button>
  <button class="tablinks" onclick="openTab(event, 'fifthTab')">Navyuvak Committee</button>
  <button class="tablinks" onclick="openTab(event, 'sixthTab')">Achievements</button>
  <button class="tablinks" onclick="openTab(event, 'seventhTab')">Advertisements</button>
</div>

<div id="firstTab" class="tabcontent">
    
        <!------------------edit home data form-->
        <center><h1>EDIT HOME DATA</h1></center>
        <center><hr style="width:20%;height:4px;color:black;background-color:black;"></center>
                        <form action="EditAboutData" method="post">
                            <center>
                            <table class="edithomeform">
                                <tr><td class="head">ABOUT DESCRIPTION</td><td><textarea style="height: 250px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="description" ><%=arr.get(0)%></textarea> </td> </tr><!-- comment -->
                                <tr><td class="head">ADDRESS:</td><td><textarea style="height: 60px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="address" ><%=arr.get(1)%></textarea> </td> </tr><!-- comment -->
                                <tr><td class="head">PHONE NO:</td><td><textarea style="height: 30px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="phoneNo" ><%=arr.get(2)%></textarea> </td> </tr><!-- comment -->
                                <tr><td class="head">WHATSAPP NO:</td><td><textarea style="height: 30px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="whatsapp" ><%=arr.get(3)%></textarea> </td> </tr><!-- comment -->
                                <tr><td class="head">EMAIL:</td><td><textarea style="height: 30px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="emailId" ><%=arr.get(4)%></textarea> </td> </tr><!-- comment -->
                                
                                

                            </table>
                                <button type="submit" class="signup-button" name="btn2" value="UPDATE">UPDATE</button>
                            </center>
                        </form>
  </div>

<div id="secondTab" class="tabcontent">
    <h2>PAYMENT OPTIONS</h2>
            <hr style="width:350px;height:5px;background-color:black">
    <div class="table-wrapper">
        <table class="fl-table">
            <thead>
            <tr>
                <th>Bank ID</th>
                <th>Bank Name</th>
                <th>Account No</th>                
                <th>Account Name</th>                
                <th>Branch Code</th>                
                <th>Branch Name</th>                
                <th>IFSC Code</th>                
                <th>Address</th> 
                <th>Pincode</th> 
                <th>Phone No</th>  
                <th>Image Name</th>
            </tr>
            </thead>
            <tbody>
                <%
                    for(int i=0;i<arrr1.size();i++){
                %>
                    
            <tr>
                <td><%=arrr1.get(i)%></td>
                <td><%=arrr2.get(i)%></td>
                <td><%=arrr3.get(i)%></td>
                <td><%=arrr4.get(i)%></td>
                <td><%=arrr5.get(i)%></td>
                <td><%=arrr6.get(i)%></td>
                <td><%=arrr7.get(i)%></td>
                <td><%=arrr8.get(i)%></td>
                <td><%=arrr9.get(i)%></td>
                <td><%=arrr10.get(i)%></td>
                <td><%=arrr11.get(i)%></td>
            </tr>
            <%
                }
                %>
            <tbody>
        </table>    
    </div>    
    <center><h1>Insert Payment</h1>
        <hr style="width:20%;height:4px;color:black;background-color:black;margin-bottom: 20px;">
        <form action="InsertPayments" method="post" enctype="multipart/form-data">
            <table>

                <tr><td>Enter Bank Id:</td><td><center><input type="text" class="fieldtheme" name="bankId"></center></td></tr>
                <tr><td>Enter Bank Name:</td><td><center><input type="text" class="fieldtheme" name="bankName"></center></td></tr>
                <tr><td>Enter Account No:</td><td><center><input type="text" class="fieldtheme" name="accountNo"></center></td></tr>
                <tr><td>Enter Account Name:</td><td><center><input type="text" class="fieldtheme" name="accountName"></center></td></tr>
                <tr><td>Enter Branch Code:</td><td><center><input type="text" class="fieldtheme" name="branchCode"></center></td></tr>
                <tr><td>Enter Branch Name:</td><td><center><input type="text" class="fieldtheme" name="branchName"></center></td></tr>
                <tr><td>Enter IFSC Code:</td><td><center><input type="text" class="fieldtheme" name="ifsCode"></center></td></tr>
                <tr><td>Enter Address:</td><td><center><input type="text" class="fieldtheme" name="address"></center></td></tr>
                <tr><td>Enter Pincode:</td><td><center><input type="text" class="fieldtheme" name="pincode"></center></td></tr>
                <tr><td>Enter Phone Number:</td><td><center><input type="text" class="fieldtheme" name="ph1"></center></td></tr>
                <tr><td>Insert Image:</td><td><center><input type="file" class="fieldtheme" name="image"></center></td></tr>
                

                <tr><td colspan="2"><button type="submit" class="signup-button" name="btn2" value="UPDATE"><center>INSERT</center></button></td></tr>
            </table>
        </form>
        </center>  
        <center><h1>Delete Payment</h1>
            <hr style="width:20%;height:4px;color:black;background-color:black;margin-bottom: 20px;">
            <form action="DeletePayment" method="post">
                <center>
                    <table style="border: 3px solid black">
                        <tr><th colspan="2" style="border-bottom:3px solid black">DELETE RECORD</th></tr>
                        <tr><td>ID:</td><td><input type="text" name="id" required></td></tr>
                        <tr><td><input type="submit" value="DELETE" name="delete" style="background:#E14E39;cursor:pointer;color:white"></td></tr>
                    </table>
                </center>
            </form>
  </div>

<div id="thirdTab" class="tabcontent">
  <h2>COMMITTEE MEMBERS</h2>
        <hr style="width:350px;height:5px;background-color:black">
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>Member ID</th>
            <th>Image Name</th>
            <th>Member Name</th>
            <th>Member Post</th>
        </tr>
        </thead>
        <tbody>
            <%
                for(int i=0;i<array1.size();i++){
            %>
                
        <tr>
            <td><%=array1.get(i)%></td>
            <td><%=array2.get(i)%></td>
            <td><%=array3.get(i)%></td>
            <td><%=array4.get(i)%></td>
        </tr>
        <%
            }
            %>
        <tbody>
    </table>
        
</div>
        <center><h1>Insert Committee Members</h1>
             <hr style="width:35%;height:4px;color:black;background-color:black;margin-bottom: 20px;">
            <form action="InsertMember" method="post" enctype="multipart/form-data">
                <table>

                    <tr><td>Member Id:</td><td><center><input type="text" class="fieldtheme" name="memberId"></center></td></tr>
                    <tr><td>Member Name:</td><td><center><input type="text" class="fieldtheme" name="memberName"></center></td></tr>
                    <tr><td>Member Post:</td><td><center><input type="text" class="fieldtheme" name="memberPost"></center></td></tr>
                    <tr><td>Select Image:</td><td><center><input type="file" class="fieldtheme" name="memberImage"></center></td></tr>

                    <tr><td colspan="2"><button type="submit" class="signup-button" name="btn2" value="UPDATE"><center>INSERT</center></button></td></tr>
                </table>
            </form>
            </center>
        <center><h1>Delete Member</h1>
             <hr style="width:20%;height:4px;color:black;background-color:black;margin-bottom: 20px;">
        <form action="DeleteMember" method="post">
            <center>
                <table style="border: 3px solid black">
                    <tr><th colspan="2" style="border-bottom:3px solid black">DELETE RECORD</th></tr>
                    <tr><td>MEMBER ID:</td><td><input type="text" name="id" required></td></tr>
                    <tr><td><input type="submit" value="DELETE" name="delete" style="background:#E14E39;cursor:pointer;color:white"></td></tr>
                </table>
            </center>
        </form>
</div>
        
        <div id="fourthTab" class="tabcontent">
            <h2> MAHILA COMMITTEE MEMBERS</h2>
            <hr style="width:350px;height:5px;background-color:black">
    <div class="table-wrapper">
        <table class="fl-table">
            <thead>
            <tr>
                <th>Member ID</th>
                <th>Image Name</th>
                <th>Member Name</th>
                <th>Member Post</th>
            </tr>
            </thead>
            <tbody>
                <%
                    for(int i=0;i<arraym1.size();i++){
                %>
                    
            <tr>
                <td><%=arraym1.get(i)%></td>
                <td><%=arraym2.get(i)%></td>
                <td><%=arraym3.get(i)%></td>
                <td><%=arraym4.get(i)%></td>
            </tr>
            <%
                }
                %>
            <tbody>
        </table>
            
    </div>
            <center><h1>Insert Mahila Committee Members</h1>
                 <hr style="width:35%;height:4px;color:black;background-color:black;margin-bottom: 20px;">
                <form action="InsertMahilaMember" method="post" enctype="multipart/form-data">
                    <table>
    
                        <tr><td>Member Id:</td><td><center><input type="text" class="fieldtheme" name="memberId"></center></td></tr>
                        <tr><td>Member Name:</td><td><center><input type="text" class="fieldtheme" name="memberName"></center></td></tr>
                        <tr><td>Member Post:</td><td><center><input type="text" class="fieldtheme" name="memberPost"></center></td></tr>
                        <tr><td>Select Image:</td><td><center><input type="file" class="fieldtheme" name="memberImage"></center></td></tr>
    
                        <tr><td colspan="2"><button type="submit" class="signup-button" name="btn2" value="UPDATE"><center>INSERT</center></button></td></tr>
                    </table>
                </form>
                </center>
            <center><h1>Delete Member</h1>
                 <hr style="width:20%;height:4px;color:black;background-color:black;margin-bottom: 20px;">
            <form action="DeleteMahilaMember" method="post">
                <center>
                    <table style="border: 3px solid black">
                        <tr><th colspan="2" style="border-bottom:3px solid black">DELETE RECORD</th></tr>
                        <tr><td>MEMBER ID:</td><td><input type="text" name="id" required></td></tr>
                        <tr><td><input type="submit" value="DELETE" name="delete" style="background:#E14E39;cursor:pointer;color:white"></td></tr>
                    </table>
                </center>
            </form>
        </form>
</div>
        
        
        <div id="fifthTab" class="tabcontent">
  <h2>NAVYUVAK COMMITTEE MEMBERS</h2>
        <hr style="width:350px;height:5px;background-color:black">
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>Member ID</th>
            <th>Image Name</th>
            <th>Member Name</th>
            <th>Member Post</th>
        </tr>
        </thead>
        <tbody>
            <%
                for(int i=0;i<arrayn1.size();i++){
            %>
                
        <tr>
            <td><%=arrayn1.get(i)%></td>
            <td><%=arrayn2.get(i)%></td>
            <td><%=arrayn3.get(i)%></td>
            <td><%=arrayn4.get(i)%></td>
        </tr>
        <%
            }
            %>
        <tbody>
    </table>
        
</div>
        <center><h1>Insert Committee Members</h1>
             <hr style="width:35%;height:4px;color:black;background-color:black;margin-bottom: 20px;">
            <form action="InsertNavyuvakMember" method="post" enctype="multipart/form-data">
                <table>

                    <tr><td>Member Id:</td><td><center><input type="text" class="fieldtheme" name="memberId"></center></td></tr>
                    <tr><td>Member Name:</td><td><center><input type="text" class="fieldtheme" name="memberName"></center></td></tr>
                    <tr><td>Member Post:</td><td><center><input type="text" class="fieldtheme" name="memberPost"></center></td></tr>
                    <tr><td>Select Image:</td><td><center><input type="file" class="fieldtheme" name="memberImage"></center></td></tr>

                    <tr><td colspan="2"><button type="submit" class="signup-button" name="btn2" value="UPDATE"><center>INSERT</center></button></td></tr>
                </table>
            </form>
            </center>
        <center><h1>Delete Member</h1>
             <hr style="width:20%;height:4px;color:black;background-color:black;margin-bottom: 20px;">
        <form action="DeleteNavyuvakMember" method="post">
            <center>
                <table style="border: 3px solid black">
                    <tr><th colspan="2" style="border-bottom:3px solid black">DELETE RECORD</th></tr>
                    <tr><td>MEMBER ID:</td><td><input type="text" name="id" required></td></tr>
                    <tr><td><input type="submit" value="DELETE" name="delete" style="background:#E14E39;cursor:pointer;color:white"></td></tr>
                </table>
            </center>
        </form>
</div>
        
        <div id="sixthTab" class="tabcontent">
  <h2>ACHIEVEMENTS</h2>
        <hr style="width:350px;height:5px;background-color:black">
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Image Name</th>
        </tr>
        </thead>
        <tbody>
            <%
                for(int i=0;i<arr1.size();i++){
            %>
                
        <tr>
            <td><%=arr1.get(i)%></td>
            <td><%=arr2.get(i)%></td>
            <td><%=arr3.get(i)%></td>
            <td><%=arr4.get(i)%></td>
        </tr>
        <%
            }
            %>
        <tbody>
    </table>
        
</div>
        <center><h1>Insert Achievement</h1>
             <hr style="width:30%;height:4px;color:black;background-color:black;margin-bottom: 20px;">
            <form action="InsertAchievement" method="post" enctype="multipart/form-data">
                <table>

                    <tr><td>Enter Id:</td><td><center><input type="text" class="fieldtheme" name="achieverId"></center></td></tr>
                    <tr><td>Enter Name:</td><td><center><input type="text" class="fieldtheme" name="achieverName"></center></td></tr>
                    <tr><td>Description:</td><td><center><input type="text" class="fieldtheme" name="description"></center></td></tr>
                    <tr><td>Select Image:</td><td><center><input type="file" class="fieldtheme" name="achieverImage"></center></td></tr>

                    <tr><td colspan="2"><button type="submit" class="signup-button" name="btn2" value="UPDATE"><center>INSERT</center></button></td></tr>
                </table>
            </form>
            </center>
            <center><h1>Delete Achievement</h1>
                 <hr style="width:30%;height:4px;color:black;background-color:black;margin-bottom: 20px;">
            <form action="DeleteAchievement" method="post">
                <center>
                    <table style="border: 3px solid black">
                        <tr><th colspan="2" style="border-bottom:3px solid black">DELETE RECORD</th></tr>
                        <tr><td>ID:</td><td><input type="text" name="id" required></td></tr>
                        <tr><td><input type="submit" value="DELETE" name="delete" style="background:#E14E39;cursor:pointer;color:white"></td></tr>
                    </table>
                </center>
            </form>
        </div>
        
        <div id="seventhTab" class="tabcontent">
            <h2>ADVERTISEMENT</h2>
            <hr style="width:350px;height:5px;background-color:black">
    <div class="table-wrapper">
        <table class="fl-table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Image Name</th>
                <th>Advertiser name</th>
            </tr>
            </thead>
            <tbody>
                <%
                    for(int i=0;i<arry1.size();i++){
                %>
                    
            <tr>
                <td><%=arry1.get(i)%></td>
                <td><%=arry2.get(i)%></td>
                <td><%=arry3.get(i)%></td>
            </tr>
            <%
                }
                %>
            <tbody>
        </table>    
    </div>      
    <center><h1>Insert Advertisement</h1>
         <hr style="width:30%;height:4px;color:black;background-color:black;margin-bottom: 20px;">
        <form action="InsertAdvertise" method="post" enctype="multipart/form-data">
            <table>

                <tr><td>Enter Id:</td><td><center><input type="text" class="fieldtheme" name="advId"></center></td></tr>
                <tr><td>Select Image:</td><td><center><input type="file" class="fieldtheme" name="advImage"></center></td></tr>
                <tr><td>Enter Advertiser Name</td><td><center><input type="text" class="fieldtheme" name="advName"></center></td></tr>
                

                <tr><td colspan="2"><button type="submit" class="signup-button" name="btn2" value="UPDATE"><center>INSERT</center></button></td></tr>
            </table>
        </form>
        </center>
        <center><h1>Delete Advertisement</h1>
             <hr style="width:30%;height:4px;color:black;background-color:black;margin-bottom: 20px;">
            <form action="DeleteAdvertise" method="post">
                <center>
                    <table style="border: 3px solid black">
                        <tr><th colspan="2" style="border-bottom:3px solid black">DELETE RECORD</th></tr>
                        <tr><td>ID:</td><td><input type="text" name="id" required></td></tr>
                        <tr><td><input type="submit" value="DELETE" name="delete" style="background:#E14E39;cursor:pointer;color:white"></td></tr>
                    </table>
                </center>
            </form>
  </div>

        
        
        
        
        <!--------------------------------------------------footer-->
        
            
            
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
