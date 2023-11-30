<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="layouttopo.jsp"></jsp:include>
	<c:set var="ano" value="2023"></c:set>
	<div class="row">
		<h1>Colaboradores</h1>
	</div>
	<div class="row">
		<ul>
			<c:forEach var="nome" items="${listaColaboradores}">
				<li>${nome}</li>
			</c:forEach>
		</ul>
	</div>
	<div>
		<c:if test="${ano>0}">
		<p>Informação atualizada em ${ano}</p>
		</c:if>
	</div>
<jsp:include page="layoutrodape.jsp"></jsp:include>