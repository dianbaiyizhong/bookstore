package org.apex.bookstore.service.impl;

import java.util.List;

import org.apex.bookstore.dao.IBookDAO;
import org.apex.bookstore.service.IBookService;
import org.apex.bookstore.vo.Book;

public class BookService implements IBookService {
	protected IBookDAO bookDAO;
	
	public List getBookByCatalogid(Integer catalogid){
		return bookDAO.getBookByCatalogid(catalogid);
	}
	public List getBookByCatalogidPaging(Integer catalogid,int currentPage,int pageSize){
		return bookDAO.getBookByCatalogidPaging(catalogid, currentPage, pageSize);
	}
	public int getTotalByCatalog(Integer catalogid){
		return bookDAO.getTotalByCatalog(catalogid);
	}

	public IBookDAO getBookDAO() {
		return bookDAO;
	}

	public void setBookDAO(IBookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}
	public Book getBookById(Integer bookid){
		return bookDAO.getBookById(bookid);
	}
    public List getRequiredBookByHql(String hql) {
		
		return bookDAO.getRequiredBookByHql(hql);
	}
    public List getNewBook(){
    	return bookDAO.getNewBook();
    }
}
