package org.apex.bookstore.action;

import java.util.Map;

import org.apex.bookstore.model.Cart;
import org.apex.bookstore.service.IUserService;
import org.apex.bookstore.service.impl.UserService;
import org.apex.bookstore.vo.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport{
	protected String username;
	protected String password;
	protected String sex;
	protected int age;
	
	protected User user;

	protected IUserService userService;
	public User getUser(){
		return this.user;
	}
	public void setUser(User user){
		this.user=user;
	}
	public void setUserService(IUserService userService){
		this.userService=userService;
	}
	public IUserService getUserService(){
		return this.userService;
	}
	
	public String execute() throws Exception{
		
		
		User u=userService.validateUser(user.getUsername(),user.getPassword());
		if(u !=null){
			
			Map session=ActionContext.getContext().getSession();
			session.put("user", u);
		//	Cart cart=new Cart();
		//	session.put("cart", cart);
			return SUCCESS;
		}
		else{
			return ERROR;
		}
	}
	public String register() throws Exception{
		//用户注册
		System.out.println(user.getUsername());
		User user1=new User();
		user1.setUsername(user.getUsername());
		//user1.setUsername(username);
		//user1.setAge(age);
		user1.setAge(user.getAge());
		//user1.setPassword(password);
		user1.setPassword(user.getPassword());
		//user1.setSex(sex);
		user1.setSex(user.getSex());
		
		userService.saveUser(user1);
		return SUCCESS;
	}
	public String logout() throws Exception{
		//用户注销
		Map session=ActionContext.getContext().getSession();
		session.remove("user");
		session.remove("cart");
		return SUCCESS;
		
	}
}
