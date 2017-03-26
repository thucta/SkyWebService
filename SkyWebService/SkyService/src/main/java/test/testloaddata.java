package test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import entity.Users;
import utils.MySessionFactory;

/**
 * Servlet implementation class testloaddata
 */
@WebServlet("/testloaddata")
public class testloaddata extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public testloaddata() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Users> lst = new ArrayList<>();

		try {
			Session sess = MySessionFactory.getSessionFactory().openSession();
			sess.getTransaction().begin();
			System.out.println("bat dau lay danh sach !");
			lst = sess.createCriteria(Users.class).list();
			System.out.println(" danh sach ne " + lst.get(0).getEmail());
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("vao loi nha !");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
