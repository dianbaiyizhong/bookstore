package org.apex.bookstore.model;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.apex.bookstore.vo.Book;
import org.apex.bookstore.vo.Orderitem;

public class Cart {
	protected Map<Integer,Orderitem> items;
	
	public Cart(){
	   if(items==null)	{
		   items=new HashMap<Integer,Orderitem>();
	}
	}
	
	public void addBook(Integer bookid,Orderitem orderitem){
		if(items.containsKey("bookid")){
			Orderitem _orderitem=items.get(bookid);
			_orderitem.setQuantity(_orderitem.getOrderitemid()+orderitem.getQuantity());
			items.put(bookid, _orderitem);
			
		}
		else{
			items.put(bookid, orderitem);
		}
	}
	public void updateCart(Integer bookid,int quantity){
		Orderitem orderitem=items.get(bookid);
		orderitem.setQuantity(quantity);
		items.put(bookid, orderitem);
	}
	
	public int getTotalPrice(){
		int totalPrice=0;
		for(Iterator it=items.values().iterator();it.hasNext();){
			Orderitem orderitem=(Orderitem)it.next();
			Book book=orderitem.getBook();
			int quantity=orderitem.getQuantity();
			totalPrice+=book.getPrice()*quantity;
			
		}
		return totalPrice;
	}

	public Map<Integer, Orderitem> getItems() {
		return items;
	}

	public void setItems(Map<Integer, Orderitem> items) {
		this.items = items;
	}
}
