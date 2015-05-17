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





<DIV class=list_title>图书分类</DIV>
<UL class=point02>
  <LI><strong>图书分类</strong>
  
  <s:iterator value="#request['catalogs']" id="catalog">
    <LI>
    <a href="browseBookPaging.action?catalogid=<s:property value="#catalog.catalogid"/>" target=_self> 
      <s:property value="#catalog.catalogname"/>
   </a>
   </LI>
  </s:iterator>
  
  
 
</UL>



</BODY></HTML>
