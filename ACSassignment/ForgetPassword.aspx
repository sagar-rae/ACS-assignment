<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="ACSassignment.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <title></title>
     <link href="css/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
               <%-- <div class="col-sm-6 col-md-7 intro-section">
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
                </div>--%>
                <div class="col-sm-6 col-md-5 form-section m-auto border border-2 mt-5">
                    <div class="login-wrapper mt-5">
                        <h2 class="login-title">Change your password</h2>
                        <form action="#!">
                            <div class="form-group">
                                <label class="sr-only">Enter your new password.</label>
                                <input type="password" id="Fpassword" runat="server" class="form-control" placeholder="Enter your password" />
                            </div>
                            <div class="form-group mb-3">
                                <label for="password" class="sr-only">Re-enter your password.</label>
                                <input type="password" id="Spassword" runat="server" class="form-control" placeholder="Enter your password again." />
                            </div>
                            <div class="d-flex justify-content-between align-items-center mb-5">
                                <asp:Button runat="server" ID="Send" Text="Submit" CssClass="btn login-btn" OnClick="Send_Click"  />
                                <%--<input name="login" id="login" class="btn login-btn" type="button" value="Login" />--%>
                                <%--<a href="Password.aspx" class="forgot-password-link">Password?</a>--%>
                            </div>
                        </form>
                        <%--<p class="login-wrapper-footer-text">Need an account? <a href="SignUp.aspx" class="text-reset">Signup here</a></p>--%>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
