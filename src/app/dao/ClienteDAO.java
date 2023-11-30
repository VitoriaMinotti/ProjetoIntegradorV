package app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import app.factory.Conexao;
import app.model.Cliente;

public class ClienteDAO {
	private Connection conexao;
	
	public ClienteDAO() {
		this.conexao = new Conexao().getConexao(); 
		//this.conexao = ConexaoSingleton.getInstancia().getConexao();
	}
	
	public String salvar(Cliente cliente) {
		System.out.println(cliente.getId());
		String sql = "";
		if (cliente.getId() > 0) {
			sql = "UPDATE cliente SET nome = ?, cpf = ?, rg = ?, telefone = ?, endereco = ?, cidade = ?," + "dependentes = ? WHERE id=?";
		} else {
			sql = "INSERT INTO cliente(nome, cpf, rg, telefone, endereco, cidade, dependentes)" + "VALUES (?, ?, ?, ?, ?, ?, ?)";
		}

		try {
			PreparedStatement ps = this.conexao.prepareStatement(sql);
			ps.setString(1, cliente.getNome());
			ps.setString(2, cliente.getCpf());
			ps.setString(3, cliente.getRg());
			ps.setString(4, cliente.getTelefone());
			ps.setString(5, cliente.getEndereco());
			ps.setString(6, cliente.getCidade());
			ps.setString(7, cliente.getDependentes());
			if (cliente.getId() > 0)
				ps.setInt(8, cliente.getId());
			ps.execute();
			ps.close();
				
			return "Salvo com sucesso!";
			
		} catch (SQLException e) {
			e.printStackTrace();
			return "Houve um erro! Tente novamente!";
			} 
	}
	
	public List<Cliente> listarTodos(){
		List<Cliente> listaClientes = new ArrayList<>();
		String sql = "SELECT * FROM cliente";
		try {
			PreparedStatement ps = this.conexao.prepareStatement(sql);
			ResultSet rs = ps.executeQuery(); 
			while (rs.next()) {
				Cliente cliente = new Cliente();
				cliente.setId(rs.getInt("id"));
				cliente.setNome(rs.getString("nome"));
				cliente.setCpf(rs.getString("cpf"));
				cliente.setRg(rs.getString("rg"));
				cliente.setTelefone(rs.getString("telefone"));
				cliente.setEndereco(rs.getString("endereco"));
				cliente.setCidade(rs.getString("cidade"));
				cliente.setDependentes(rs.getString("dependentes"));
				listaClientes.add(cliente);
			}
			ps.close();
			return listaClientes;
				
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public Cliente getClientePorId(int id) {
		Cliente cliente = new Cliente();
		String sql = "SELECT * FROM cliente WHERE id = ?";
		
		try {
			PreparedStatement ps = this.conexao.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				cliente.setId(rs.getInt("id"));
				cliente.setNome(rs.getString("nome"));
				cliente.setCpf(rs.getString("cpf"));
				cliente.setRg(rs.getString("rg"));
				cliente.setTelefone(rs.getString("telefone"));
				cliente.setEndereco(rs.getString("endereco"));
				cliente.setCidade(rs.getString("cidade"));
				cliente.setDependentes(rs.getString("dependentes"));
			}
			ps.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cliente;
	}
	
	public List<Cliente> getClientePorNome(String nome){
		List<Cliente> listaClientes = new ArrayList<>();
		String sql = "SELECT * FROM cliente WHERE nome LIKE ? OR cpf LIKE ?";
		try {
			PreparedStatement ps = this.conexao.prepareStatement(sql);
			ps.setString(1, "%" + nome + "%");
			ps.setString(2, "%" + nome + "%");
			ResultSet rs = ps.executeQuery();
			while (rs.next()){
				Cliente cliente = new Cliente();
				cliente.setId(rs.getInt("id"));
				cliente.setNome(rs.getString("nome"));
				cliente.setCpf(rs.getString("cpf"));
				cliente.setRg(rs.getString("rg"));
				cliente.setTelefone(rs.getString("telefone"));
				cliente.setEndereco(rs.getString("endereco"));
				cliente.setCidade(rs.getString("cidade"));
				cliente.setDependentes(rs.getString("dependentes"));
				listaClientes.add(cliente);
			}
			ps.close();
			return listaClientes;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
				
	public String excluir(int id) {
		String sql = "DELETE FROM cliente WHERE id = ?";
		try {
			PreparedStatement ps = this.conexao.prepareStatement(sql);
			ps.setInt(1, id);
			ps.execute();
			ps.close();
			return "Cadastro excluído com sucesso!";
		} catch (SQLException e) {
			e.printStackTrace();
			return "Houve um erro ao excluir. Tente novamente!";
		}
	}
	
}



