create database eva;

use eva;

/*Creación de tablas*/  
create table contacto(
	idcontacto int primary key auto_increment not null,
    pregunta varchar(45),
    usuario_idusuario int,
    usuario_tipo_usuario_idtipo_usuario int    
);

create table tipo_usuario(
	idtipo_usuario int primary key auto_increment not null,
    descripcion varchar(45)
);

create table usuario(
	idusuario int primary key auto_increment not null,
    usuario_nombre varchar(45) not null,
	usuario_correo varchar(45) not null,
    usuario_contrasena varchar(45) not null,
    usuario_direccion varchar(45) not null,
    usuario_telefono varchar(45) not null,
    usuario_documento int not null,
    usuario_activo tinyint not null,
    tipo_usuario_idtipo_usuario int not null
);  

create table cita(
	idcita int primary key auto_increment not null,
    fecha_reg datetime not null,
    fech_cit datetime not null,
    tipo_cita varchar(45)
);

create table usuario_has_cita(
    usuario_idusuario int not null,
    usuario_tipo_usuario_idtipo_usuario int not null,
    cita_idcita int not null
);

create table venta(
	idventa int primary key auto_increment not null,
    fecha_venta datetime not null,
    valor_total float not null,
    usuario_idusuario int not null, 
    usuario_tipo_usuario_idtipo_usuario int not null,
    producto_idproducto int not null
);

create table producto(
	idproducto int primary key auto_increment not null,
    nombre_producto varchar(45) not null,
    identificacion_producto varchar(45) not null,
    cantidad int not null,
    valor_producto float not null
);
 
 
create table factura(
	idfactura int primary key auto_increment not null,
    iva int not null, 
    venta_idventa int not null,
    venta_usuario_idusuario int not null,
    venta_usuario_tipo_usuario_idtipo_usuario int not null,
    venta_producto_idproducto int not null
);


create table inventario(
	idinventario int primary key auto_increment not null,
    fecha_inv datetime not null, 
    factura_idfactura int not null,
    factura_venta_idventa int not null,
    factura_venta_usuario_idusuario int not null,
    factura_venta_usuario_tipo_usuario_idtipo_usuario int not null,
    factura_venta_producto_idproducto int not null,
    cita_idcita int
);

/*Llaves foraneas*/  
alter table usuario add foreign key(tipo_usuario_idtipo_usuario) references tipo_usuario(idtipo_usuario);

alter table contacto add foreign key(usuario_idusuario) references usuario(idusuario);
alter table contacto add foreign key(usuario_tipo_usuario_idtipo_usuario) references usuario(tipo_usuario_idtipo_usuario);

alter table usuario_has_cita add foreign key(cita_idcita) references cita(idcita);
alter table usuario_has_cita add foreign key(usuario_idusuario) references usuario(idusuario);
alter table usuario_has_cita add foreign key (usuario_tipo_usuario_idtipo_usuario) references usuario(tipo_usuario_idtipo_usuario);
  
alter table venta add foreign key(usuario_idusuario) references usuario(idusuario);
alter table venta add foreign key(usuario_tipo_usuario_idtipo_usuario) references usuario(tipo_usuario_idtipo_usuario);
alter table venta add foreign key(producto_idproducto) references producto(idproducto);

alter table factura add foreign key(venta_idventa) references venta(idventa);
alter table factura add foreign key(venta_usuario_idusuario) references venta(usuario_idusuario);
alter table factura add foreign key(venta_usuario_tipo_usuario_idtipo_usuario) references venta(usuario_tipo_usuario_idtipo_usuario);
alter table factura add foreign key(venta_producto_idproducto) references venta(producto_idproducto);

alter table inventario add foreign key(factura_idfactura) references factura(idfactura);
alter table inventario add foreign key(factura_venta_idventa) references factura(venta_idventa);
alter table inventario add foreign key(factura_venta_usuario_idusuario) references factura(venta_usuario_idusuario);
alter table inventario add foreign key(factura_venta_usuario_tipo_usuario_idtipo_usuario) references factura(venta_usuario_tipo_usuario_idtipo_usuario);
alter table inventario add foreign key(factura_venta_producto_idproducto) references factura(venta_producto_idproducto);
alter table inventario add foreign key(cita_idcita) references cita(idcita);

