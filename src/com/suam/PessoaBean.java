package com.suam;

import java.util.Calendar;
import java.util.GregorianCalendar;

public class PessoaBean {
	String nome;
	int idade;
	
	float dia;
	int meses;
	int ano;
	long minuto;
	long segundo;
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public float calculaDias() {
		dia = (float) (getIdade() * 365.25f);
		return dia;
	}

	public int calculaMeses() {
		meses = (getIdade() *12);
		return meses;
	}

	public float calculaAnos() {
		ano = getIdade();
		return ano;
	}

	public long calculaMinutos() {
		minuto = (long) (getIdade() * 365.25 * 60 * 24); 
		return minuto;
	}

	public long calculaSegundos() {
		segundo = (long) (getIdade() * 365.25 * 60 * 60 * 24); 
		return segundo;
	}

	
	public String converte(int idade) {

		Calendar cal = new GregorianCalendar();
		int ano = cal.get(Calendar.YEAR);

		int anoNascimento = ano - idade;

		String linkSigno = "";

		int x = (1997 - anoNascimento) % 12;

		if ((x == 1) || (x == -11)) {
			linkSigno = "imagens/1-o-rato.png";
		} else {
			if (x == 0) {
				linkSigno = "imagens/2-o-boi.png";
			} else {
				if ((x == 11) || (x == -1)) {
					linkSigno = "imagens/3-o-tigre.png";
				} else {
					if ((x == 10) || (x == -2)) {
						linkSigno = "imagens/4-o-coelho.png";
					} else {
						if ((x == 9) || (x == -3)) {
							linkSigno = "imagens/5-o-dragao.png";
						} else {
							if ((x == 8) || (x == -4)) {
								linkSigno = "imagens/6-a-serpente.png";
							} else {
								if ((x == 7) || (x == -5)) {
									linkSigno = "imagens/7-o-cavalo.png";
								} else {
									if ((x == 6) || (x == -6)) {
										linkSigno = "imagens/8-o-carneiro.png";
									} else {
										if ((x == 5) || (x == -7)) {
											linkSigno = "imagens/9-o-macaco.png";
										} else {
											if ((x == 4) || (x == -8)) {
												linkSigno = "imagens/10-o-galo.png";
											} else {
												if ((x == 3) || (x == -9)) {
													linkSigno = "imagens/11-o-cao.png";
												} else {
													if ((x == 2) || (x == -10)) {
														linkSigno = "imagens/12-o-porco.png";
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}

		return linkSigno;

	}
}
