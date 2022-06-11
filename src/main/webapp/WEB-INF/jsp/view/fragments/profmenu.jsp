<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<div class="collapse navbar-collapse" id="navbarNav">
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link active"
								aria-current="page"
								href="${pageContext.request.contextPath}/prof/showHome">Home</a></li>





		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
										 href="#" id="navbarScrollingDropdown" role="button"
										 data-bs-toggle="dropdown" aria-expanded="false">Export/Import Data </a>
			<ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
				<li class="dropdown-item"><a class="nav-link"
											 href="${pageContext.request.contextPath}/prof/importModule">Import
					Data</a></li>
				<li class="dropdown-item"><a class="nav-link"
											 href="${pageContext.request.contextPath}/prof/exportModule">Export
					Data</a></li>
				<li class="dropdown-item"><a class="nav-link"
											 href="${pageContext.request.contextPath}/prof/manageModules">Liste de module</a></li>
			</ul></li>


		<li class="nav-item"><form
				action="${pageContext.request.contextPath}/admin/serachPerson"
				class="d-flex" method="GET">
			<input name="cin" class="form-control me-2" type="search"
				   placeholder="Saisir CIN" aria-label="Search">
			<button class="btn btn-outline-success" type="submit">Search</button>
		</form></li>

		<li class="nav-item"><f:form
				action="${pageContext.request.contextPath}/logout" method="POST">

			<button type="submit" class="btn btn-link">logout</button>

		</f:form></li>

	</ul>



</div>
