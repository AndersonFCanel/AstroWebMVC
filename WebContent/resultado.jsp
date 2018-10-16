<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- Inclusão do jQuery via CDN
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"
	type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"
	type="text/javascript"></script>
	-->
<!-- Inclusão do jQuery-->

<!-- BOOTSTRAP via CDN 
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">	
</script>
-->
<!-- BOOTSTRAP -->

<!-- Inclusão do jQuery via link local -->
<script src="javascript/jquery.min.js" type="text/javascript"></script>
<script src="javascript/jquery.validate.js" type="text/javascript"></script>

<!-- Inclusão do bootstrap via link local -->
<link rel="stylesheet" href="css/bootstrap-4.1.3/css/bootstrap.min.css">
<script src="css/bootstrap-4.1.3/js/bootstrap.min.js">
	
</script>

<!-- Inclusão do js de validação-->
<script src="javascript/validacao.js" type="text/javascript"></script>
<!-- Inclusão da folha de estilo-->
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
			<div class="col-md-1"></div>
			<div class="col-md-10">
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
			<div class="col-md-1"></div>
		</div>

		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-5">

				<%
					String ver = (String) request.getAttribute("verSigno");

					if (ver.equals("true")) {
						out.print(
								"<table class='table'>\n<thead>\n<tr>\n<th scope='col'>Signo</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>");
						out.print("<img src='" + request.getAttribute("signo")
								+ "' alt='Imagem de página não encontrada' width='100%' height='70%' />");
						out.print("</td>\n</tr>\n</tbody>\n</table>");
					}
				%>
			</div>
			<div class="col-md-6"></div>
		</div>
		<div class="row">
			<div class="col-md-11"></div>
			<div class="col-md-1">
				<form id="form" data-toggle="validator" role="form" method="post"
					action="astro.html">
					<button type="submit" class="btn btn-primary">Voltar</button>
				</form>
			</div>
		</div>
	</div>
	</div>
</body>
</html>