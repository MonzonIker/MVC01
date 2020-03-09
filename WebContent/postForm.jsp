<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<title>postForm</title>
</head>
<body>
	<div class="row">
		<div class="col-4"></div>
		<div class="col-4 text-center">
			<form action="reciver" method="post">
				<div class="form-group">
					<label for="usuario">Usuario</label> <input type="text"
						class="form-control" id="usuario" name="usuario">
				</div>
				<div class="form-group">
					<label for="password">Password</label> <input type="text"
						class="form-control" id="password" name="password">
				</div>
				<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="edad" id="menor" value="15-20">
  <label class="form-check-label" for="menor">15-20</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="edad" id="joven" value="20-30">
  <label class="form-check-label" for="joven">20-30</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="edad" id="adulto" value="mayor30">
  <label class="form-check-label" for="adulto">30+</label>
</div><br>
<select class="form-control" name="asig">
  <option>asig1</option>
  <option>asig2</option>
  <option>asig3</option>
</select>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="uni1" id="defaultCheck1" name="unidad">
  <label class="form-check-label" for="defaultCheck1">
    uni1
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="uni2" id="defaultCheck1" name="unidad">
  <label class="form-check-label" for="defaultCheck1">
    uni2
  </label>
</div>
				<%
					if (request.getAttribute("error").equals("true")) {
				%>


				<div class="alert alert-danger alert-dismissible fade show"
					role="alert">
					Usuario o contraseña incorrectos! Intentalo otra vez.
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>


				<%
					}
				%>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>