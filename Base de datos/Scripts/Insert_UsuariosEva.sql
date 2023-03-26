insert into tipo_usuario(descripcion) values ("administrador"), ("doctor"), ("secretaria"),
("cliente");

insert into usuario(usuario_nombre, usuario_correo, usuario_contrasena, usuario_direccion, usuario_telefono, usuario_documento, usuario_activo, tipo_usuario_idtipo_usuario)
values ("Felix Asela", "felix.asela.2023@evaadmin.com", "Admin,1612*/", "calle 27B", 3212727580, 1005289506, 1, 1),
("Daniela Arenas", "daniela.arenas.2023@evadoctor.com", "docdani,1612*/", "calle 45A", 3209467954, 1005106639, 1, 2),
("Valentina navas", "valentina.penuela.2023@evadoctor.com", "docvale,1612*/", "carrera 33", 3176838276, 1005234232, 1, 2),
("Daniel Valdivieso", "daniel.valdivieso.2023@evadoctor.com", "docdaniel,1612*/", "calle 31C", 315234234, 1005232125, 1, 2),
("Nicolas Bossio", "nicolas.bossio.2023@evaadoctor.com", "docnico,1612*/","carrera 27", 316939032, 1005234239, 1, 2),
("Daniel Millan", "daniel.millan.2023@evasecret.com", "secretmillan,1612*/", "carrera27", 312435097, 1005224209, 1, 3),
("David Gonzales", "secretdavid,1612*/", "david.gonzales.2023@evasecret.com", "calle 14", 321423540, 1005385943, 1, 3),
("Juan Tarazona", "juan.tarazona.2023@evasecret.com","secretjuan,1612*/","calle 14", 326954814, 1005289450, 1, 3),
("Juan Macias", "juan.macias.2023@evasecret.com", "secretmacias,1612*/", "calle 43", 321583074, 1005382957, 1, 3);