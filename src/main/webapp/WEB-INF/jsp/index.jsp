<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="layouttopo.jsp"></jsp:include>

<body style="background-color: #CBD7CD; min-height: 100vh; display: flex; flex-direction: column;">
<div class="container text-center rounded mb-5 mt-5 p-3" style="background-color: #ffffff; width: 30%; margin: auto;"">
  <div class="row justify-content-center align-items-center">
    <div class="col">
      <section id="login" class="login">
        <div class="container-md">
        	<img class="logo" src="imagens/pilart.png" style="width: 30%;" alt="Logo">
	    	<form action="login()" method="post">
		       <div class="mb-3">
		         <div class="form-floating mb-3">
		           <input type="text" class="form-control form-control-lg" required id="email"
		             onkeyup=" validateField(this); " name="email"
		             placeholder="Responsável pela família">
		           <label for="floatingInput">E-MAIL</label>
		           <div class="invalid-feedback">Por favor, preencha este campo.</div>
		         </div>
		       </div>
		       <div class="mb-3">
		         <div class="form-floating mb-3">
		           <input type="password" class="form-control form-control-lg" required id="password"
		             onkeyup=" validateField(this); " name="password"
		             placeholder="Responsável pela família">
		           <label for="floatingInput">SENHA</label>
		           <div class="invalid-feedback">Por favor, preencha este campo.</div>
		         </div>
		       </div>
		       
		       <div class="mb-3">
		         <div class="d-grid gap-2">
				  <button type="submit" class="btn btn-success mb-3">LOGIN</button>
				</div>
		       </div>
		       
		       <div class="d-flex justify-content-between">
				 
				      <button class="btn btn btn-light btn-sm" style="cursor: pointer;">ESQUECI MINHA SENHA</button>
				  
				      <button class="btn btn btn-light btn-sm" style="cursor: pointer;">CRIAR CONTA</button>
				    
				</div>
    		</form>
    	</div>
     </section>
    </div>
  </div>
</div>
    
<script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-auth.js"></script>

    <script>

        // Função para lidar com o login
        function login() {
        	console.log('Método de login chamado!');
            var email = document.getElementById('email').value;
            var password = document.getElementById('password').value;

            firebase.auth().signInWithEmailAndPassword(email, password)
                .then((userCredential) => {
                    // Usuário fez login com sucesso
                    var user = userCredential.user;
                    console.log('Usuário logado:', userCredential.user);
                    // Você pode redirecionar ou realizar outras ações aqui
                })
                .catch((error) => {
                    var errorCode = error.code;
                    var errorMessage = error.message;
                    console.error('Erro de login:', error.code, error.message);
                    // Lidar com erro de login, exibir uma mensagem, etc.
                });
        }
    </script>

<jsp:include page="layoutrodape.jsp"></jsp:include>
