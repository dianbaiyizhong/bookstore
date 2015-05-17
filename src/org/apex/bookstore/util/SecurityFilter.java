package org.apex.bookstore.util;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xalan.internal.xsltc.dom.Filter;

public class SecurityFilter implements Filter{
	public boolean test(int arg0) {
		// TODO Auto-generated method stub
		return false;
	}
	public void destroy(){
		
	}
	public void doFilter(ServletRequest _request,ServletResponse _response,FilterChain arg2) throws IOException,ServletException{
		HttpServletRequest request=(HttpServletRequest)_request;
		HttpServletResponse response=(HttpServletResponse)_response;
		if(request.getSession().getAttribute("user")==null){
			String path=request.getContextPath();
			response.sendRedirect(path+"/index.jsp");
		}
		else{
			arg2.doFilter(request, response);
		}
	}
	public void init(FilterConfig arg0)throws ServletException{
		
	}
}
