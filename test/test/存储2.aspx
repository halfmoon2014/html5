<%@ Page Language="C#" AutoEventWireup="true" CodeFile="存储2.aspx.cs" Inherits="test_存储2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input type="button" value="show" onclick="show()" />
    
    
    <asp:TextBox ID="myid" runat="server"></asp:TextBox>
    <asp:TextBox ID="result" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
<script type="text/javascript">
    if (localStorage.lastname == null) {
        localStorage.lastname = "Smith";
    } else {

    }
    document.write(localStorage.lastname);
    function show() {
        //alert(localStorage.lastname);
        localStorage.bs = 1;

        localStorage.bs = 0;
    }
</script>
</html>