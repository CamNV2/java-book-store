package com.javanet.dao;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.Part;

import com.javanet.beans.Book;
import com.javanet.beans.Image;
import com.javanet.db.ConnectionDB;

public class BookDAO {
 //lay data and img
 public static List<Book> getAllBook(Connection conn) {
		List<Book> listbook = new ArrayList<>();
		String sql = "select * from book";
		System.out.println("dsds");
		
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Book book=new Book(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getFloat(4),rs.getBytes(5));
				listbook.add(book);
				Blob blob = rs.getBlob("img");
			    InputStream inputStream = blob.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;

                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);                  
               }
                 
                byte[] img = outputStream.toByteArray();
                String base64Image = Base64.getEncoder().encodeToString(img);
                 
                 
                inputStream.close();
                outputStream.close();
//        		Book book = new Book(id , title , detail , price ,base64Image);
//			    listbook.add(book);
			}
			rs.close();
			pst.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listbook;
		
	}
    //insert Book
    //
//	public static boolean insertBook(Connection conn, Book book) {
//		
//		 String sql = "insert into book(title,detail,prices,img) values (?,?,?,?)";
//		 boolean rowInserted = false;
//		 //InputStream input = filePart.getInputStream();
//		try {
//			PreparedStatement pst = conn.prepareStatement(sql);
//			pst.setString(1, book.getTitle());
//			pst.setString(2, book.getDetail());
//			pst.setFloat(3, book.getPrice());
//			pst.setBlob(4, book.getImage());
//			if(pst.executeUpdate() > 0)
//				rowInserted = true;
//			pst.close();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return rowInserted;
//	}
     //update book
	public static boolean updateBook(Connection conn, Book book) {
		String sql = "update book set title = ?, detail = ?, price = ?   where bookid = ?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, book.getTitle());
			pst.setString(2, book.getDetail());
			pst.setFloat(3, book.getPrice());
			pst.setInt(4, book.getId());
			//pst.setBytes(5, book.getImage());
			if(pst.executeUpdate() > 0)
				return  true;
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
     // get id of book
	public static Book getIdBook(Connection conn, int id) {
		Book book = null;
		String sql = "select * from book where bookid = ?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				String title = rs.getString("title");
				String detail = rs.getString("detail");
				float price = rs.getFloat("price");
				
				book = new Book(id, title, detail, price);
			}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return book;
	}
   ///delete book
 	public static boolean deleteBook(Connection conn, Book book) {
		String sql = "delete from book where bookid = ?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, book.getId());
			if(pst.executeUpdate() > 0)
				return true;
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
 	


//	   public static List<Book> getAllBook(Connection conn){
//		      List<Book> listbook = new ArrayList<>();
//		      String sql = "select * from book";
//		      try {
//				PreparedStatement pst = conn.prepareStatement(sql);
//			    ResultSet rs = pst.executeQuery();
//			    while(rs.next()) {
//			    	int id = rs.getInt("bookid");
//			    	String title = rs.getString("title");
//			    	String detail = rs.getString("detail");
//			    	float price = rs.getFloat("price");
//			    	Blob blob = rs.getBlob("image");
//					InputStream inputStream = blob.getBinaryStream();
//		            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
//		            byte[] buffer = new byte[4096];
//		            int bytesRead = -1;
//		             
//		            try {
//						while ((bytesRead = inputStream.read(buffer)) != -1) {
//						    outputStream.write(buffer, 0, bytesRead);                  
//						}
//					} catch (IOException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
//		             
//		            byte[] imageBytes = outputStream.toByteArray();
//		            String base64Image = Base64.getEncoder().encodeToString(imageBytes);
//		             
//		             
//		            try {
//						inputStream.close();
//					} catch (IOException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
//		            try {
//						outputStream.close();
//					} catch (IOException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
//			    	Book book = new Book (id, title , detail, price,base64Image);
//			    	listbook.add(book);
//			    }
//			    
//			    rs.close();
//			    pst.close();
//		      } catch (SQLException e) {
//				
//				e.printStackTrace();
//			}
//		      return listbook;
//		    }
		    
     
}

