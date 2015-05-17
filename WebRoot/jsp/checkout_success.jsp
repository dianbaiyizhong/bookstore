<%@ page contentType="text/html;charset=gb2312" %>
<%@ taglib prefix="s" uri="/struts-tags" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML><HEAD><TITLE>网上书店</TITLE>
<LINK 
href="../css/dearbook2008.css" type=text/css rel=stylesheet>
<SCRIPT src="../js/prototype.js" type=text/javascript></SCRIPT>


<style type="text/css">
<!--
.STYLE3 {color: #000066}
-->
</style>
</HEAD>

<BODY><LINK href="../css/dearbook2008.css" type=text/css rel=stylesheet>

<jsp:include page="../head.jsp"></jsp:include>

<DIV class=content>
<DIV class=left>
<DIV class=list_box>
<DIV class=list_bk>
<s:action name="browseCatalog" executeResult="true"/>

</DIV></DIV>

</DIV>
<DIV class=right>
<DIV class=right_box><FONT face=宋体></FONT><FONT face=宋体></FONT><FONT 
face=宋体></FONT><FONT face=宋体></FONT>
<DIV class=banner>
</DIV>




<DIV class=info_bk1><div align="center"> 
<h3>订单添加成功</h3>
<s:property value="#session.user.username"/>,您的订单已经下达,
您的订单号
<s:property value="#request.order.orderid"/>,
我们会在三日内寄送图书给您!
 <br><br>
<a href="logout.action">退出登录</a>
</DIV>
</DIV>
</DIV></DIV>
</div>
 <jsp:include page="../foot.jsp"></jsp:include>  

</BODY></HTML>
