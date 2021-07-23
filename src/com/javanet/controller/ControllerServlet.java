package com.javanet.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.javanet.beans.Book;
import com.javanet.beans.Image;
import com.javanet.dao.BookDAO;
import com.javanet.db.ConnectionDB;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;


@WebServlet("/Connectionservlet")
@MultipartConfig()
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     
    public ControllerServlet() {
        super();
        
    }
    Connection conn = ConnectionDB.getConnectionDB();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		switch(action) {
		case "/new":
			showNewForm(request , response);
			break;
		
//		case "/insert":
//			insertBook(request , response); 
//			break;
		
		case "/delete":
			 deleteBook(request , response);
			 break;
		case "/edit":
			 showEditForm(request , response);
			 break;
		case "/update":
			updateBook(request , response);
			break;
		case "/LOGIN":
			login(request , response);
			break;
//		case "/list":
	//	listbook(request,response);
//			break;
		case "/Admin":
			loginAdmin(request,response);
			break;
//		case "/listImg":
//			listImg(request, response);
//			break;
		case "/Reload":
			reload(request, response);
			break;
		case "/RealoadAd":
			ADLoad(request, response);
			break;
		case "/insertSG":
			insertSG(request, response);
			break;
//		case "/inserimg":
//			insertImg(request, response);
//			break;
		default:
//			listbook(request , response);
			break;
	}
}
	

	private void insertSG(HttpServletRequest request, HttpServletResponse response) {
		String us = request.getParameter("username");
		String ps = request.getParameter("password");
		Connection conn = ConnectionDB.getConnectionDB();
		String sql = "insert into login(Userr,Pass) values (?,?)" ;
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, us);
			pst.setString(2, ps);
			int row = pst.executeUpdate();
			if(row>0) {

				response.sendRedirect("Reload");
				return;
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}


	private void ADLoad(HttpServletRequest request, HttpServletResponse response) {
		Connection conn = ConnectionDB.getConnectionDB();
		 try {
			 List<Book> listbook = BookDAO.getAllBook(conn);
			request.setAttribute("listbook", listbook);
			RequestDispatcher rd = request.getRequestDispatcher("/admin/Admin_reload.jsp");
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
			
		}
		
	}


	private void reload(HttpServletRequest request, HttpServletResponse response) {
		Connection conn = ConnectionDB.getConnectionDB();
		 try {
			 List<Book> listbook = BookDAO.getAllBook(conn);
			request.setAttribute("listbook", listbook);
			RequestDispatcher rd = request.getRequestDispatcher("/Wedmodel.jsp");
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
			
		}
	
		
	}



	private void loginAdmin(HttpServletRequest request, HttpServletResponse response) {
		Connection conn = ConnectionDB.getConnectionDB();
		 try {
			 List<Book> listbook = BookDAO.getAllBook(conn);
			request.setAttribute("listbook", listbook);
			RequestDispatcher rd = request.getRequestDispatcher("/admin/index_admin.jsp");;
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	private void login(HttpServletRequest request, HttpServletResponse response) {
		String us = request.getParameter("username");
		String ps = request.getParameter("password");
		Connection conn = ConnectionDB.getConnectionDB();
		System.out.println("okkkk222222k");
		String sql = "select Userr,Pass from login where Userr=? and Pass=?" ;
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, us);
			pst.setString(2, ps);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				
				response.sendRedirect("Admin");
				return;
			}
			    response.sendRedirect("error.jsp");
			    return;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	private void updateBook(HttpServletRequest request, HttpServletResponse response) {
		
		 try { 
			Connection conn = ConnectionDB.getConnectionDB();
			int id = Integer.parseInt(request.getParameter("id"));
			String title = request.getParameter("title");
			String author = request.getParameter("detail");
			float price = Float.parseFloat(request.getParameter("price"));
			System.out.println(id);
			Book book = new Book(id, title, author, price);
			BookDAO.updateBook(conn, book);		
			
		
			RequestDispatcher rd = request.getRequestDispatcher("Admin");
			rd.forward(request, response);
		 }catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void deleteBook(HttpServletRequest request, HttpServletResponse response) {
		try {
			Connection conn = ConnectionDB.getConnectionDB();
			int id = Integer.parseInt(request.getParameter("id"));
			Book book = new Book(id);
			BookDAO.deleteBook(conn, book);
			RequestDispatcher rd = request.getRequestDispatcher("Admin");
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			Connection conn = ConnectionDB.getConnectionDB();
			int id = Integer.parseInt(request.getParameter("id"));
			System.out.println("id"+id);
			Book existbook = BookDAO.getIdBook(conn, id);
			request.setAttribute("book",existbook);
			
			RequestDispatcher rd = request.getRequestDispatcher("Form.jsp");
			rd.forward(request, response);
			System.out.println("sdfszzzzzzz");
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			RequestDispatcher rd = request.getRequestDispatcher("Form.jsp");
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		switch(action) {
		case "/insertImg":
			inserImge(request, response);
			break;
		}
	}

	private void inserImge(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		 Connection conn = ConnectionDB.getConnectionDB();
		 String title = request.getParameter("title");
		 String detail = request.getParameter("detail");
		 float prices = Float.parseFloat(request.getParameter("price"));
		 Part filePart = request.getPart("img");
		 String sql = "insert into book(title,detail,price,img) values (?,?,?,?)";
		 InputStream input = filePart.getInputStream();
		 try {
			 System.out.println("sussces");
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, title);
			pst.setString(2, detail);
			pst.setFloat(3, prices);
			pst.setBlob(4, input);
			int row = pst.executeUpdate();
			if(row>0) {
				System.out.println("Vcam");
				response.sendRedirect("Admin");
				System.out.println("Them thanh cong");
				return;
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
