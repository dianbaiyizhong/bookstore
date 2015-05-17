package org.apex.bookstore.dao.impl;

import java.util.List;

import org.apex.bookstore.dao.BaseDAO;
import org.apex.bookstore.dao.ICatalogDAO;
import org.hibernate.Query;
import org.hibernate.classic.Session;

public class CatalogDAO extends BaseDAO implements ICatalogDAO{
	 public List getAllCatalogs(){
		 Session session=getSession();
		 Query query=session.createQuery("from Catalog c");
		 List catalogs=query.list();
		 session.close();
		 return catalogs;
	 }
}
