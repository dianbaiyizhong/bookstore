<%@ page contentType="text/html;charset=gb2312" %>
<%@ taglib prefix="s" uri="/struts-tags" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML><HEAD><TITLE>�������</TITLE>
<LINK 
href="css/dearbook2008.css" type=text/css rel=stylesheet>
<SCRIPT src="js/prototype.js" type=text/javascript></SCRIPT>


<style type="text/css">
<!--
.STYLE3 {color: #000066}
-->
</style>
</HEAD>

<BODY><LINK href="/css/dearbook2008.css" type=text/css rel=stylesheet>

<jsp:include page="head.jsp"></jsp:include>

<DIV class=content>
<DIV class=left>
<DIV class=list_box>
<DIV class=list_bk>
<jsp:include page="menu.jsp"></jsp:include>

</DIV></DIV>

</DIV>
<DIV class=right>
<DIV class=right_box><FONT face=����></FONT><FONT face=����></FONT><FONT 
face=����></FONT><FONT face=����></FONT>
<DIV class=banner>
</DIV>




<DIV class=info_bk1><div align="center"> 
  

 
<form action="login.action" method="post" name="login"> 
�û���¼<br> 
�û���:<input type="text" name="user.username" size=20 id="username"><br> 
��&nbsp;&nbsp;&nbsp;&nbsp;��:<input type="password" name="user.password" size=21 id="username"><br> 
 
<input type="submit" value="��¼"> 
</form>

    


</DIV>



</DIV>
</DIV></DIV>

</div>

 <jsp:include page="foot.jsp"></jsp:include>  

</BODY></HTML>
