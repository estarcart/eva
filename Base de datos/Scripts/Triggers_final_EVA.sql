use eva;

#Triggers EVA

create table contacto_logs(
	idcontacto_logs int primary key auto_increment,
    idcontacto int,
    old_idcontacto int,
    new_idcontacto int,
    pregunta varchar(45),
    old_pregunta varchar(45),
    new_pregunta varchar(45),
    usuario_idusuario int,
    usuario_tipo_usuario_idtipo_usuario int,
    usuario varchar(45),
    fecha datetime   
);
 
create table tipo_usuario_logs(
	idtipo_usuario_logs int primary key auto_increment,
    idtipo_usuario int,
    old_idtipo_usuario int,
    new_idtipo_usuario int,
	descripcion varchar (45),
    old_descripcion varchar(45),
    new_descripcion varchar(45),
	usuario varchar(45),
    fecha datetime  
);

create table usuario_logs(
	idusuario_logs int primary key auto_increment,
    idusuario int,
    old_idusuario int, 
    new_idusuario int,
    usuario_nombre varchar(45),
    old_usuario_nombre varchar(45),
    new_usuario_nombre varchar(45),
    usuario_correo varchar(45),
    old_usuario_correo varchar(45),
    new_usuario_correo varchar(45),
    usuario_contrasena varchar(45),
    old_usuario_contrasena varchar(45),
    new_usuario_contrasena varchar(45),
	usuario_direccion varchar(45),
    old_usuario_direccion varchar(45),
    new_usuario_direccion varchar(45),
    usuario_telefono varchar(45),
    old_usuario_telefono varchar(45),
    new_usuario_telefono varchar(45),
	usuario_documento int,
    old_usuario_documento int,
    new_usuario_documento int,
	usuario_activo tinyint,
    old_usuario_activo tinyint,
    new_usuario_activo tinyint,
    tipo_usuario_idtipo_usuario int,
	usuario varchar(45),
    fecha datetime  
);

create table usuario_has_cita_logs(
	idusuario_has_cita_logs int primary key auto_increment,
    cita_idcita int,
    usuario_idusuario int,
    usuario_tipo_usuario_idtipo_usuario int,
	usuario varchar(45),
    fecha datetime 
);

create table cita_logs (
	idcita_logs int primary key auto_increment,
    idcita int,
    old_idcita int,
    new_idicita int,
    fecha_reg int,
    old_fecha_reg int,
    new_fecha_reg int,
    fecha_cita int,
    old_fecha_cita int,
    new_fecha_cita int,
    tipo_cita int,
    old_tipo_cita int,
    new_tipo_cita int,
	usuario varchar(45),
    fecha datetime  
);

create table producto_logs(
	idproducto_logs int primary key auto_increment,
    idproducto int,
    old_idproducto int, 
    new_idproducto int,
    nombre_producto varchar(45),
    old_nombre_producto varchar(45),
    new_nombre_producto varchar(45),
    identificacion_producto varchar(45),
    old_identificacion_producto varchar(45),
    new_identificacion_producto varchar(45),
    cantidad int,
    old_cantidad int,
    new_cantidad int,
    valor_producto float,
    old_valor_producto float, 
    new_valor_producto float,
	usuario varchar(45),
    fecha datetime  
);

create table venta_logs(
	idventa_logs int primary key auto_increment, 
    idventa int,
    old_idventa int,
    new_idventa int,
    fecha_vent int,
    old_fecha_vent int,
    new_fecha_vent int,
    valor_total float, 
    old_valor_total float,
    new_valor_total float, 
    usuario_idusuario int,
    usuario_tipo_usuario_idtipo_usuario int,
    producto_idproducto int,
	usuario varchar(45),
    fecha datetime  
);

create table factura_logs(
	idfactura_logs int primary key auto_increment,
    idfactura int,
    old_idfactura int,
    new_idfactura int, 
    iva int,
    old_iva int, 
    new_iva int,
    venta_idventa int,
    venta_usuario_idusuario int,
    venta_usuario_tipo_usuario_idtipo_usuario int,
    venta_producto_idproducto int,
	usuario varchar(45),
    fecha datetime  
);

create table inventario_logs(
	idinventario_logs int primary key auto_increment,
    idinventario int,
    old_idinventario int,
    new_idinventario int, 
    fecha_inv datetime,
    old_fecha_inv datetime,
    new_fecha_inv datetime,
    factura_idfactura int,
    factura_venta_idventa int,
    factura_venta_usuario_idusuario int,
    factura_venta_usuario_tipo_usuario_idtipo_persona int,
    factura_venta_producto_idproducto int,
    cita_idcita int,
	usuario varchar(45),
    fecha datetime 
);

#TRIGGERS
create trigger tr_contacto_logs_insert
after insert on contacto 
for each row
insert into contacto_logs(idcontacto, pregunta, usuario_idusuario, usuario_tipo_usuario_idtipo_usuario, usuario,fecha)   
values (idcontacto, pregunta,  usuario_idusuario, usuario_tipo_usuario_idtipo_usuario, current_user(), now());

create trigger tr_contacto_logs_update
after update on contacto 
for each row
insert into contacto_logs(old_idcontacto, new_idcontacto, old_pregunta, new_pregunta, usuario, fecha)
values (old.idcontacto, new.idcontacto, old.pregunta, new.pregunta, current_user(), now());


create trigger tr_tipo_usuario_logs_insert
after insert on tipo_usuario
for each row
insert into tipo_persona_logs(idtipo_usuario, descripcion, usuario, fecha) 
values(idtipo_usuario, descripcion, current_user(), now());


create trigger tr_tipo_usuario_logs_update
after update on tipo_usuario
for each row
insert into tipo_usuario_logs( old_idtipo_usuario, new_idtipo_usuario, old_descripcion, new_descripcion, usuario, fecha)
values(old.idtipo_usuario, new.idtipo_usuario, old.descripcion, new.descripcion, current_user(), now());


create trigger tr_usuario_logs_insert
after insert on usuario
for each row
insert into usuario_logs(idusuario, usuario_nombre, usuario_correo, usuario_contrasena, usuario_direccion, usuario_telefono, usuario_documento, usuario_activo, tipo_usuario_idtipo_usuario, usuario, fecha) 
values (idusuario, usuario_nombre, usuario_correo, usuario_contrasena, usuario_direccion, usuario_telefono, usuario_documento, usuario_activo, tipo_usuario_idtipo_usuario, current_user(), now());


create trigger tr_usuario_logs_update
after update on usuario
for each row
insert into usuario_logs(old_idusuario, new_idusuario, old_usuario_nombre, new_usuario_nombre, old_usuario_correo, new_usuario_correo, old_usuario_contrasena, new_usuario_contrasena, old_usuario_direccion, new_usuario_direccion, old_usuario_telefono, new_usuario_telefono, old_usuario_documento, new_usuario_documento, old_usuario_activo, new_usuario_activo, usuario, fecha) 
values (old.idusuario, new.idusuario, old.usuario_nombre, new.usuario_nombre, old.usuario_correo, new.usuario_correo, old.usuario_contrasena, new.usuario_contrasena, old.usuario_direccion, new.usuario_direccion, old.usuario_telefono, new.usuario_telefono, old.usuario_documento, new.usuario_documento, old.usuario_activo, new.usuario_activo, current_user(), now());

create trigger tr_usuario_has_cita_logs_insert   
after insert on  usuario_has_cita
for each row
insert into usuario_has_cita_logs(cita_idcita, usuario_idusuario, usuario_tipo_usuario_idtipo_usuario, usuario, fecha)
values(cita_idcita, usuario_idusuario, usuario_tipo_usuario_idtipo_usuario, current_user(), now());

create trigger tr_cita_logs_insert 
after insert on cita
for each row 
insert into cita_logs(idcita, fecha_reg, fecha_cita, tipo_cita, usuario, fecha)
values(idcita, fecha_reg, fecha_cit,tipo_cita, current_user(), now());

create trigger tr_cita_logs_update
after update on cita
for each row 
insert into cita_logs(old_idcita, new_idicita, old_fecha_reg, new_fecha_reg, old_fecha_cita, new_fecha_cita, old_tipo_cita, new_tipo_cita, usuario, fecha)
values(old.idcita, new.idcita, old.fecha_reg, new.fecha_reg, old.fech_cit, new.fech_cit, old.tipo_cita, new.tipo_cita, current_user(), now());


create trigger tr_producto_logs_insert 
after insert on producto 
for each row 
insert into producto_logs(idproducto, nombre_producto, identificacion_producto, cantidad, valor_producto, usuario, fecha)
values(idproducto, nombre_producto, identificacion_producto, cantidad, valor_producto, current_user(), now());


create trigger tr_venta_logs_insert 
after insert on venta
for each row 
insert into venta_logs(	idventa, fecha_vent, valor_total, usuario_idusuario, usuario_tipo_usuario_idtipo_usuario, producto_idproducto, usuario, fecha)
values(idventa, fecha_venta, valor_total, usuario_idusuario, usuario_tipo_usuario_idtipo_usuario, producto_idproducto, current_user(), now());


create trigger tr_venta_logs_update
after update on venta
for each row 
insert into venta_logs(old_idventa, new_idventa, old_fecha_vent, new_fecha_vent, old_valor_total, new_valor_total,  usuario, fecha)
values(old.idventa, new.idventa, old.fecha_venta, new.fecha_venta, old.valor_total, new.valor_total, current_user(), now());


create trigger tr_factura_logs_insert 
after insert on factura
for each row
insert into factura_logs(idfactura, iva, venta_idventa, venta_usuario_idusuario, venta_usuario_tipo_usuario_idtipo_usuario, venta_producto_idproducto, usuario, fecha)
values(idfactura, iva, venta_idventa, venta_usuario_idusuario, venta_usuario_tipo_usuario_idtipo_usuario, venta_producto_idproducto, current_user(), now());


create trigger tr_factura_logs_update
after update on factura
for each row
insert into factura_logs(old_idfactura, new_idfactura, old_iva, new_iva, usuario, fecha)
values(old.idfactura, new.idfactura, old.iva, new.iva, current_user(), now());


create trigger tr_inventario_logs_insert
after insert on inventario 
for each row 
insert into inventario_logs( idinventario, fecha_inv, factura_idfactura, factura_venta_idventa, factura_venta_usuario_idusuario, factura_venta_usuario_tipo_usuario_idtipo_persona, factura_venta_producto_idproducto, cita_idcita, usuario, fecha)
values(idinventario, fecha_inv, factura_idfactura, factura_venta_idventa, factura_venta_usuario_idusuario, factura_venta_usuario_tipo_usuario_idtipo_persona, factura_venta_producto_idproducto, cita_idcita, current_user(), now());


create trigger tr_inventario_logs_update
after update on inventario 
for each row 
insert into inventario_logs(old_idinventario, new_idinventario, old_fecha_inv, new_fecha_inv, usuario, fecha) 
values(old.idinventario, new.idinventario, old.fecha_inv, new.fecha_inv, current_user(), now());

