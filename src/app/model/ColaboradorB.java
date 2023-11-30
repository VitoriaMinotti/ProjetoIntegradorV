package app.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import app.interfaces.IColaborador;

@Component
public class ColaboradorB implements IColaborador{

	@Override
	public List<String> getColaboradores() {
		List<String> listaColaboradores = new ArrayList<>();
		listaColaboradores.add("Luigi");
		listaColaboradores.add("Antonio");
		listaColaboradores.add("Rebeca");
		return listaColaboradores;
	}

}
