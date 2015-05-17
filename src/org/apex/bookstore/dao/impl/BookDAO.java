package org.apex.bookstore.dao.impl;

import java.util.List;



import org.apex.bookstore.dao.BaseDAO;
import org.apex.bookstore.dao.IBookDAO;
import org.apex.bookstore.vo.Book;
import org.hibernate.Query;
import org.hibernate.classic.Session;

public class BookDAO extends BaseDAO implements IBookDAO{
	protected Integer catalogid;
	
	public Integer getCatalogid() {
		return catalogid;
	}

	public void setCatalogid(Integer catalogid) {
		this.catalogid = catalogid;
	}

	public List getBookByCatalogid(Integer catalogid){
	
		
		Session session=getSession();
		String hql="from Book b where b.catalog.catalogid=?";
		Query query=session.createQuery(hql);
		query.setParameter(0, catalogid);
		List books=query.list();
		session.close();
		
		
		return books;
		
	}
	public List getBookByCatalogidPaging(Integer catalogid,int currentPage,int pageSize){
		Session session=getSession();
		Query query=session.createQuery("from Book b where b.catalog.catalogid=?");
		query.setParameter(0, catalogid);
		int startRow=(currentPage-1)*pageSize;
		query.setFirstResult(startRow); 
		query.setMaxResults(pageSize);
		List books=query.list();
		session.close();
		return books;
	}
	public List getNewBook(){
		Session session=getSession();
		Query query=session.createQuery("from Book b");
		query.setFirstResult(0);
		query.setMaxResults(5);
		List books=query.list();
		session.close();
		return books;
	}
	public int getTotalByCatalog(Integer catalogid){
		Session session=getSession();
		Query query=session.createQuery("from Book b where b.catalog.catalogid=?");
		query.setParameter(0,catalogid);
		List books=query.list();
		int totalSize=books.size();
		session.close();
		return totalSize;
	}
	
	public Book getBookById(Integer bookid){
		Session session=getSession();
		Book book=(Book)session.get(Book.class, bookid);
		session.close();
		return book;
	}
    public List getRequiredBookByHql(String hql) {
        
		try{
		Session session = getSession();
		Query query = session.createQuery(hql);
		List books = query.list();
		System.out.println(hql);
		
		return books;
		
		}catch(Exception e){
			System.out.println(e.getStackTrace());
			return null;
		}
		
	}

}
