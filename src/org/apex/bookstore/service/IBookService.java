package org.apex.bookstore.service;

import java.util.List;

import org.apex.bookstore.vo.Book;

public interface IBookService {
	public List getBookByCatalogid(Integer catalogid);
	public List getBookByCatalogidPaging(Integer catalogid,int currentPage,int pageSize);
	public int getTotalByCatalog(Integer catalogid);
	public Book getBookById(Integer bookid);
	public List getRequiredBookByHql(String hql);
	public List getNewBook();
}
