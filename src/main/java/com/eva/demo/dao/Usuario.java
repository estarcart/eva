package com.eva.demo.dao;

import jakarta.persistence.*;

@Entity
@Table(name = "usuario")
public class Usuario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String usuario_nombre;
    private String usuario_correo;
    private String usuario_contrasena;

    // getters y setters
}


