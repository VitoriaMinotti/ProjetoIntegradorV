package app.model;

import java.util.ArrayList;
import java.util.List;


import app.interfaces.IColaborador;

public class ColaboradorA implements IColaborador{

	@Override
	public List<String> getColaboradores() {
		List<String> listaColaboradores = new ArrayList<>();
		listaColaboradores.add("Ana Maria");
		listaColaboradores.add("Joana");
		listaColaboradores.add("Ricardo");
		return listaColaboradores;
	}
}
