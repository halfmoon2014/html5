<%@ Page Language="C#" AutoEventWireup="true" CodeFile="server-sent_event.aspx.cs" Inherits="test_server_sent_event" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 
<body>
<h1>获得服务器更新</h1>
<div id="result"></div>

<script>
    if (typeof (EventSource) !== "undefined") {
        var source = new EventSource("demo_sse.aspx");
        source.onmessage = function (event) {
            document.getElementById("result").innerHTML += event.data + "<br />";
        };
    }
    else {
        document.getElementById("result").innerHTML = "Sorry, your browser does not support server-sent events...";
    }
</script>

</body>
</html>
