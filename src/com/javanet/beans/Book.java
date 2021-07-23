package com.javanet.beans;

public class Book {
	private int id;
	private String title ;
	private String detail;
	private float price;
	private byte[] img;
	private String base64Image;
	public String getBase64Image() {
		return base64Image;
	}
	public void setBase64Image(String base64Image) {
		this.base64Image = base64Image;
	}
	public Book(int id, String title, String detail, float price,String base64Image) {
		this.id = id;
		this.title = title;
		this.detail = detail;
		this.price = price;
		this.base64Image = base64Image;
	}
	public Book(int id ,String title, String detail, float price, byte[] img) {
		super();
	    this.id = id;
		this.title = title;
		this.detail = detail;
		this.price = price;
		this.img= img;
	}
	public Book(int id ,String title, String detail, float price) {
		super();
	    this.id = id;
		this.title = title;
		this.detail = detail;
		this.price = price;
	}

	public Book(String title, byte[] img, float price) {
		
		this.title = title;
		this.img = img;
		this.price = price;
	}
	public Book(int id ,String title, byte[] img, float price) {
		this.id = id;
		this.title = title;
		this.img= img;
		this.price = price;
	}
	
	public Book(int id) {
		this.id=id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public byte[] getImg() {
		return img;
	}
	public void setImage(byte[] image) {
		this.img = img;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
}
