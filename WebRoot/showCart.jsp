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

<BODY><br><br><LINK href="/css/dearbook2008.css" type=text/css rel=stylesheet>

<jsp:include page="head.jsp"></jsp:include>

<DIV class=content>
<DIV class=left>
<DIV class=list_box>
<DIV class=list_bk>
<s:action name="browseCatalog" executeResult="true"/>

</DIV></DIV>

</DIV>


  <DIV class=right>
    <DIV class=right_box>
      
          
          <s:set name="items" value="#session.cart.items"/>
		
		<s:if test="#items.size != 0">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<font color="blue"><h3>您购物车中图书</h3></font> <br/>
			<TABLE  id=tb cellSpacing=2 cellPadding=5 width="95%" align=center border=0>
			   <tr >
			     <TD bgcolor=rgb(238,238,238) align="center"  width="50%"  height=12>书 名</TD>
			     <TD bgcolor=rgb(238,238,238) align="center" width="15%" >定 价</TD>
			     <TD bgcolor=rgb(238,238,238) align="center"  width="15%">数 量</TD>
			     <TD bgcolor=rgb(238,238,238) align="center" width="20%"><font color="gray">操 作</font></TD>
			   </tr>
			   <form action="updateCart.action" method="post">
			   <s:iterator value="#items">
			       
			       <tr>
			         
			          <td>
			            <s:property value="value.book.bookname"/>
			          </td>
			          <td>
			            <s:property value="value.book.price"/>
			          </td>
			          <td>
			            
					          <input type="text" name="quantity"  value="<s:property value="value.quantity"/>" size="4"/>
					           <input type="hidden" name="bookid" value="<s:property value="value.book.bookid"/>"/> 
			          </td>
			          <td>
			            <input type="submit" value="更新"/>
			          </td>
			        
			       </tr>
			      
			   </s:iterator>
			   </form>
			</table>
	
			
			<hr/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			消费金额:<s:property value="#session.cart.totalPrice"/>元&nbsp;&nbsp;&nbsp;
			<a href="checkout.action"><img src="/bookstore/picture/count.gif"/></a>
		</s:if>
		<s:else>
			对不起,您还没有选购图书!
		</s:else>
      

     
  </DIV>
</DIV>
</DIV>




 <jsp:include page="foot.jsp"></jsp:include>  

</BODY></HTML>
