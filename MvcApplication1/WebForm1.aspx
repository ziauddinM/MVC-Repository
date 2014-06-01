<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MvcApplication1.WebForm1" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />

    <title>Sign Up Page</title>
    <style>
        .ptag {
            color: #0c3501;
            font-family: impact;
            font-size: 12px;
        }

        .textbox:active {
                border: 1px solid #c4c4c4;
    width: 180px;
    height: 18px;
    font-size: 13px;
    padding: 4px 4px 4px 4px;
    border-radius: 4px;

        }

        .textbox:focus {
                outline: none;
    border: 1px solid #7bc1f7;
    box-shadow: 0px 0px 8px #7bc1f7;
    color:blue;
            }

        .bgcolor {
            background-color: #b8f7a7;

        }

        .textarea {
            background-color: aqua;
            font-size: 13px;
            font-style: italic;
            visibility: hidden;
        }

        .textbximgcorrect {
            background-image: url(C:/Users/ziaud_000/Desktop/checkmark_icon.png);
            background-repeat: no-repeat;
            background-position-x: right;
            color:green;
        }

        .textbximgwrong {
            background-image: url(C:/Users/ziaud_000/Desktop/crossmark_icon.jpg);
            background-repeat: no-repeat;
            background-position-x: right;
            color:red;
        }

        .css_button {
   padding: 7.5px 15px;
   border: 1px solid #002900;
   background-color: #00FF66;
   box-shadow: 0px 7px 2px -5px #1A1A1A, inset 0px 0px 10px #9C0000;
   border-radius: 13px;
   text-shadow: #176902 1px 1px 0px;
   color: #008F11;
   font-size: 12px;
   font-family: Georgia;
   font-weight: bold;
   }

        .css_button:hover {
   background: none;
   background-color: #00FF66;
   box-shadow: 1px 3px 3px 1px #024502;
   border: 1px solid #9af29a;
   color: #9E7F05;
   }

        .css_button:active {
   top: 1px;
   position: relative;
   }

        b{
          position:relative;
          font-size: small;
          font-family:Arial;
          color:#0c3501;
          opacity:0.6;
        }

        b:hover{
            position:relative;
          color:#5ef65e;
          opacity:1.0;
        }

    </style>

    <script>


        function OriginColor(input) {
            var x = document.getElementById(input.id);
            x.class = "textbox";
        }

        function validateName() {
            var x = document.getElementById("uname").value;
            var e = document.getElementById("errorname");
            e.innerHTML = "";

            if (x == "") {

                document.getElementById("uname").className = "textbximgwrong";
                e.innerHTML = "Please enter a name";
                e.style.display = "block";
                e.style.color = "red";
            }
            else if (/\d/.test(x)) {
                //alert("name cannot contain number");

                document.getElementById("uname").select();
                document.getElementById("uname").className = "textbximgwrong";
                e.innerHTML = "name cannot contain a number";
                e.style.display = "block";
                e.style.color = "red";
            }
            else if (x.length < 8) {
                //alert("name must be atleast 8 characters");

                document.getElementById("uname").select();
                document.getElementById("uname").className = "textbximgwrong";
                e.innerHTML = "name must be atleast 8 characters";
                e.style.display = "block";
                e.style.color = "red";
            }
            else {
                document.getElementById("uname").className = "textbximgcorrect";
                e.innerHTML = "";
            }

        }

        function Validatephonenumber() {
            var x = document.getElementById("phonenum").value;
            var e = document.getElementById("errorphone");
            if (x == "") {

                document.getElementById("phonenum").className = "textbximgwrong";
                e.innerHTML = "please enter the phone number";
                e.style.display = "block";
                e.style.color = "red";
            }
            if (isNaN(x)) {
                //alert("enter valid number");

                document.getElementById("phonenum").select();
                document.getElementById("phonenum").className = "textbximgwrong";
                e.innerHTML = "please enter a valid number";
                e.style.display = "block";
                e.style.color = "red";

            }
            else if (x.length != 12) {
                //alert("Number should be 12 digits");

                document.getElementById("phonenum").select();
                document.getElementById("phonenum").className = "textbximgwrong";
                e.innerHTML = "number should be 12 digits";
                e.style.display = "block";
                e.style.color = "red";
            }
            else if (/^9[6][6]\d/.test(x) != true) {
                //alert("phone number must start with 966");

                document.getElementById("phonenum").select();
                document.getElementById("phonenum").className = "textbximgwrong";
                e.innerHTML = "number must start with 966";
                e.style.display = "block";
                e.style.color = "red";
            }
            else {
                document.getElementById("phonenum").style.color = "green";
                document.getElementById("phonenum").className = "textbximgcorrect";
                e.innerHTML = "";
            }
        }

        function Validateemail() {
            var x = document.getElementById("email").value;
            var e = document.getElementById("erroremail");
            if (x == "") {
                // alert("please enter the email address");

                document.getElementById("email").className = "textbximgwrong";
                e.innerHTML = "please enter the email address";
                e.style.display = "block";
                e.style.color = "red";
            }
            else {
                if (/@/.test(x)) {
                    // alert("email address should not contain an @ symbol");
                    document.getElementById("email").select();
                    document.getElementById("email").className = "textbximgwrong";
                    e.innerHTML = "email address cannot contain \'@\' symbol";
                    e.style.display = "block";
                    e.style.color = "red";
                }
                else if (/com$/.test(x)) {
                    // alert("email address should not contain \'com\' ");

                    document.getElementById("email").select();
                    document.getElementById("email").className = "textbximgwrong";
                    e.innerHTML = "email address should not contain \'com\' ";
                    e.style.display = "block";
                    e.style.color = "red";
                }
                else {
                    Document.getElementById("Selectsuffix").focus();
                    document.getElementById("email").style.color = "green";
                    document.getElementById("email").className = "textbximgcorrect";
                    e.innerHTML = "";


                }
            }
        }

        function PasswordCheck() {
            var x = document.getElementById("uname").value;
            var y = document.getElementById("passwd").value;
            var e = document.getElementById("errorpasswd");
            if (y == "") {
                //alert("password cannot be empty");

                document.getElementById("passwd").className = "textbximgwrong";
                e.innerHTML = "password cannot be empty";
                e.style.display = "block";
                e.style.color = "red";
            }
            else if (x == y) {
                //alert("username and password cannot be same");
                document.getElementById("passwd").select();
                document.getElementById("passwd").className = "textbximgwrong";
                e.innerHTML = "username and password cannot be same";
                e.style.display = "block";
                e.style.color = "red";
            }
            else if (y.length < 8) {
                //alert("password must be atleast 8 characters");
                document.getElementById("passwd").select();
                document.getElementById("passwd").className = "textbximgwrong";
                e.innerHTML = "password must be atleast 8 characters";
                e.style.display = "block";
                e.style.color = "red";
            }
            else if (/\d/.test(y) == false) {
                //alert("password must have atleast one number");
                document.getElementById("passwd").select();
                document.getElementById("passwd").className = "textbximgwrong";
                e.innerHTML = "password must have atleast one number";
                e.style.display = "block";
                e.style.color = "red";
            }
            else {
                document.getElementById("passwd").style.color = "green";
                document.getElementById("passwd").className = "textbximgcorrect";
                e.innerHTML = "";
            }
        }

        function PasswordMatch() {
            var x = document.getElementById("passwd").value;
            var y = document.getElementById("chkpasswd").value;
            var e = document.getElementById("errorcheckpasswd");
            if (y == "") {
                //alert("enter again to confirm password");                
                document.getElementById("checkpasswd").select();
                document.getElementById("checkpasswd").className = "textbximgwrong";
                e.innerHTML = "enter again to confirm password";
                e.style.display = "block";
                e.style.color = "red";
            }
            else if (x != y) {
                // alert("Passwords do not match");
                document.getElementById("checkpasswd").select();
                document.getElementById("checkpasswd").className = "textbximgwrong";
                e.innerHTML = "password do not match";
                e.style.display = "block";
                e.style.color = "red";
            }
            else {
                document.getElementById("checkpasswd").style.color = "aqua";
                SubmitInfo.focus();
                document.getElementById("checkpasswd").className = "textbximgcorrect";
                e.innerHTML = "";
            }
        }

        function SubmitBtn() {

            var name = document.getElementById("uname").value;
            var phone = document.getElementById("phonenum").value;
            var email = document.getElementById("email").value;

            var select = document.getElementById("Selectsuffix");
            var option = select.options[select.selectedIndex].text;

            var area = document.getElementById("TextArea");
            var e = document.getElementById("errorarea");
            if (name != "" && phone != "" && email != "" && passwd != "" && checkpasswd != "") {
                area.value = (" The name is : " + name + "\n" + " The phone number is : " + phone + "\n" + " The email address is : " + email + option);
                area.style.visibility = "visible";
            }
            else {
                e.innerHTML = "please enter in all the fields";
                e.style.display = "block";
                e.style.color = "red";
            }
        }
    </script>

</head>

<body class="bgcolor">
    <div style="float:left">
        <asp:Table ID="TableHeader" runat="server">        
          <asp:TableRow>
                <asp:TableCell><b style="position:relative;font-size: x-large;font-family:Arial;color:#0c3501;opacity:0.6;">Business Clouds</b></asp:TableCell>
                </asp:TableRow>
          </asp:Table>
        </div>
    <div style="float:right;">
    <asp:Table ID="TablePages" runat="server">  
            <asp:TableRow>
                    <asp:TableCell style="padding-right:20px;"><b>Home</b></asp:TableCell>
                    <asp:TableCell style="padding-right:20px;"><b>About Us</b></asp:TableCell>
                    <asp:TableCell style="padding-right:20px;"><b>Contact Us</b></asp:TableCell>
                    <asp:TableCell style="padding-right:20px;"><b>Queries and Complaints</b></asp:TableCell>
                    <asp:TableCell style="padding-right:20px;"><b>FAQs</b></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        </div>
    <div style="align-self:center;padding:50px 50px 50px 50px;">
        <form id="formlogin" runat="server" method="post">
        <asp:Table ID="tableform" runat="server" style="width:100%;padding:30px 10px 10px 15%;" CellPadding="0" CellSpacing="0">
        <asp:TableRow>
            <asp:TableCell runat="server" style="padding:0px 15px 0px 15px;"><p id="namep" class="ptag"  >Enter Name : </p></asp:TableCell>
            <asp:TableCell runat="server" style="padding:0px 15px 0px 15px;"><b id="errorname" style="display:none;"></b>
                <asp:TextBox ID="uname" runat="server" CssClass="textbox" ></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:tableRow>
            <asp:TableCell runat="server" style="padding:0px 15px 0px 15px;"><p id="phonenump" class="ptag"  >Enter Phone Number : </p></asp:TableCell>
            <asp:TableCell runat="server" style="padding:0px 15px 0px 15px;"><b id="errorphone" style="display:none; "></b>
                <asp:TextBox ID="phonenum" runat="server" CssClass="textbox"></asp:TextBox>
            </asp:TableCell>
        </asp:tableRow>
        <asp:TableRow>
            <asp:TableCell runat="server" style="padding:0px 15px 0px 15px;"><p id="emailaddp" class="ptag"  >Enter email Address : </p></asp:TableCell>
            <asp:TableCell runat="server" style="padding:0px 15px 0px 15px;"><b id="erroremail" style="display:none;"></b>
                <asp:TextBox ID="email" runat="server" CssClass="textbox"></asp:TextBox>
            </asp:TableCell>
            
            <asp:TableCell runat="server" style="padding:0px 15px 0px 15px;font-size:12px;">
                <select id="Selectsuffix" required="required">
                    <optgroup id="optgrp" label="recommended" style="color:#12cb12;">
                    <option value="1">@businessclouds.biz</option>
                    <option value="2">@gmail.com</option>
                    <option value="3">@live.com</option>
 </optgroup>
                     <optgroup label="others" style="color:#047e04;">
                    <option value="4">@yahoo.com</option>
                    <option value="5">@hotmail.com</option>
                    <option value="6">@reddifmail.com</option>
                     </optgroup>
 </select>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell runat="server" style="padding:0px 15px 0px 15px;"><p id="passwdp" class="ptag"  >Enter Password : </p></asp:TableCell>
            <asp:TableCell runat="server" style="padding:0px 15px 0px 15px;"><b id="errorpasswd" style="display:none;"></b>
                <asp:TextBox ID="passwd" runat="server" CssClass="textbox"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell runat="server" style="padding:0px 15px 0px 15px;"><p id="checkpasswdp" class="ptag"  >Confirm Password : </p></asp:TableCell>
            <asp:TableCell runat="server" style="padding:0px 15px 0px 15px;"><b id="errorcheckpasswd" style="display:none;"></b>
                <asp:TextBox ID="chkpasswd" runat="server" CssClass="textbox"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell runat="server" style="padding:0px 15px 0px 15px;"></asp:TableCell>
            <asp:TableCell runat="server" style="padding:10px 15px 10px 15px;"><input id="SubmitInfo" type="submit" value="submit" class="css_button" /></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </form>
    </div>
    <table style="width:100%">
        <tr><td><b style="position:relative;font-size:xx-small;font-family:Arial;color:#0c3501;opacity:0.5;float:right; top: 8px; left: 18px; width: 136px;">All Rights Reserved&copy;</b></td></tr>
    </table>
</body>
</html>
