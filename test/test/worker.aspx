<%@ Page Language="C#" AutoEventWireup="true" CodeFile="worker.aspx.cs" Inherits="test_worker" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<body>

<p>计数: <output id="result"></output></p>
<button onclick="startWorker()">开始 Worker</button> 
<button onclick="stopWorker()">停止 Worker</button>
<br /><br />

<script>
    var w;

    function startWorker() {
        if (typeof (Worker) !== "undefined") {
            if (typeof (w) == "undefined" || w==null ) {
                w = new Worker("../js/demo_workers.js");
            }
            w.onmessage = function (event) {
                document.getElementById("result").innerHTML = event.data;
            };
        }
        else {
            document.getElementById("result").innerHTML = "Sorry, your browser does not support Web Workers...";
        }
    }

    function stopWorker() {
        w.terminate();
        w = null;
    }
</script>

</body>
</html>
