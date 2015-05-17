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

<BODY><LINK href="css/dearbook2008.css" type=text/css rel=stylesheet>


<DIV class=head>
    <DIV class=head_left><A href="#"><a href="#"><img hspace=11 src="picture/logo_dear.gif" vspace=5></a></A><SPAN>书店提供专业服务</SPAN></DIV>
    <DIV class=head_right>
      <DIV class=head_right_nei>
          <DIV class=head_top>
                <DIV class=head_buy><STRONG>
                   <A href="/bookstore/showCart.jsp" ><IMG height=15 src="picture/buy01.jpg" width=16>购物车</A></STRONG> | 
                   <A class=cornflowerbluea href="#">用户FAQ</A>
                </DIV>
                <IFRAME style="WIDTH: 300px; HEIGHT: 35px" src="picture/logFrm.htm" frameBorder=0 scrolling=no>
                </IFRAME>
          </DIV>
          <DIV class=head_middle>
              <A class=title01 href="index.jsp" target=_top>
                   <SPAN class=bg1>&nbsp;&nbsp;
                       <span class="STYLE3">&nbsp;&nbsp;首页&nbsp;&nbsp;&nbsp;&nbsp;</span>
                   </SPAN>
              </A>
              <IMG src="picture/head_title02.jpg"> 
                 
                 <s:if test="#session.user==null">
                 <a class=title01 href="login.jsp">
                      <span>&nbsp;&nbsp:<span class="STYLE3">&nbsp;&nbsp;登录&nbsp;&nbsp;</span>&nbsp;&nbsp;</span>
                 </a>
                 </s:if>
                 <s:else>
                 <a class=title01 href="logout.action">
                      <span>&nbsp;&nbsp;<span class="STYLE3">&nbsp;&nbsp;注销&nbsp;&nbsp;</span>&nbsp;&nbsp;</span>
                 </a>
                 </s:else>
             
                 

             <IMG src="picture/head_title02.jpg"> 
             <A class=title01 href="register.jsp" target=_top>
                   <SPAN>&nbsp;&nbsp;<span class="STYLE3">&nbsp;&nbsp;注册&nbsp;&nbsp;</span>&nbsp;&nbsp;</SPAN>
             </A>
             <IMG src="picture/head_title02.jpg"> 
                <A class=title01 href="#" ><SPAN>&nbsp;&nbsp;<span class="STYLE3">联系我们&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;</SPAN>
                </A>
             <IMG src="picture/head_title02.jpg">
             <A class=title01 href="#" target=_top><SPAN class=bg2>&nbsp;<span class="STYLE3">&nbsp;网站地图&nbsp;</span>&nbsp;&nbsp;&nbsp;</SPAN></A> 
             <A class=title02 href="#" target=_top>书友会</A> 
             <A class=title02 href="#" target=_blank>精品连载</A>
         </DIV>
         <DIV class=head_bottom>
         
              <form action="searchBook.action" method="post">
                <input type="text" name="bookname" size="100"/> 
                
                <input type="image" name="submit"  src="picture/search02.jpg" style="width: 48px; height: 22px"/>
              </form>
              

         </DIV>
       </DIV>
     </DIV>
</DIV>






</BODY></HTML>
