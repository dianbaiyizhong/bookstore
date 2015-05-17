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
      
          
          <s:set name="books" value="#request.books"/>
		
		<s:if test="#books.size != 0">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<font color="blue"><h3>所有符号条件的图书</h3></font> <br/>
			<s:iterator value="#books" id="book">
			   <table width=600 border=0 >
        <tr >
           <td width=200 align="center">
              <img src="/bookstore/picture/<s:property value="#book.picture"/>" width="100">
           </td>
           <td valign="top" width=400>
             <table>
                <tr>
                  <td>
                     书名:<s:property value="#book.bookname"/><br>
                  </td>
                </tr>
                <tr>
                  <td>
                   价格:<s:property value="#book.price"/>元
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <form action="addToCart.action" method=""post">
                      数量:<input type="text" name="quantity" value="0" size="4"/>
                   <input type="hidden" value="<s:property value="#book.bookid"/>" name="bookid">
                   <input type="image" name="submit" src="/bookstore/picture/buy.gif"/>
                   </form>
                    
                  
                  </td>
                
                </tr>
             </table>
           </td>
        </tr>
     </table>
			</s:iterator>
	
			
		</s:if>
		<s:else>
			对不起,没有合适的图书!
		</s:else>
      

     
  </DIV>
</DIV>
</DIV>




 <jsp:include page="foot.jsp"></jsp:include>  

</BODY></HTML>
