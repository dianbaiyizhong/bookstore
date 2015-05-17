package org.apex.bookstore.action;

import java.util.Date;
import java.util.Iterator;
import java.util.Map;

import org.apex.bookstore.model.Cart;
import org.apex.bookstore.service.IBookService;
import org.apex.bookstore.service.IOrderService;
import org.apex.bookstore.vo.Book;
import org.apex.bookstore.vo.Orderitem;
import org.apex.bookstore.vo.Orders;
import org.apex.bookstore.vo.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ShoppingAction extends ActionSupport {
	private Integer bookid;
	private int quantity;
	private IBookService bookService;
	private IOrderService orderService;
	
	public String addToCart() throws Exception{
		Book book=bookService.getBookById(bookid);
		Orderitem orderitem=new Orderitem();
		orderitem.setBook(book);
		orderitem.setQuantity(quantity);
		Map session=ActionContext.getContext().getSession();
		Cart cart=(Cart)session.get("cart");
		if(cart==null){
			cart=new Cart();
		}
		cart.addBook(bookid, orderitem);
		session.put("cart",cart);
		return SUCCESS;
	}
	public String updateCart() throws Exception{
		Map session=ActionContext.getContext().getSession();
		Cart cart=(Cart)session.get("cart");
		cart.updateCart(bookid, quantity);
		session.put("cart", cart);
		return SUCCESS;
	}
	public String checkout() throws Exception{
		Map session=ActionContext.getContext().getSession();
		User user=(User)session.get("user");
		Cart cart=(Cart)session.get("cart");
		if(user==null || cart ==null)
			return ActionSupport.ERROR;
		
		Orders order=new Orders();
		order.setOrderdate(new Date());
		order.setUser(user);
		for(Iterator it =cart.getItems().values().iterator();it.hasNext();){
		   Orderitem orderitem=(Orderitem)it.next();
		   orderitem.setOrders(order);
		   order.getOrderitems().add(orderitem);
		}
		orderService.saveOrder(order);
		
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("order",order);
		
		return SUCCESS;
	}
	public Integer getBookid() {
		return bookid;
	}
	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public IBookService getBookService() {
		return bookService;
	}

	public void setBookService(IBookService bookService) {
		this.bookService=bookService;
	}
	public IOrderService getOrderService() {
		return orderService;
	}
	public void setOrderService(IOrderService orderService) {
		this.orderService = orderService;
	}
	
}
