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
      
          
  <s:iterator value="#request['books']" id="book">
     <table width=600 border=0 >
        <tr >
           <td width=200 align="center">
              <img src="/bookstore/picture/<s:property value="#book.picture"/>" width="100">
           </td>
           <td valign="top" width=400>
             <table>
                <tr>
                  <td>
                     ����:<s:property value="#book.bookname"/><br>
                  </td>
                </tr>
                <tr>
                  <td>
                   �۸�:<s:property value="#book.price"/>Ԫ
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <form action="addToCart.action" method=""post">
                      ����:<input type="text" name="quantity" value="0" size="4"/>
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
      
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
      <s:set name="pager" value="#request.pager"/>
      <s:if test="#pager.hasFirst">
         <a href="browseBookPaging.action?currentPage=1">��ҳ</a>
      </s:if>
      <s:if test="#pager.hasPrevious">
         <a href="browseBookPaging.action?currentPage=<s:property  value="#pager.currentPage-1"/>">��һҳ</a>
      </s:if>
      <s:if test="#pager.hasNext">
         <a href="browseBookPaging.action?currentPage=<s:property  value="#pager.currentPage+1"/>">��һҳ</a>
      </s:if>
      <s:if test="#pager.hasLast">
        <a href="browseBookPaging.action?currentPage=<s:property  value="#pager.totalPage"/>">βҳ</a>
      </s:if>
      <br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
      ��ǰ��<s:property value="#pager.currentPage"/>ҳ,
      �ܹ�<s:property value="#pager.totalPage"/>ҳ
  </DIV>
</DIV>
</DIV>




 <jsp:include page="foot.jsp"></jsp:include>  

</BODY></HTML>
