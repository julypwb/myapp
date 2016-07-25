<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@ page import="java.sql.*,
				java.util.Map,
				java.util.Iterator,
				java.io.PrintWriter,
				java.io.ByteArrayOutputStream            
				" %>

<%
	String app=request.getContextPath();
%>
<%
	if (exception == null) {
		if(exceptions != null && exceptions.hasExceptions()){
			Map map = exceptions.getExceptions(); 
		  	Iterator itor = map.keySet().iterator();
		  	Object obj = map.get(itor.next());
		  	if (obj instanceof Throwable) {
				exception = (Throwable) obj;
		  	}
		}
		if (exception == null) {
			exception = new Throwable("[EMPTY]");
		}
		if (exception instanceof java.lang.reflect.InvocationTargetException) {
			exception = ((java.lang.reflect.InvocationTargetException) exception).getTargetException();
		}

	}
%>
<script language="javascript">
	function showMessage(){
		var message = document.getElementById("MESSAGE");
		if(message.style.display == "block")
			message.style.display = "none";
		else
			message.style.display = "block";
	}
</script>
<html>
<head><title></title></head>
<style type="text/css">
	td{font-size:12pt}
	button{
	overflow:	hidden;
	text-align:	center;
	vertical-align:	middle;
	font-size: 9pt;
	cursor: hand;
	height: 20px;
	border: #6489B3 1px solid;
}
</style>

<body topmargin="0" leftmargin="0" rightmargin="0"class="errpagebgcss">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%">
	<tr><td width="100%" height="30">&nbsp;</td></tr>
	<tr><td width="100%">
	<table border="0" style="border-collapse: collapse" class="errpagetitlecss" width="100%">
		<tr height="22"  width="100%" onclick="javascript:showMessage();">
		<td  align="left" valign="top" width=10%>
		<FONT COLOR="#CC3333">出错了!</FONT>
		</td>
		<td  align="left" valign="top" width=85%>
<%=exception.getMessage()%>
		</td>
		<td  align="right" valign="top">
		<button name="B1" onclick="javascript:window.history.go(-1)">返回</button>
		</td>
	</table>
	</td></tr>
	<tr><td id="MESSAGE" style="display:none"><textarea style=" color:gray;overflow:auto;height:100%;width:100%" readonly>
<%
exception.printStackTrace(new java.io.PrintWriter(out));
if (exception.getCause() != null) {
	exception.getCause().printStackTrace(new java.io.PrintWriter(out));
}
%>
	</textarea>
	</td></tr></iframe>
	</td></tr>
	<tr><td width="100%" height="30">&nbsp;</td></tr>
</table>
<script language="javascript">
	if(window.history.length==0){
		document.all("B1").innerText="关闭";
		document.all("B1").onclick=winclose;
	}
	function winclose(){
		parent.close();
	}
</script>
</body>
</html>