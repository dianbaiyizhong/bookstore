package org.apex.bookstore.dao;

import org.apex.bookstore.vo.Orders;

public interface IOrderDAO {
	public Orders saveOrder(Orders order);
}
