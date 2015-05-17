package org.apex.bookstore.service.impl;

import java.util.List;

import org.apex.bookstore.dao.ICatalogDAO;
import org.apex.bookstore.service.ICatalogService;

public class CatalogService implements ICatalogService {
	private ICatalogDAO catalogDAO;
	
	public List getAllCatalogs(){
		return catalogDAO.getAllCatalogs();
	}

	public ICatalogDAO getCatalogDAO() {
		return catalogDAO;
	}

	public void setCatalogDAO(ICatalogDAO catalogDAO) {
		this.catalogDAO = catalogDAO;
	}

	
}
