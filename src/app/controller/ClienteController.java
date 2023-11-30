package app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import app.dao.ClienteDAO;
import app.model.Cliente;

@Controller
public class ClienteController{
	
	@GetMapping("/cadastrarcliente")
	public String cadastrarcliente(Model model){
			return "cadastrarcliente";
	}
	
	@PostMapping("/cadastrarcliente")
	public String CadastrarClientePost(@ModelAttribute Cliente cliente, Model model) {
		ClienteDAO dao = new ClienteDAO();
		model.addAttribute("texto", dao.salvar(cliente));
		//return "mensagem";
		return "cadastrarcliente";
	} 
	
	@GetMapping("/listaclientes")
	public String listaclientes(Model model){
		ClienteDAO dao = new ClienteDAO();
		model.addAttribute("listaClientes", dao.listarTodos());
		return "listaclientes";
	} 
	
	@GetMapping("/alterarcliente")
	public String alterarcliente(HttpServletRequest req, Model model){
		int id = Integer.parseInt(req.getParameter("id"));
		ClienteDAO dao = new ClienteDAO();
		model.addAttribute("cliente", dao.getClientePorId(id));
		return "alterarcliente";
	} 
	
	@PostMapping("/alterarcliente")
	public String alterarClientePost (@ModelAttribute Cliente cliente, Model model) {
		ClienteDAO dao = new ClienteDAO();
		model.addAttribute("texto", dao.salvar(cliente));		
		model.addAttribute("listaClientes", dao.listarTodos());
		//return "mensagem";
		return "listaclientes";
	}
	
	@GetMapping("/excluircliente")
	public String excluircliente(HttpServletRequest req, Model model, HttpServletResponse res){
		int id = Integer.parseInt(req.getParameter("id"));
		ClienteDAO dao = new ClienteDAO();
		model.addAttribute("texto", dao.excluir(id));
		model.addAttribute("listaClientes", dao.listarTodos());
		return "listaclientes";		
	} 
	
	@GetMapping("/pesquisarcliente")
	public String pesquisarCliente(HttpServletRequest req, Model model) {
		String nome = req.getParameter("nome");
		ClienteDAO dao = new ClienteDAO();
		model.addAttribute("listaClientes", dao.getClientePorNome(nome));
		return "listaclientes";
	}
	
	@GetMapping("/cadastro_integrantes")
	public String cadastro_integrantes(Model model){
			return "cadastro_integrantes";
	}
	
}



