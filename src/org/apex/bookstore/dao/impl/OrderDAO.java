package org.apex.bookstore.dao.impl;

import org.apex.bookstore.dao.BaseDAO;
import org.apex.bookstore.dao.IOrderDAO;
import org.apex.bookstore.vo.Orders;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class OrderDAO extends BaseDAO implements IOrderDAO{
    public Orders saveOrder(Orders order) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		session.save(order);
		tx.commit();
		session.close();
		return order;
	}
}
