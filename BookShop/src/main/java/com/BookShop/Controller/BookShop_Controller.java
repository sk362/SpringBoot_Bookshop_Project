package com.BookShop.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.BookShop.Bookshop;
import com.BookShop.Service.BookShop_Service;
import com.BookShop.entity.BookShop_Entity;





@Controller
public class BookShop_Controller {
	
	@Autowired
	private BookShop_Service bookshop_service;
	
	@GetMapping("/add-book")
	public String InsertBook() {
		return "add";
		
	}
	
	@PostMapping("/insert-book")
	public String addBook(@ModelAttribute BookShop_Entity bookshop) {
		System.err.println("We are in post method");
		System.out.println(bookshop);
		String msg = bookshop_service.addBook(bookshop);
		System.err.println(msg);
		return "add";
	}
	
	@GetMapping("/display-book")
	public String displayBook(Model model) {
		System.err.println("We are in display-book method");
		List<BookShop_Entity> list = bookshop_service.displayBook();
		System.err.println(list);
		model.addAttribute("books", list);
		return "display";
	}
	
	@GetMapping("/delete-book")
	public String deleteBook(@RequestParam("bid") int pk) {
		System.out.println(pk);
		System.out.println("we are in delete method");
		String res = bookshop_service.deleteBook(pk);
		System.out.println(res);
		return "redirect:/display-book";
	}
	
	@GetMapping("/view-book")
	public String viewBook(@RequestParam("bid") int pk, Model model) {
		
		BookShop_Entity bookshopentity = bookshop_service.getBook(pk);
		model.addAttribute("book",bookshopentity);
		return "update";
	}
	
	@PostMapping("/update-book")
	public String updateBook(@ModelAttribute BookShop_Entity bookshopentity) {
		String msg = bookshop_service.updateBook(bookshopentity);
		return "redirect:/display-book";
	}

	

}
