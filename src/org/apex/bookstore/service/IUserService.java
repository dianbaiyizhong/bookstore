package org.apex.bookstore.service;

import org.apex.bookstore.vo.User;


public interface IUserService {
	public void saveUser(User user);
	public User validateUser(String username,String password);
	public boolean exitUser(String username);
}
