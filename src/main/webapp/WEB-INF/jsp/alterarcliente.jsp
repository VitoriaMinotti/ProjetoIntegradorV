<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="layouttopo.jsp"></jsp:include>
	<br>
	<div class="container mt-5">
		<h1 class="text-justify mb-4">Alterar Cadastros Familiares</h1>
	</div>
<form:form action="/alterarcliente" modelAttribute="cliente">
		<div class="container mt-5">
		
		    <fieldset>
			    <div class="mb-3">
			      <label for="disabledTextInput" class="form-label">Id</label>
			      <input type="text" id="disabledTextInput" class="form-control" placeholder="Id" value="${cliente.getId()}" disabled>
			      <input type="hidden" name="id" value="${cliente.getId()}">
			    </div>
			</fieldset>

			<div class="mb-3">
				<label for="nome" class="form-label">Nome:</label>
				<input type="text" class="form-control" id="nome" name="nome" placeholder="Nome" value="${cliente.getNome()}">
			</div>

			<div class="mb-3">
				<label for="cpf" class="form-label">CPF:</label>
				<input type="text" class="form-control" id="cpf" name="cpf" placeholder="CPF" value="${cliente.getCpf()}">
			</div>

			<div class="mb-3">
				<label for="rg" class="form-label">RG:</label>
				<input type="text" class="form-control" id="rg" name="rg" placeholder="RG" value="${cliente.getRg()}">
			</div>

			<div class="mb-3">
				<label for="telefone" class="form-label">Telefone:</label>
				<input type="text" class="form-control" id="telefone" name="telefone" placeholder="Telefone" value="${cliente.getTelefone()}">
			</div>

			<div class="mb-3">
				<label for="endereco" class="form-label">Endereço:</label>
				<input type="text" class="form-control" id="endereco" name="endereco" placeholder="Digite o endereço com número">
			</div>
			
			<div class="mb-3">
				<label for="cidade" class="form-label">Cidade:</label>
				<input type="text" class="form-control" id="cidade" name="cidade" placeholder="Cidade" value="${cliente.getCidade()}">
			</div>

			<div class="mb-3">
				<label for="cidade" class="form-label">Dependentes:</label>
				<input type="text" class="form-control" id="dependentes" name="dependentes" placeholder="Número de dependentes" value="${cliente.getDependentes()}">
			<br>
			</div>
				<button type="submit" class="btn btn-primary">Alterar</button>
			</div>
			<br>

</form:form>

<jsp:include page="layoutrodape.jsp"></jsp:include>