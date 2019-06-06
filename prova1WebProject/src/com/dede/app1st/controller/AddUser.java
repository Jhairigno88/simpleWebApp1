package com.dede.app1st.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import com.dede.app1st.model.User;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/CreateUser.do")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//importiamo un po di oggetti da hybernate.
		Configuration config = new Configuration().configure();
		ServiceRegistry servReg= new StandardServiceRegistryBuilder().applySettings(config.getProperties()).build();		
		SessionFactory factory = config.buildSessionFactory(servReg);
		
		/*iniziamo a dare nuva vita alla nostra servlet!
		 * ottenuta la sessione tramite la factory, possiamo 
		 * configurare la transazione che ci permette di inserire
		 * i nostri dati come record nel database.
		 * 
		 * i passi da fare sono i seguenti:
		 * 1) iniziare una transazione con il metodo beginTransaction().
		 * 2) creare l'oggetto della classe User da storicizzare
		 * 3) invocare il metodo save() passandogli l'oggetto
		 *    che vogliamo far diventare persistente nel database
		 * 4) effettuare il commit dell'operazione appena avvenuta
		 * 5) chiudere la sessione.   
		 */
		 
		Session session= factory.openSession();
		session.beginTransaction();
		User u= new User(request.getParameter("first_name"), request.getParameter("last_name"), request.getParameter("country"));
		session.save(u);
		session.getTransaction().commit();
		session.close();
		/*requestDispatcher= comando per lo smistamento delle request, 
		 * in questo caso reinderizza alla pagina useradd.jsp
		 */
		RequestDispatcher view = request.getRequestDispatcher("useradd.jsp");
		view.forward(request, response);
		
	}

}
