create database eva;

use eva;

/*Create tables*/
create table cliente(
	idcliente int not null auto_increment,
    nombre_cli varchar(125) not null,
    identificacion_cli varchar(125) not null,
    eps_valid tinyint,
    pago float not null,
    primary key(idcliente)
);

create table empleado(
	idempleado int not null auto_increment,
    nombre varchar(125) not null,
    contrasena varchar(125) not null,
    administrativo tinyint not null,
	primary key(idempleado)
);

create table cita(
	idcita int not null auto_increment,
    fecha_reg datetime not null,
    fecha_cit datetime not null,
    cliente_idcliente int not null,
    empleado_idempleado int not null,
    primary key(idcita),
    foreign key(cliente_idcliente) references cliente(idcliente),
    foreign key(empleado_idempleado) references empleado(idempleado)
);

create table producto(
	idproducto int not null auto_increment,
    nombre_producto varchar(125) not null,
    codigo_producto int not null,
    cantidad_producto int not null,
    precio_producto int not null,
	primary key(idproducto)
);

create table compra(
	cliente_idcliente int not null,
    producto_idproducto int not null,
    primary key(cliente_idcliente, producto_idproducto),
    foreign key(cliente_idcliente) references cliente(idcliente),
    foreign key(producto_idproducto) references producto(idproducto)
);

create table inventario(
	idinventario int not null auto_increment,
    fecha_venta datetime not null,
    compra_cliente_idcliente int not null,
    compra_producto_idproducto int not null,
    empleado_idempleado int not null,
    primary key(idinventario),
    foreign key(compra_cliente_idcliente, compra_producto_idproducto) references compra(cliente_idcliente, producto_idproducto),
    foreign key(empleado_idempleado) references empleado(idempleado)
);


/*Logs table*/

create table cita_update_insert(
	idcita_log int not null auto_increment,
    old_fecha_reg datetime not null,
    new_fecha_reg datetime not null,
    fecha_reg datetime not null,
    old_fecha_cit datetime not null,
    new_fecha_cit datetime not null,
    fecha_cit datetime not null,
    cliente_idcliente int not null,
    empleado_idempleado int not null,
    primary key(idcita_log)
);

create table cliente_update_insert(
	idcliente_log int not null,
    old_nombre varchar(50) not null,
    new_nombre varchar(50) not null,
    nommbre varchar(50) not null,
    old_identificacion varchar(50) not null,
    new_identificacion varchar(50) not null,
    identificacion varchar(50) not null,
    old_eps_valid tinyint not null,
    new_eps_valid tinyint not null,
    eps_valid tinyint not null,
    old_pago float not null,
    new_pago float not null,
    pago float not null,
    primary key(idcliente_log)
);

create table empleado_update_insert(
	idempleado_log int not null,
    old_nombre varchar(50) not null,
    new_nombre varchar(50) not null,
    nombre varchar(50) not null,
    old_administrativo tinyint not null,
    new_administrativo tinyint not null,
    administrativo tinyint not null,
    primary key(idempleado_log)
);

create table producto_update_insert(
	idproducto_log int not null,
    old_nombre_producto varchar(50) not null,
    new_nombre_producto varchar(50) not null,
    producto varchar(50) not null,
    old_codigo_producto varchar(50) not null,
    new_codigo_producto varchar(50) not null,
    codigo_producto varchar(50) not null,
    old_cantidad_producto int not null,
    new_cantidad_producto int not null,
    cantidad_producto int not null,
    old_precio_producto int not null,
    new_precio_producto int not null,
    precio_producto int not null,
    primary key(idproducto_log)
);

create table compra_insert(
	cliente_idcliente int not null,
    producto_idproducto int not null,
    primary key(cliente_idcliente, producto_idproducto)
);

create table inventario_update_insert(
	idinventario_log int not null,
	old_fecha_venta datetime not null,
    new_fecha_venta datetime not null,
    fecha_venta datetime not null,
    compra_cliente_idcliente int not null,
    compra_producto_idproducto int not null,
    empleado_idempleado int not null,
    old_pago_total int not null,
    new_pago_total int not null,
    pago_total int not null,
    primary key(idinventario_log)
);







