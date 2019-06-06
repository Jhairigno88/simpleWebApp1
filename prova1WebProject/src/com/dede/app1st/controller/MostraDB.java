package com.dede.app1st.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class AddUser
 */
@WebServlet("/CreateUser.do")
public class MostraDB extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1. Recupera dati DB
		 * 2. Assegnarli ad una variabile di tipo List
		 * 3. Passo la variabile alla request con setAttribute
		 * 4. Reindirizzo la request alla pagina JSP
		 */
		
	}

}
