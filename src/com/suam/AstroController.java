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

	public AstroController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		String nome = request.getParameter("nome");
		String idad = request.getParameter("idade");
		String verHoroscopo = request.getParameter("verHoroscopo");

		int idade = Integer.parseInt(idad);
		 
		PessoaBean pessoa = new PessoaBean();
		
		pessoa.setNome(nome);
		pessoa.setIdade(idade);
		
		boolean verHoro;
		if (verHoroscopo.equals("sim")) {
			verHoro = true;
			request.setAttribute("signo", pessoa.converte(idade));
		} else {
			verHoro = false;
		}

		request.setAttribute("nome", pessoa.getNome());
		request.setAttribute("idade", pessoa.getIdade());
		request.setAttribute("dias", pessoa.calculaDias());
		request.setAttribute("meses", pessoa.calculaMeses());
		request.setAttribute("anos", pessoa.calculaAnos());
		request.setAttribute("minutos", pessoa.calculaMinutos());
		request.setAttribute("segundos", pessoa.calculaSegundos());
		request.setAttribute("verSigno", Boolean.toString(verHoro)); 
		
		System.out.println(pessoa.nome+"\nDias - "+pessoa.calculaDias()+"\nMeses - "
				+ "" + pessoa.calculaMeses()+"\nAnos - "+pessoa.calculaAnos()+"\n Minutos - "
						+ ""+pessoa.calculaMinutos()+" Segundos - "+pessoa.calculaSegundos());
		
		request.getRequestDispatcher("resultado.jsp").forward(request, response);	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

}
