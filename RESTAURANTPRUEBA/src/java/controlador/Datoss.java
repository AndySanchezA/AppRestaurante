package controlador;



import Modelo.Cliente;
import java.util.ArrayList;
import java.util.Scanner;



/**
 *
 * @author TOSHIBA
 */
public class Datoss {

 public static ArrayList<Cliente> listado= new ArrayList<>();
  public void borrarDatosPropiedadArraylist(){
        //listado.clear();

    }
 
   Scanner sc = new Scanner(System.in);
       int [] arre=new int[100];

  
    public int []numerosMesas(int n, int nn) {
        arre[n]=nn;
       
        return arre;
    }
 public void print(int n) {
        for (int i = 1; i < n; i++) {
            System.out.println(""+arre[i]);
        }
    
}}
