<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="ACSassignment.Password" %>

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
    <div class="col-sm-6 col-md-5 form-section m-auto mt-5 border border-2 p-3">
        <div class="login-wrapper mt-5">
            <h2 class="login-title">Password Change</h2>
           <%-- <form runat="server" action="#!">--%>
                <div class="form-group">
                    <label for="email" class="sr-only">Enter your Email</label>
                    <input type="email" name="email" id="email" runat="server" class="form-control" placeholder="Enter email." />
                </div>
            
                <div class="d-flex justify-content-between align-items-center mb-5">
                    <asp:Button runat="server" ID="SendBtn" Text="Send" CssClass="btn login-btn" OnClick="SendBtn_Click" />
                  
                </div>
           <%-- </form>--%>
   
        </div>
    </div>
    </form>
</body>
</html>
