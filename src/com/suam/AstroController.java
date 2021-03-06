package com.suam;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AstroController")
public class AstroController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		String nome = request.getParameter("nome");
		String idad = request.getParameter("idade");
		String verHoroscopo;

		int idade = Integer.parseInt(idad);

		PessoaBean pessoa = new PessoaBean();

		pessoa.setNome(nome);
		pessoa.setIdade(idade);

		boolean verHoro;
		try {
			verHoroscopo = request.getParameter("verHoroscopo");
			request.setAttribute("signo", pessoa.converte(idade));
			if (verHoroscopo.equals("sim")) {
				verHoro = true;
			} else {
				verHoro = false;
			}

		} catch (Exception e) {
			verHoro = false;
			e.printStackTrace();
		}

		request.setAttribute("nome", pessoa.getNome());
		request.setAttribute("idade", pessoa.getIdade());
		request.setAttribute("dias", pessoa.calculaDias());
		request.setAttribute("meses", pessoa.calculaMeses());
		request.setAttribute("anos", pessoa.calculaAnos());
		request.setAttribute("minutos", pessoa.calculaMinutos());
		request.setAttribute("segundos", pessoa.calculaSegundos());
		request.setAttribute("verSigno", Boolean.toString(verHoro));
		
		request.getRequestDispatcher("resultado.jsp").forward(request, response);
		
		//redirecionando pelo navegador
        //response.sendRedirect("resultado.jsp");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//request.getRequestDispatcher("astro.html").forward(request, response);
		//redirecionando pelo navegador
        response.sendRedirect("astro.html");
	}

}
