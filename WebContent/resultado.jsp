<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- Inclus�o do jQuery via CDN
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"
	type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"
	type="text/javascript"></script>
	-->
<!-- Inclus�o do jQuery-->

<!-- BOOTSTRAP via CDN 
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">	
</script>
-->
<!-- BOOTSTRAP -->

<!-- Inclus�o do jQuery via link local -->
<script src="javascript/jquery.min.js" type="text/javascript"></script>
<script src="javascript/jquery.validate.js" type="text/javascript"></script>

<!-- Inclus�o do bootstrap via link local -->
<link rel="stylesheet" href="css/bootstrap-4.1.3/css/bootstrap.min.css">
<script src="css/bootstrap-4.1.3/js/bootstrap.min.js">
	
</script>

<!-- Inclus�o do js de valida��o-->
<script src="javascript/validacao.js" type="text/javascript"></script>
<!-- Inclus�o da folha de estilo-->
<link rel="stylesheet" type="text/css" href="css/estilo.css">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AstroWeb</title>
</head>
<body>
	<div class="container-fluid">
		<div class="corpo-Astro">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1>Astro Web</h1>
				</div>
			</div>

			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Nome</th>
								<th scope="col">Idade</th>
								<th scope="col">Meses</th>
								<th scope="col">Dias</th>
								<th scope="col">Minutos</th>
								<th scope="col">Segundos</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><%=request.getAttribute("nome")%></td>
								<td><%=request.getAttribute("idade")%></td>
								<td><%=request.getAttribute("meses")%></td>
								<td><%=request.getAttribute("dias")%></td>
								<td><%=request.getAttribute("minutos")%></td>
								<td><%=request.getAttribute("segundos")%></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-md-2"></div>
			</div>

			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<%
						String ver = (String) request.getAttribute("verSigno");
						if (ver.equals("true")) {
							out.print("<table class='table'>");
							out.print("<thead>");
							out.print("<tr>");
							out.print("<th scope='col'>Signo Chin�s</th>");
							out.print("</tr>");
							out.print("</thead>");
							out.print("<tbody>");
							out.print("<tr>");
							out.print("<td>");
							out.print("<img id='imagem' class='signo' src='" + request.getAttribute("signo")
									+ "' alt='Imagem de p�gina n�o encontrada'/>");
							out.print("</td>");
							out.print("</tr>");
							out.print("</tbody>");
							out.print("</table>");
						}
					%>
				</div>
				<div class="col-md-2"></div>
			</div>
			<div class="row">
				<div class="col-md-10"></div>
				<div class="col-md-2">
					<form id='form' data-toggle='validator' role='form' method='post'
						action="AstroController">
						<button type='submit' class='btn btn-warning btn-lg' id='voltar'
							name='voltar'>Voltar</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>