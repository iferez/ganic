package ar.edu.unlam.tallerweb1.domain.Email;

import ar.edu.unlam.tallerweb1.domain.ingredientes.Ingrediente;
import ar.edu.unlam.tallerweb1.domain.usuarios.Usuario;

import java.util.List;

public class Email {
    private List<Ingrediente> lista;
    private String metodoPago;
    private Usuario user;

    public Email() {}

    public List<Ingrediente> getLista() {
        return lista;
    }

    public void setLista(List<Ingrediente> lista) {
        this.lista = lista;
    }

    public String getMetodoPago() {
        return metodoPago;
    }

    public void setMetodoPago(String metodoPago) {
        this.metodoPago = metodoPago;
    }

    public Usuario getUser() {
        return user;
    }

    public void setUser(Usuario user) {
        this.user = user;
    }


    private Float getMonto(){
        Float tot = 0F;
        for (Ingrediente ing: this.lista) {
            tot += ing.getPrecio();
        }
        return tot;
    }

    public String generateEmailBody(){
        String msg = "<h1>Resumen del Pedido</h1><br/>";
        msg+= "<h2>Listado De Ingredientes</h2><br/>";
        msg += "<ul>";
        for (Ingrediente ing: this.lista) {
            msg += String.format("<li><p>%s</p></li><br/>",ing.getNombre());
        }
        msg += "</ul><br/>";
        msg += String.format("<p>Dirección de Envio: %s</p><br/>",this.user.getDireccion());
        msg += String.format("<p>Metodo De Pago: %s</p><br/>",this.metodoPago);
        msg += String.format("<p>Precio Total: %f</p><br/>",this.getMonto());
        return msg;
    }
}
