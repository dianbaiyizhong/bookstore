<%@ page contentType="text/html;charset=gb2312" %>
<%@ taglib prefix="s" uri="/struts-tags" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML><HEAD><TITLE>网上书店</TITLE>
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
<DIV class=right_box><FONT face=宋体>图书添加成功!</FONT>
<form action="browseBookPaging.action" method="post">
  <input type="hidden" value="<s:property value="#session['catalogid']"/>">
  <input type="image" name="submit" src="/bookstore/picture/continue.gif" />
</form>

<a href="#"><img src="/bookstore/picture/count.gif"/></a>
<DIV class=banner>
</DIV>

