insert into tipo_persona(nombre) values ("administrador"), ("doctor"), ("secretaria"),
("cliente");

insert into persona(nombre, identificacion, correo, telefono) values ("Felix Asela", "1005289506", "felix.asela.2023@evaadmin.com", "3212727508"),
("Daniela Arenas", "1005106639", "daniela.arenas.2023@evadoctor.com", "3209467954"),
("Valentina navas", "1005234232", "valentina.penuela.2023@evadoctor.com", "3176838276"),
("Daniel Valdivieso", "1005232125", "daniel.valdivieso.2023@evadoctor.com", "315234234"),
("Nicolas Bossio", "1005234239", "nicolas.bossio.2023@evaadoctor.com", "316939032"),
("Daniel Millan", "1005224209", "daniel.millan.2023@evasecret.com", "312435097"),
("David Gonzales", "1005385947", "david.gonzales.2023@evasecret.com", "321423540"),
("Juan Tarazona", "1005289450", "juan.tarazona.2023@evasecret.com", "326954814"),
("Juan Macias", "1005382957", "juan.macias.2023@evasecret.com", "321583074");

insert into usuario(usario_nombre, contrasena, persona_idpersona, tipo_persona_idtipo_persona)
values ("felix.admin2023", "Admin,1612*/", 1, 1), ("daniela.doc2023", "docdani,1612*/", 2, 2),
("valentina.doc2023", "docvale,1612*/", 3, 2), ("daniel.doc2023", "docdaniel,1612*/", 4, 2),
("nicolas.doc2023", "docnico,1612*/", 5, 2), ("millan.secret2023", "secretmillan,1612*/", 6, 3),
("david.secret2023", "secretdavid,1612*/", 7, 3), ("juan.secret2023", "secretjuan,1612*/", 8, 3),
("macias.secret2023", "secretmacias,1612*/", 9, 3);