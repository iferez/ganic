package ar.edu.unlam.tallerweb1.domain.usuario;

import ar.edu.unlam.tallerweb1.SpringTest;
import ar.edu.unlam.tallerweb1.domain.Excepciones.UsuarioNoRegistradoExepcion;
import ar.edu.unlam.tallerweb1.domain.usuarios.RepositorioUsuario;
import ar.edu.unlam.tallerweb1.domain.usuarios.ServicioLogin;
import ar.edu.unlam.tallerweb1.domain.usuarios.ServicioLoginImpl;
import ar.edu.unlam.tallerweb1.domain.usuarios.Usuario;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.exceptions.base.MockitoException;

import static org.assertj.core.api.Java6Assertions.assertThat;
import static org.mockito.Mockito.*;

public class ServicioLoginTest extends SpringTest {

    private ServicioLogin servicioLogin;
    private RepositorioUsuario repositorioUsuario;

    @Before
    public void init() {
        this.repositorioUsuario = mock(RepositorioUsuario.class);
        this.servicioLogin = new ServicioLoginImpl(repositorioUsuario);

    }

    @Test
    public void queLuegoDeCrearUnUsuarioSePuedaVerificarSiSeGuardo() throws UsuarioNoRegistradoExepcion {
        Usuario usuarioBuscado = dadoQueExisteUnUsuario();
        cuandoLLamoAlRepositorioYbusco(usuarioBuscado);

        verificoQueNoSeaNull(usuarioBuscado);

    }

    @Test(expected = UsuarioNoRegistradoExepcion.class )
    public void queSiQuieroActualizarUnUsuarioQueNoExistaMeLAnseUNaExepcion() throws UsuarioNoRegistradoExepcion {
    Usuario usuario=usuarioQueNoExisteEnLAbase();
    actualizarDatosDelUSuario(usuario,"Juan","calleFalsa123");

    }

    private void actualizarDatosDelUSuario(Usuario usuario, String nombre, String direccion) throws UsuarioNoRegistradoExepcion {

        this.servicioLogin.actualizarUsuario(usuario);
    }

    private Usuario usuarioQueNoExisteEnLAbase() {
        return new Usuario("juan@gmail.com","123");
    }

    private void cuandoLLamoAlRepositorioYbusco(Usuario usuarioBuscado) throws UsuarioNoRegistradoExepcion {
        when(repositorioUsuario.buscarUsuario(usuarioBuscado.getEmail(), usuarioBuscado.getPassword())).
                thenReturn(usuarioBuscado);
    }

    private void verificoQueNoSeaNull(Usuario usuarioBuscado) {
        assertThat(usuarioBuscado).isNotNull();
    }


    private Usuario dadoQueExisteUnUsuario() {
        return new Usuario("pablo@gmail.com", "123");
    }

}
