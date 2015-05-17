package org.apex.bookstore.dao.impl;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import org.apex.bookstore.dao.BaseDAO;
import org.apex.bookstore.dao.IUserDAO;
import org.apex.bookstore.vo.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;


public class UserDAO extends BaseDAO implements IUserDAO{
	public void saveUser(User user){
		Session session=getSession();
		Transaction tx=session.beginTransaction();
		
		System.out.println(user.getUsername());
		
		session.save(user);
		tx.commit();
		session.close();
	}
	public User validateUser(String username,String password){
		Session session=getSession();
		String hql="from User u where u.username=? and u.password=?";
		Query query=session.createQuery(hql);
		query.setParameter(0,username);
		query.setParameter(1, password);
		List users=query.list();
		if(users.size()!=0){
			User user=(User)users.get(0);
			return user;
		}
		session.close();
		return null;
	}
	
	public boolean exitUser(String username){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/bookstore";
		Connection conn=DriverManager.getConnection(url,"root","root");
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery("select count(*) from user where username='"+username+"'");
		rs.next();
		if(0!=rs.getInt(1)){
			
			return true;
		}
			
		else return false;
		}catch(Exception e){
			System.out.println(e.getStackTrace());
			return false;
		}
	}
//	public boolean exitUser(String username){
//		Session session=getSession();
//		String hql="from User u where u.username=? ";
//		System.out.println(hql);
//		Query query=session.createQuery(hql);
//		query.setParameter(0,username);
//		List users=query.list();
//		if(users.size()!=0){
//			User user=(User)users.get(0);
//			return true;
//		}
//		session.close();
//		return false;
//	}
}
