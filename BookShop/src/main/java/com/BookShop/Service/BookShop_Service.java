package com.BookShop.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.BookShop.Bookshop;
import com.BookShop.Dao.BookShop_Dao;
import com.BookShop.entity.BookShop_Entity;


@Service
public class BookShop_Service {
    @Autowired
    private BookShop_Dao bookshop_dao;

    public String addBook(BookShop_Entity bookshop) {
        System.out.println("We are in service--add method");
        String msg = bookshop_dao.addBook(bookshop);
        return msg;
    }

//	public List<Bookshop> displayBook() {
//		// TODO Auto-generated method stub
//		
//		List<Bookshop> Blist=bookshop_dao.displayBook();
//		return Blist;
//	}
//	
    public List<BookShop_Entity> displayBook() {
        return bookshop_dao.displayBook(); // Return BookShop_Entity list
    }

	public String deleteBook(int pk) {
		// TODO Auto-generated method stub
		System.out.println("we are in delete service");
		String res = bookshop_dao.deleteBook(pk);
		return res;
		
	}
	
	public BookShop_Entity getBook(int pk) {
		BookShop_Entity bookshopentity = bookshop_dao.getBook(pk);
		return bookshopentity;
	}

	public String updateBook(BookShop_Entity bookshopentity) {
		String msg = bookshop_dao.updateBook(bookshopentity);
		return null;
	}


}

