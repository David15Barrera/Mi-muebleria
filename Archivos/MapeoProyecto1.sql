CREATE SCHEMA IF NOT EXISTS MUEBLERIA;

USE MUEBLERIA;

CREATE TABLE IF NOT CLIENTE (
	nit VARCHAR(15) NOT NULL,
	nombre CHAR(45) NOT NULL,
	direccion VARCHAR(45) NOT NULL,
	municipio VARCHAR(25) NOT NULL,
	departamento VARCHAR(25) NOT NULL,
	PRIMARY KEY(nit)
);

CREATE TABLE IF NOT EXISTS USUARIO(
	idnombre VARCHAR(25) NOT NULL,
	password VARCHAR(45) NOT NULL,
	tipo INT NOT NULL,
	PRIMARY KEY(idnombre)
);


CREATE TABLE IF NOT EXISTS USERFABRICA(
	idnombrefab VARCHAR(25),
	nombrefab VARCHAR(25),
	apellidofab VARCHAR(20),
	telefonofab int NOT NULL,
	Nit VARCHAR(10),
	direccionfab VARCHAR(25),
	PRIMARY KEY(idnombrefab),
	FOREIGN KEY(idnombrefab) REFERENCES USUARIO(idnombre)
);

CREATE TABLE IF NOT EXISTS USERPUNTOVENTAS(
	idnombreven VARCHAR(25),
	nombreven VARCHAR(25),
	apellidoven VARCHAR(20),
	telefonoven int NOT NULL,
	cargoven VARCHAR(20),
	direccionven VARCHAR(25),
	PRIMARY KEY(idnombreven),
	FOREIGN KEY(idnombreven) REFERENCES USUARIO(idnombre)
);

CREATE TABLE IF NOT EXISTS USERADMIN(
	idnombreadm VARCHAR(25),
	nombreadm VARCHAR(25),
	apellidoadm VARCHAR(20),
	telefonoadm int NOT NULL,
	cargoadm VARCHAR(15),
	direccionadm VARCHAR(25),
	PRIMARY KEY(idnombreadm),
	FOREIGN KEY(idnombreadm) REFERENCES USUARIO(idnombre)
);

CREATE TABLE IF NOT EXISTS DEVOLUCION(
	iddevolucion INT NOT NULL AUTO_INCREMENT,
	nitcliente VARCHAR(15) NOT NULL,
	nommueble VARCHAR(15) NOT NULL,
	cantidadDev INT NOT NULL,
	PrecioDev INT NOT NULL,
	fechadev DATE,
	PRIMARY KEY(iddevolucion),
	FOREIGN KEY(nitcliente) REFERENCES CLIENTE(nit)
);

CREATE TABLE IF NOT EXISTS MUEBLE(
	idmueb INT NOT NULL AUTO_INCREMENT,
	idmueble VARCHAR(25),
	preciomub DOUBLE,
	PRIMARY KEY(idmueb)
);

CREATE TABLE IF NOT EXISTS PIEZA(
	idpie INT NOT NULL AUTO_INCREMENT,
	idpieza VARCHAR(25),
	costopieza DOUBLE,
	PRIMARY KEY(idpie)
);

CREATE TABLE IF NOT EXISTS ENSAMPIEZA(
	idemsamble INT NOT NULL AUTO_INCREMENT,
	cantidadpiez INT,
	muebleensam INT,
 	piezaensam INT,
	PRIMARY KEY(idemsamble),
  FOREIGN KEY(muebleensam) REFERENCES MUEBLE(idmueb),
	FOREIGN KEY(piezaensam) REFERENCES PIEZA(idpie)
);

CREATE TABLE IF NOT EXISTS ENSAMUEBLE(
	idensam INT NOT NULL AUTO_INCREMENT,
	sammueble INT,
	fechaensam DATE,
	creadoruser VARCHAR(25),
	PRIMARY KEY(idensam),
  FOREIGN KEY(sammueble) REFERENCES MUEBLE(idmueb),
	FOREIGN KEY(creadoruser) REFERENCES USUARIO(idnombre)
);



INSERT INTO CLIENTE (nit,nombre,direccion,municipio,departamento) VALUES ('200413171K','Angel','6ta avenida zona 1','quiche','ciudad' );
INSERT INTO CLIENTE (nit,nombre,direccion,municipio,departamento) VALUES ('242341412K','dorian','5ta avenida zona 2','quiche','ciudad' );

INSERT INTO USUARIO (idnombre,password,tipo) VALUES ('jgrandado','1234var','1');
INSERT INTO USUARIO (idnombre,password,tipo) VALUES ('COSASDQWA','1234var','1');
INSERT INTO USUARIO (idnombre,password,tipo) VALUES ('fernanda','fer12344','2');
INSERT INTO USUARIO (idnombre,password,tipo) VALUES ('123fer','cosasde1','3');
INSERT INTO USUARIO (idnombre,password,tipo) VALUES ('Fernando','casaca123','1');

INSERT INTO MUEBLE (idmueble,preciomub) VALUES ('Mesa Roble',500);

INSERT INTO ENSAMPIEZA (cantidadpiez,muebleensam,piezaensam) VALUES (2,1,1);
INSERT INTO ENSAMUEBLE (sammueble,fechaensam,creadoruser) VALUES (1,'2021-08-09','jgrandado');

INSERT INTO PIEZA (idpieza,costopieza) VALUES ('Pata cuadrada','15.50');


INSERT INTO USERFABRICA (idnombrefab,nombrefab,apellidofab,telefonofab,Nit,direccionfab) VALUES ('jgrandado','granados','Lopez','12312341','11111','zona 1');
INSERT INTO USERFABRICA (idnombrefab,nombrefab,apellidofab,telefonofab,Nit,direccionfab) VALUES ('COSASDQWA','cosarwerw','Gerardo','1324123','11111','zona 2');

update PIEZA set idpieza='orange nuevo', costopieza='15.50' where idpie='3';

INSERT INTO USERADMIN (idnombreadm,nombreadm,apellidoadm,telefonoadm,cargoadm,direccionadm) VALUES ('123fer','fernanda','Guevara','13209341','administracion','zona 3');
/* INSERT INTO USERADMIN (idnombreadm,nombreadm,apellidoadm,cargoadm,telefonoadm,direccionadm) VALUES ('jgrandado','granados','12312341','zona 1');
INSERT INTO USERADMIN (idnombreadm,nombreadm,apellidoadm,cargoadm,telefonoadm,direccionadm) VALUES ('jgrandado','granados','12312341','zona 1');
*/
INSERT INTO USERPUNTOVENTAS (idnombreven,nombreven,apellidoven,telefonoven,cargoven,direccionven) VALUES ('fernanda','fernanda','SOLIZ','132341','Punto de ventas','zona 3');
/*INSERT INTO USERPUNTOVENTAS (idnombreven,nombreven,apellidoven,telefonoven,cargoven,direccionven) VALUES ('jgrandado','granados','12312341','zona 1');
INSERT INTO USERPUNTOVENTAS (idnombreven,nombreven,apellidoven,telefonoven,cargoven,direccionven) VALUES ('jgrandado','granados','12312341','zona 1');
*/
 SELECT USERFABRICA.nombrefab, USERFABRICA.telefonofab, USERFABRICA.direccionfab, USUARIO.tipo from USERFABRICA INNER JOIN USUARIO ON USUARIO.idnombre=USERFABRICA.idnombrefab;


INSERT INTO DEVOLUCION (nitcliente,nommueble,cantidadDev,PrecioDev,fechadev) VALUES('200413171K','Silla Roble','1','12','2020-8-5');

        Connection cnx = null;
        Statement sta = null;
        ResultSet rs = null;

    connectorDB cn = new connectorDB();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
     String tipo = request.getParameter("txtipieza");
            String costo = request.getParameter("txtcosto");
            u.setTipo(tipo);
            u.setCosto(costo);
            dao.add(u);
            acceso=listar;


                             if(request.getParameter("Actualizar")!=null){
            int id;
            id= Integer.parseInt(request.getParameter("txtid"));
            String tipo = request.getParameter("txtipieza");
            String costo = request.getParameter("txtcosto");
            u.setIdpieza(id);
            u.setTipo(tipo);
            u.setCosto(costo);
            dao.add(u);
            }

            "select * from DEVOLUCION where fechadev between '"+ muni +"' and '"+ depa +"'"