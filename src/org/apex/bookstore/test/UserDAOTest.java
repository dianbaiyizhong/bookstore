//package org.apex.bookstore.test;
//
//import org.springframework.test.AbstractDependencyInjectionSpringContextTests;
//import org.apex.bookstore.dao.IUserDAO;
//import org.apex.bookstore.vo.User;
//
//public class UserDAOTest extends AbstractDependencyInjectionSpringContextTests {
//
//	
//	private IUserDAO userDAO;
//	public void setUserDAO(IUserDAO _userDAO){
//		
//		userDAO = _userDAO;
//	}
//	@Override
//	protected String[] getConfigLocations() {
//		
//		return new String[] {"classpath:org/apex/bookstore/test/applicationContext.xml"};
//	}
//	
//	public void testValidateUser(){
//		
//		User user = userDAO.validateUser("yuyan","1");
//		assertNotNull(user);
//	}
//	
//	
//}