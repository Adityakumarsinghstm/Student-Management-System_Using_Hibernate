package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Student;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class DeleteStudentServlet
 */
public class DeleteStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteStudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			int stuId = Integer.parseInt(request.getParameter("id").trim());
			
			Session session = FactoryProvider.getFactory().openSession();
			Transaction txt = session.beginTransaction();
			
			Student stu = session.get(Student.class, stuId);
			session.delete(stu);
			txt.commit();
			session.close();
			response.sendRedirect("index.jsp");
			
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
	}

}
