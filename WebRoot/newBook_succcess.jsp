<%@ page contentType="text/html;charset=gb2312" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<H1><SPAN class=green14b>����չʾ</SPAN></H1>
<DIV class=info_bk1>
   <s:iterator value="#request['books']" id="book">
   <DIV class=xh5>
      <img  height=105 width=80 src="/bookstore/picture/<s:property value="#book.picture"/>"/><BR>
      <s:property value="#book.bookname"/>
       <br>�۸�:<s:property value="#book.price"/>Ԫ<br>
       <form action="addToCart.action" method="post">
          ����:<input type="text" name="quantity" value="0" size="4"/>
          <input type="hidden" value="<s:property value="#book.bookid"/>" name="bookid">
          <input type="image" name="submit" src="/bookstore/picture/buy.gif"/>
       </form>
    </DIV>
    </s:iterator>



</DIV><br><br>