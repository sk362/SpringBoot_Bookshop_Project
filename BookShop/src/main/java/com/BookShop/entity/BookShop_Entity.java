package com.BookShop.entity;

import javax.persistence.*;

@Entity
@Table(name = "Book", schema = "BookShop")
public class BookShop_Entity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int bid;

    @Column(name = "bookname")
    private String bookname;

    @Column(name = "price")
    private int price;

    @Column(name = "quantity")
    private int qty;

    @Column(name = "author") // Ensure the database column matches the field name
    private String author;

    // Constructors, Getters, Setters, and toString
    public BookShop_Entity() {
    }

    public BookShop_Entity(int bid, String bookname, int price, int qty, String author) {
        this.bid = bid;
        this.bookname = bookname;
        this.price = price;
        this.qty = qty;
        this.author = author;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Override
    public String toString() {
        return "BookShop_Entity [bid=" + bid + ", bookname=" + bookname + ", price=" + price + ", qty=" + qty
                + ", author=" + author + "]";
    }
}
