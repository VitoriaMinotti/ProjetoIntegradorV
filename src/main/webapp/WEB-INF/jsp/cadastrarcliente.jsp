<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="layouttopo.jsp"></jsp:include>

<form:form action="/cadastrarcliente" modelAttribute="cliente">
	<body style="background-color: #CBD7CD;">
  <div class="container-fluid text-center">
    <div class="row">
      <div class="col-12 col-md-6 offset-md-3 mx-auto">
        <br><br>
        <h1>CADASTRO NOVA FAM�LIA</h1><br>
        <form action="cadastro_integrantes.html" method="get">
          <div class="mb-3">
            <div class="form-floating mb-3">
              <input type="text" class="form-control" required id="floatingInput"
                onkeyup="handleOnlyLetters(event); validateField(this); " name="responsavel"
                placeholder="Respons�vel pela fam�lia">
              <label for="floatingInput">Respons�vel pela fam�lia</label>
              <div class="invalid-feedback">Por favor, preencha este campo.</div>
            </div>
          </div>
          <div class="mb-3">
            <div class="input-group row-cols-2">
              <div class="form-floating mb-3">
                <input type="tel" class="form-control" required id="floatingInput"
                  oninput="mascaraRG(this); validateField(this); validaRG(this);" name="rg" placeholder="RG">
                <label for="floatingInput">RG</label>
                <div class="invalid-feedback">Por favor, preencha este campo com um RG v�lido.</div>
              </div>
              <div class="form-floating mb-3">
                <input type="tel" class="form-control" required id="floatingInput"
                  oninput="mascaraCPF(this); validateField(this); validaCPF(this);" name="CPF" placeholder="CPF">
                <label for="floatingInput">CPF</label>
                <div class="invalid-feedback">Por favor, preencha este campo com um CPF v�lido.</div>
              </div>
            </div>
          </div>
          <div class="mb-3">
            <div class="input-group row-cols-2">
              <div class="form-floating mb-3">
                <input type="tel" class="form-control" required id="floatingInput" maxlength="10"
                  onkeyup="handleData(event); validateField(this); validarDataNascimento(this);" name="dataNascimento"
                  placeholder="Data Nascimento">
                <label for="floatingInput">Data Nascimento</label>
                <div class="invalid-feedback">Por favor, preencha este campo com uma data v�lida.</div>
              </div>
              <div class="form-floating mb-3">
                <input type="tel" class="form-control" required id="floatingInput" maxlength="15"
                  onkeyup="handlePhone(event); validateField(this);" name="celular" placeholder="Celular">
                <label for="floatingInput">Celular</label>
                <div class="invalid-feedback">Por favor, preencha este campo com um telefone v�lido.</div>
              </div>
            </div>
          </div>
          <div class="mb-3">
            <div class="input-group row-cols-2 form-floating mb-3">
              <div class="form-floating mb-3">
                <input type="text" class="form-control" required id="floatingInput" maxlength="50"
                  onkeyup="handleOnlyLetters(event); validateField(this);" name="endrua" placeholder="Endere�o Rua">
                <label for="floatingInput">Rua</label>
                <div class="invalid-feedback">Por favor, preencha este campo com um valor v�lido.</div>
              </div>
              <div class="form-floating mb-3">
                <input type="tel" class="form-control" required id="floatingInput" maxlength="10"
                  onkeyup="handleOnlyNumbers(event); validateField(this);" name="endnumero"
                  placeholder="Endere�o Numero">
                <label for="floatingInput">N�mero</label>
                <div class="invalid-feedback">Por favor, preencha este campo com um valor v�lido.</div>
              </div>
            </div>
            <div class="input-group row-cols-2 form-floating mb-3 ">
              <div class="form-floating mb-3">
                <input type="text" class="form-control" required id="floatingInput" maxlength="50"
                  onkeyup="handleOnlyLetters(event); validateField(this);" name="endCidade"
                  placeholder="Endere�o Cidade">
                <label for="floatingInput">Cidade</label>
                <div class="invalid-feedback">Por favor, preencha este campo com um valor v�lido.</div>
              </div>
              <div class="form-floating mb-3">
                <input type="tel" class="form-control" required id="floatingInput" maxlength="9"
                  onkeyup="handleCEP(event); validateField(this);" name="endCEP" placeholder="Endere�o CEP">
                <label for="floatingInput">CEP</label>
                <div class="invalid-feedback">Por favor, preencha este campo com um valor v�lido.</div>
              </div>
            </div>
          </div>
          <div class="mb-3">
            <div class="form-floating mb-3">
              <input type="text" class="form-control" required id="floatingInput"
                onkeyup="handleOnlyLetters(event); validateField(this);" name="profissao"
                placeholder="Respons�vel pela fam�lia">
              <label for="floatingInput">Profiss�o do Respons�vel</label>
              <div class="invalid-feedback">Por favor, preencha este campo com um valor v�lido.</div>
            </div>
          </div>
          <br>
          <hr><br>
          <div class=" form-floating mb-3">
            <select class="form-select" required id="moradia" onchange="onSelectMoradia(); validateField(this);"
              aria-label="Floating label select example">
              <option selected value="0"></option>
              <option value="1">Casa Pr�pria</option>
              <option value="2">Alugada</option>
              <option value="3">Outros</option>
            </select>
            <label for="moradia">Situa��o da Moradia</label>
            <br>
            <div class="mb-3">
              <div class="form-floating mb-3">
                <input type="tel" disabled required class="form-control" id="moradiaAlugada" name="moradiaAlugada"
                  onkeyup="handleOnlyNumbers(event); validateField(this);" placeholder="Moradia Alugada:"
                  aria-label="Floating label select example">
                <label for="moradiaAlugada">Valor do Aluguel</label>
              </div>
              <div class="form-floating mb-3">
                <input type="text" disabled required class="form-control  " id="moradiaOutros" name="moradiaOutros"
                  onkeyup="handleOnlyLetters(event); validateField(this);" placeholder="moradiaOutros:"
                  aria-label="Floating label select example">
                <label for="moradiaOutros">Descri��o</label>
              </div>
            </div>
            <div class="invalid-feedback">Por favor, preencha este campo com um valor v�lido.</div>
          </div>

          <br>
          <hr>
          <div class="container text-center">
            <div class="row">
              <div class="col align-self-start"></div>
              <div class="col align-self-center"></div>
              <div class="col align-self-end">
                <button type="submit" class="btn btn-primary">PR�XIMO</button>
                <a href="/cadastro_integrantes">PROXIMO</a>
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