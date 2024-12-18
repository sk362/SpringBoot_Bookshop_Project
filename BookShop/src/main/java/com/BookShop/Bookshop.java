package com.BookShop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Bookshop {

	public static void main(String[] args) {
		SpringApplication.run(Bookshop.class, args);
		System.err.println("Book Shop Application Started");
	}

}
