package org.apex.bookstore.service.impl;

import org.apex.bookstore.dao.IOrderDAO;
import org.apex.bookstore.service.IOrderService;
import org.apex.bookstore.vo.Orders;

public class OrderService implements IOrderService {

	private IOrderDAO orderDAO;
	public void setOrderDAO(IOrderDAO orderDAO) {
		this.orderDAO = orderDAO;
	}
	public Orders saveOrder(Orders order) {
		
		return orderDAO.saveOrder(order);
	}

}
