package com.BookShop.Dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.BookShop.Bookshop;
import com.BookShop.entity.BookShop_Entity;







@Repository
public class BookShop_Dao {
	
	@Autowired
	private SessionFactory sessionfactory;

	public String addBook(BookShop_Entity bookshop) {
		try {

			Session session = sessionfactory.openSession();
			Transaction tx = session.beginTransaction();
			session.save(bookshop);
			tx.commit();
			String msg = "book added successfully in db table...";
			return msg;
		} catch (Exception e) {
			e.printStackTrace();
			String msg = "Somthing went wrong....";
			return msg;
		}
	}

	public List<BookShop_Entity> displayBook() {
	    List<BookShop_Entity> Blist = null;
	    try (Session session = sessionfactory.openSession()) {
	        Criteria criteria = session.createCriteria(BookShop_Entity.class); // Use BookShop_Entity.class
	        Blist = criteria.list();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return Blist;
	}

	public BookShop_Entity getProduct(int pk) {
		System.out.println("we are in get product dao");
		BookShop_Entity bookshopentity = null;
		try {

			Session session = sessionfactory.openSession();
			bookshopentity = session.get(BookShop_Entity.class, pk);
			System.out.println(bookshopentity);
			return bookshopentity;
		} catch (Exception e) {

			e.printStackTrace();
			return bookshopentity;
		}
	}

	public String deleteBook(int pk) {
		BookShop_Entity bookshopentity = null;
		System.out.println("we are in delete product dao");
//		Product product = this.getProduct(pk);
//		System.out.println(product);
		
		try {

			Session session = sessionfactory.openSession();
			Transaction tx = session.beginTransaction();
			bookshopentity = session.get(BookShop_Entity.class, pk);
			session.delete(bookshopentity);
			tx.commit();
			String msg = "Book deleted from DB";
			return msg;
		} catch (Exception e) {

			e.printStackTrace();
			String msg = "Somthing went wrong....";
			return msg;
		}
		
		
	}
	public BookShop_Entity getBook(int pk) {
		System.out.println("we are in get product dao");
		BookShop_Entity bookshopentity = null;
		try {

			Session session = sessionfactory.openSession();
			bookshopentity = session.get(BookShop_Entity.class, pk);
			System.out.println(bookshopentity);
			return bookshopentity;
		} catch (Exception e) {

			e.printStackTrace();
			return bookshopentity;
		}
	}
	
	public String updateBook(BookShop_Entity bookshopentity) {
		try {

			Session session = sessionfactory.openSession();
			Transaction tx = session.beginTransaction();
			session.saveOrUpdate(bookshopentity);
			tx.commit();
			String msg = "book Updated successfully in db table...";
			return msg;
		} catch (Exception e) {
			e.printStackTrace();
			String msg = "Somthing went wrong....";
			return msg;
		}
		
	}

}
