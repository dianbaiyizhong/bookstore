package org.apex.bookstore.action;

import java.util.List;
import java.util.Map;

import org.apex.bookstore.service.IBookService;
import org.apex.bookstore.service.ICatalogService;
import org.apex.bookstore.util.Pager;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BookAction extends ActionSupport {
	protected ICatalogService catalogService;
	protected IBookService bookService;
	protected Integer catalogid;
	private Integer currentPage = 1;

	private String bookname;
	private int minPrice;
	private int maxPrice;

	public Integer getCatalogid() {
		return catalogid;
	}

	public void setCatalogid(Integer catalogid) {
		this.catalogid = catalogid;
	}

	public ICatalogService getCatalogService() {
		return catalogService;
	}

	public void setCatalogService(ICatalogService catalogService) {
		this.catalogService = catalogService;
	}

	public String browseCatalog() throws Exception {
		List catalogs = catalogService.getAllCatalogs();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("catalogs", catalogs);
		return SUCCESS;
	}

	public String browseBookPaging() throws Exception {

		int totalSize = bookService.getTotalByCatalog(catalogid);
		Pager pager = new Pager(currentPage, totalSize);

		// List books=bookService.getBookByCatalogid(catalogid);
		List books = bookService.getBookByCatalogidPaging(catalogid,
				currentPage, pager.getPageSize());
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("books", books);
		request.put("pager", pager);

		// 购物车要返回时,需要记住返回的地址
		Map session = ActionContext.getContext().getSession();
		request.put("catalogid", catalogid);

		return SUCCESS;
	}

	public String browseBook() throws Exception {
		List books = bookService.getBookByCatalogid(catalogid);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("books", books);

		return SUCCESS;
	}

	public String searchBook() throws Exception {

		StringBuffer hql = new StringBuffer("from Book b ");
		if (bookname != null && bookname.length() != 0)
			hql.append("where b.bookname like '%" + bookname + "%'");
		// if(minPrice !=0 && maxPrice !=0)
		// hql.append(" and b.price >"+minPrice + " and b.price <"+maxPrice);
		List books = bookService.getRequiredBookByHql(hql.toString());
		Map request = (Map) ActionContext.getContext().get("request");
		System.out.println(hql);
		System.out.println(bookname);
		request.put("books", books);
		return SUCCESS;
	}

	public String newBook() throws Exception {
		List books = bookService.getNewBook();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("books", books);
		return SUCCESS;
	}

	public IBookService getBookService() {
		return bookService;
	}

	public void setBookService(IBookService bookService) {
		this.bookService = bookService;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

}
