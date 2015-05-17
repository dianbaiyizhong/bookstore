package org.apex.bookstore.service.impl;

import org.apex.bookstore.dao.IUserDAO;
import org.apex.bookstore.service.IUserService;
import org.apex.bookstore.vo.User;

public class UserService implements IUserService{
	private IUserDAO userDAO;
	public IUserDAO getUserDAO(){
		return userDAO;
	}
	public void setUserDAO(IUserDAO userDAO){
		this.userDAO=userDAO;
	}
	public void saveUser(User user){
		this.userDAO.saveUser(user);
	}
	public User validateUser(String username,String password){
		
		return userDAO.validateUser(username, password);
	}
	public boolean exitUser(String username){
		return userDAO.exitUser(username);
	}

}
