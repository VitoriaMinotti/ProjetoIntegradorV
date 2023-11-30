<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="layouttopo.jsp"></jsp:include>

<br>

<div class="container mt-3">
	<h1 class="text-justify mb-12">Famílias Cadastradas</h1>
</div>
<br>
<div class="container-fluid">
	<c:choose>
		<c:when test="${listaClientes.size() > 0}">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Nome do Responsável</th>
						<th scope="col">CPF</th>
						<th scope="col">RG</th>
						<th scope="col">Telefone</th>
						<th scope="col">Endereço</th>
						<th scope="col">Cidade</th>
						<th scope="col">Dependentes</th>
						<th scope="col">Alterar</th>
						<th scope="col">Excluir</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cliente" items="${listaClientes}">
						<tr>
							<th scope="row">${cliente.getId()}</th>
							<td>${cliente.getNome()}</td>
							<td>${cliente.getCpf()}</td>
							<td>${cliente.getRg()}</td>
							<td>${cliente.getTelefone()}</td>
							<td>${cliente.getEndereco()}</td>
							<td>${cliente.getCidade()}</td>
							<td>${cliente.getDependentes()}</td>
							<td>
								<a href="/alterarcliente?id=${cliente.getId()}">
									<img src="imagens/editar.png" alt="Editor" width="30">
								</a>
							</td>
							<td>
								<a href="/excluircliente?id=${cliente.getId()}">
									<img src="imagens/excluir.png" alt="Editor" width="30" style="text-align:center">
								</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:when>
		<c:otherwise>
			<p>Não há resultados.</p>
		</c:otherwise>
	</c:choose>
</div>

		<br>
	<br>
	<br>
	<br>
<jsp:include page="layoutrodape.jsp"></jsp:include>