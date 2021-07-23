package com.javanet.beans;

public class Image {

		private int id;
		private String name;
		private byte[] image;
		private String base64Image;
		private float price;
		private String des;
		public Image() {
			
		}
		
		public Image(int id,String name, String base64Image) {
			super();
			this.id = id;
			this.name= name;
			this.base64Image = base64Image;
		}

		public Image( String base64Image,String name, float price, String des) {
			super();
			this.name = name;
			this.base64Image = base64Image;
			this.price = price;
			this.des = des;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public Image(int id, byte[] image, String base64Image) {
			super();
			this.id = id;
			this.image = image;
			this.base64Image = base64Image;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public byte[] getImage() {
			return image;
		}
		public void setImage(byte[] image) {
			this.image = image;
		}
		public String getBase64Image() {
			return base64Image;
		}
		public void setBase64Image(String base64Image) {
			this.base64Image = base64Image;
		}

		public float getPrice() {
			return price;
		}

		public void setPrice(float price) {
			this.price = price;
		}

		public String getDes() {
			return des;
		}

		public void setDes(String des) {
			this.des = des;
		}
		
}
