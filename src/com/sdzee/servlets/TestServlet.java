package com.sdzee.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sdzee.beans.ForzaGreen;

public class TestServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
	                 throws ServletException, IOException{
		String nom = req.getParameter("nom");
		req.setAttribute("testAttr", "un test d'attribut    " + nom);
		
		ForzaGreen bean = new ForzaGreen();
		bean.setNom("TELLAT");
		bean.setPrenom("wael");
		req.setAttribute("forzaGreen", bean);
		
		// http://localhost:8080/test0/toto?nom=wael
		this.getServletContext().getRequestDispatcher("/WEB-INF/testJSP.jsp").forward(req, resp);
		
	}

}
