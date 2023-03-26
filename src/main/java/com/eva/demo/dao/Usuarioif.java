package com.eva.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Usuarioif extends JpaRepository<Usuario, Long> {
    Usuario findByCorreoAndContrasena(String usuario_correo, String usuario_contrasena);
}

