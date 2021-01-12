package controlador;

import java.util.ArrayList;

public class Plato {
private static ArrayList<Plato>lista_platos = new ArrayList<>();
private static int cont=0;
private int pos;
private String nombre_plato;
private int cantidad_plato;
public Plato() {
	super();
	lista_platos.add(this);
	this.pos=cont++;
}
public Plato(int pos, String nombre_plato, int cantidad_plato) {
	super();
	lista_platos.add(this);
	this.pos=cont++;
	this.nombre_plato = nombre_plato;
	this.cantidad_plato = cantidad_plato;
}
public static ArrayList<Plato> getLista_platos() {
	return lista_platos;
}
public static void setLista_platos(ArrayList<Plato> lista_platos) {
	Plato.lista_platos = lista_platos;
}
public static int getCont() {
	return cont;
}
public static void setCont(int cont) {
	Plato.cont = cont;
}
public String getNombre_plato() {
	return nombre_plato;
}
public void setNombre_plato(String nombre_plato) {
	this.nombre_plato = nombre_plato;
}
public int getCantidad_plato() {
	return cantidad_plato;
}
public void setCantidad_plato(int cantidad_plato) {
	this.cantidad_plato = cantidad_plato;
}
public int getPos() {
	return pos;
}

}
