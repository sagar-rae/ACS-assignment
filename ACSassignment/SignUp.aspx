<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" EnableEventValidation="false" Inherits="ACSassignment.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"></script>--%>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta charset="utf-8">
    <title></title>
    <link href="css/Style.css" rel="stylesheet" />
    <%--<link href="css/ForPassword.css" rel="stylesheet" />--%>
    <%--<link href="css/StyleSuraj.css" rel="stylesheet" />--%>
    <link href="css/styleneha.css" rel="stylesheet" />

</head>
<body>
    <%--  <form id="form1" runat="server">--%>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-6 col-md-7 intro-section">
                <div class="brand-wrapper">
                    <h1>Logo</h1>
                </div>
                <div class="intro-content-wrapper">
                    <h1 class="intro-title">Welcome to website !</h1>
                    <p class="intro-text">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
              incididunt ut labore et dolore magna
                    </p>
                    <a href="#!" class="btn btn-read-more">Read more</a>
                </div>
                <div class="intro-section-footer">
                    <na class="footer-nav">
                            <a href="#!">Facebook</a>
                            <a href="#!">Twitter</a>
                            <a href="#!">Gmail</a>
                        </na>
                </div>
            </div>
            <div class="col-sm-6 col-md-5 form-section">
                <div class="login-wrapper">
                    <h2 class="login-title">Sign in</h2>
                    <form action="#!" id="form1" runat="server">
                        <div class="form-group">
                            <label for="NameId" class="sr-only">Name</label>
                            <input type="text" name="Name" id="NameId" runat="server" class="form-control" placeholder="Enter your name" />
                        </div>
                        <div class="form-group">
                            <label for="EmailId" class="sr-only">Email</label>
                            <input type="email" name="Email" id="EmailId" runat="server" class="form-control" placeholder="Enter your Email" />
                        </div>
                        <div class="form-group mb-3">
                            <label for="PasswordId" class="sr-only">Password</label>
                            <input type="password" name="password" id="PasswordId" runat="server" class="form-control" placeholder="Enter your Password" />
                        </div>

                              






                        <div class="form-group">
                            <label for="CPasswordId" class="sr-only">Confirm Password</label>
                            <input type="password" onkeyup="trigger()" name="Cpassword" id="password_id" runat="server" class="form-control" placeholder="Confirm your Password" />
                        </div>



                        <div class="d-flex justify-content-between align-items-center mb-5">
                            <asp:Button runat="server" ID="SignBtn" Text="Sign in" CssClass="btn login-btn" OnClick="SignBtn_Click" />

                        </div>
                        <%--<div class="field">--%>
                            <%--<input onkeyup="trigger()" type="password" placeholder="Type password">--%>
                            <%--<span class="showBtn">SHOW</span>--%>
                        <%--</div>--%>
                        <div class="indicator">
                            <span class="weak"></span>
                            <span class="medium"></span>
                            <span class="strong"></span>
                        </div>
                        <div class="text"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>

      
    <script>
         const indicator = document.querySelector(".indicator");
        const input = document.getElementById("password_id");
         const weak = document.querySelector(".weak");
         const medium = document.querySelector(".medium");
         const strong = document.querySelector(".strong");
         const text = document.querySelector(".text");
         //const showBtn = document.querySelector(".showBtn");
         let regExpWeak = /[a-z]/;
         let regExpMedium = /\d+/;
         let regExpStrong = /.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/;
         function trigger(){
           if(input.value != ""){
             indicator.style.display = "block";
             indicator.style.display = "flex";
             if(input.value.length <= 3 && (input.value.match(regExpWeak) || input.value.match(regExpMedium) || input.value.match(regExpStrong)))no=1;
             if(input.value.length >= 6 && ((input.value.match(regExpWeak) && input.value.match(regExpMedium)) || (input.value.match(regExpMedium) && input.value.match(regExpStrong)) || (input.value.match(regExpWeak) && input.value.match(regExpStrong))))no=2;
             if(input.value.length >= 6 && input.value.match(regExpWeak) && input.value.match(regExpMedium) && input.value.match(regExpStrong))no=3;
             if(no==1){
               weak.classList.add("active");
               text.style.display = "block";
               text.textContent = "Your password is too weak";
               text.classList.add("weak");
             }
             if(no==2){
               medium.classList.add("active");
               text.textContent = "Your password is medium";
               text.classList.add("medium");
             }else{
               medium.classList.remove("active");
               text.classList.remove("medium");
             }
             if(no==3){
               weak.classList.add("active");
               medium.classList.add("active");
               strong.classList.add("active");
               text.textContent = "Your password is strong";
               text.classList.add("strong");
             }else{
               strong.classList.remove("active");
               text.classList.remove("strong");
             }
             //showBtn.style.display = "block";
             //showBtn.onclick = function(){
             //  if(input.type == "password"){
             //    input.type = "text";
             //    showBtn.textContent = "HIDE";
             //    showBtn.style.color = "#23ad5c";
             //  }else{
             //    input.type = "password";
             //    showBtn.textContent = "SHOW";
             //    showBtn.style.color = "#000";
             //  }
             //}
           }else{
             indicator.style.display = "none";
             text.style.display = "none";
             //showBtn.style.display = "none";
           }
         }
      </script>

</body>
</html>
