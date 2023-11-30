<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="layouttopo.jsp"></jsp:include>

<form:form action="/cadastrarcliente" modelAttribute="cliente">
	<body style="background-color: #CBD7CD;">
    <div class="container-fluid text-center">
        <div class="row">
            <div class="col-12 col-md-6 offset-md-3 mx-auto">
        <br><br><h1>INTEGRANTES DA FAMÍLIA</h1><br>
        <form>
          <div class="row">
            <div class="mb-3">
              <div class="form-floating mb-3">
                  <input type="text" class="form-control" required id="floatingInput" onkeyup="handleOnlyLetters(event); validateField(this); " name="nome_integrante[]" placeholder="Nome">
                  <label for="floatingInput">Nome</label>
                  <div class="invalid-feedback">Por favor, preencha este campo.</div>
              </div>
            </div>
            <div class="mb-3">
              <div class="form-floating mb-3">
                  <input type="text" class="form-control" required id="floatingInput" onkeyup="handleOnlyLetters(event); validateField(this); " name="parentesco_integrante[]" placeholder="Parentesco">
                  <label for="floatingInput">Parentesco</label>
                  <div class="invalid-feedback">Por favor, preencha este campo.</div>
              </div>
            </div>
            <div class="mb-3">
              <div class="form-floating mb-3">
                <input type="tel" class="form-control" onkeyup="handleOnlyNumbers(event); validateField(this);" name="idade[]" placeholder="Idade" required>
                <label for="floatingInput">Idade</label>
                <div class="invalid-feedback">Por favor, preencha este campo.</div>
              </div>
            </div>
            <div class="mb-3">
              <div class="form-floating mb-3">
                <input type="text" class="form-control" onkeyup="handleOnlyLetters(event); validateField(this);" name="profissao[]" placeholder="Profiss�o" required>
                <label for="floatingInput">Profiss�o</label>
                <div class="invalid-feedback">Por favor, preencha este campo.</div>
              </div>
            </div>
            <div class="mb-3">
              <div class=" form-floating mb-3">
                <select class="form-select" required id="renda[]" >
                    <option selected value="0"></option>
                    <option value="1">Sim</option>
                    <option value="2">N�o</option>
                </select>
                <label for="aposentado">Possui renda?</label>

                <div class="invalid-feedback">Por favor, preencha este campo com um valor v�lido.</div>
              </div>
            </div>
            <div class="mb-3">
              <div class=" form-floating mb-3">
                <select class="form-select" required id="pcd[]" >
                    <option selected value="0"></option>
                    <option value="1">Sim</option>
                    <option value="2">N�o</option>
                </select>
                <label for="aposentado">PcD?</label>

                <div class="invalid-feedback">Por favor, preencha este campo com um valor v�lido.</div>
              </div>
            </div>
            <div class="container text-center">
              <div class="row">
                  <div class="col align-self-start"></div>
                  <div class="col align-self-center"></div>
                  <div class="col align-self-end">
                    <button type="button" class="btn btn-info " style="color: white;" onclick="addCol()">+</button>
                    
                    <br><br>
                  </div>
              </div>
            </div>
            <hr>
          </div>
          <div class="container text-center">
              <div class="row">
                  <div class="col align-self-start"></div>
                  <div class="col align-self-center"></div>
                  <div class="col align-self-end">
                      <button type="submit" class="btn btn-primary">CONFIRMAR</button>
                  </div>
              </div>
          </div>                             
          <br>
        </form>
      </div>
    </div>
  </div>
</body>

</form:form>

<jsp:include page="layoutrodape.jsp"></jsp:include>