create database eva;

use eva;

/*Creación de tablas*/  
create table persona(
	idpersona int primary key auto_increment not null,
    nombre varchar(45) not null,
    identificacion varchar(45) not null,
    correo varchar (45),
    telefono varchar(45) 
);

create table contacto(
	idcontacto int primary key auto_increment not null,
    pregunta varchar(45),
    persona_idpersona int
);

create table tipo_persona(
	idtipo_persona int primary key auto_increment not null,
    nombre varchar(45)
);

create table usuario(
	idusuario int primary key auto_increment not null,
    usario_nombre varchar(45) not null,
    contrasena varchar(45) not null,
    persona_idpersona int not null ,
    tipo_persona_idtipo_persona int not null
);  

create table cita(
	idcita int primary key auto_increment not null,
    fecha_reg datetime not null,
    fech_cit datetime not null,
    tipo_cita varchar(45)
);

create table cita_has_usuario(
	cita_idcita int not null,
    usuario_idusuario int not null,
    usuario_persona_idpersona int not null, 
    usuario_tipo_persona_idtipo_persona int not null   
);

create table venta(
	idventa int primary key auto_increment not null,
    fecha_venta datetime not null,
    valor_total float not null,
    usuario_idusuario int not null, 
    usuario_persona_idpersona int not null, 
    usuario_tipo_persona_idtipo_persona int not null,
    producto_idproducto int not null
);

create table producto(
	idproducto int primary key auto_increment not null,
    nombre_producto varchar(45) not null,
    identificacion_producto varchar(45) not null,
    cantidad int not null,
    valor_producto float not null
);
 
create table inventario(
	idinventario int primary key auto_increment not null,
    fecha_inv datetime not null, 
    factura_idfactura int not null,
    factura_venta_idventa int not null,
    factura_venta_usuario_idusuario int not null,
    factura_venta_usuario_persona_idpersona int not null,
    factura_venta_usuario_tipo_persona_idtipo_persona int not null,
    factura_venta_producto_idproducto int not null,
    cita_idcita int
);

create table factura(
	idfactura int primary key auto_increment not null,
    iva int not null, 
    venta_idventa int not null,
    venta_usuario_idusuario int not null,
    venta_usuario_persona_idpersona int not null,
    venta_usuario_tipo_persona_idtipo_persona int not null,
    venta_producto_idproducto int not null
);

/*Llaves foraneas*/  
alter table usuario add foreign key(persona_idpersona) references persona(idpersona);
alter table usuario add foreign key(tipo_persona_idtipo_persona) references tipo_persona(idtipo_persona);

alter table cita_has_usuario add foreign key(cita_idcita) references cita(idcita);
alter table cita_has_usuario add foreign key(usuario_idusuario) references usuario(idusuario);
alter table cita_has_usuario add foreign key (usuario_persona_idpersona) references usuario(persona_idpersona);
alter table cita_has_usuario add foreign key (usuario_tipo_persona_idtipo_persona) references usuario(tipo_persona_idtipo_persona);

alter table contacto add foreign key(persona_idpersona) references persona(idpersona);

alter table venta add foreign key(usuario_idusuario) references usuario(idusuario);
alter table venta add foreign key(usuario_persona_idpersona) references usuario(persona_idpersona);
alter table venta add foreign key(usuario_tipo_persona_idtipo_persona) references usuario(tipo_persona_idtipo_persona);
alter table venta add foreign key(producto_idproducto) references producto(idproducto);

alter table factura add foreign key(venta_idventa) references venta(idventa);
alter table factura add foreign key(venta_usuario_idusuario) references venta(usuario_idusuario);
alter table factura add foreign key(venta_usuario_persona_idpersona) references venta(usuario_persona_idpersona);
alter table factura add foreign key(venta_usuario_tipo_persona_idtipo_persona) references venta(usuario_tipo_persona_idtipo_persona);
alter table factura add foreign key(venta_producto_idproducto) references venta(producto_idproducto);

alter table inventario add foreign key(factura_idfactura) references factura(idfactura);
alter table inventario add foreign key(factura_venta_idventa) references factura(venta_idventa);
alter table inventario add foreign key(factura_venta_usuario_idusuario) references factura(venta_usuario_idusuario);
alter table inventario add foreign key(factura_venta_usuario_persona_idpersona) references factura(venta_usuario_persona_idpersona);
alter table inventario add foreign key(factura_venta_usuario_tipo_persona_idtipo_persona) references factura(venta_usuario_tipo_persona_idtipo_persona);
alter table inventario add foreign key(factura_venta_producto_idproducto) references factura(venta_producto_idproducto);
alter table inventario add foreign key(cita_idcita) references cita(idcita);




  







  








































