package com.eva.demo.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsuarioServicio {
    @Autowired
    private static Usuarioif usuarioif;

    public static Usuario autenticar(String correo, String contrasena) throws Exception {
        Usuario usuario = usuarioif.findByCorreoAndContrasena(correo, contrasena);
        if (usuario == null) {
            throw new Exception("Correo electrónico o contraseña incorrectos");
        }
        return usuario;
    }
}
