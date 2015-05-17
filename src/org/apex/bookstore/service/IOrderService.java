package org.apex.bookstore.service;

import org.apex.bookstore.vo.Orders;

public interface IOrderService {

	public Orders saveOrder(Orders order);
}
