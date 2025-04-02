
CREATE DATABASE  IF NOT EXISTS `bd_smokecorps`;
USE `bd_smokecorps`;

CREATE TABLE `clasificacion` (
  `ID_CLASIFICACION` int(11) NOT NULL AUTO_INCREMENT,
  `CLASIFICACION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_CLASIFICACION`)
);

INSERT INTO `clasificacion` VALUES (1,'A'),(2,'B'),(3,'c');

CREATE TABLE `rol` (
  `ID_rolClave` int(11) NOT NULL AUTO_INCREMENT,
  `rolDesc` varchar(100) DEFAULT NULL,
  `rolPermisos` varchar(250) NOT NULL,
  `rolRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_rolClave`)
);

INSERT INTO `rol` VALUES (1,'ADMINISTRADOR','Todos los permisos','2023-11-03 13:00:43'),(2,'MODERADOR','Vizuaizar, modificar, borrar datos, insertar datos','2023-11-03 13:00:43'),(3,'CLIENTE','Visualizar y comprar','2023-11-03 13:00:43');


CREATE TABLE `compania` (
  `ID_COMPANIA` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_COMPANIA` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_COMPANIA`)
);

INSERT INTO `compania` VALUES (1,'SONIC'),(2,'INDEPENDIENTE'),(3,'MICROSORE');

CREATE TABLE `genero` (
  `ID_GENERO` int(11) NOT NULL AUTO_INCREMENT,
  `GENERO` varchar(45) DEFAULT NULL,
  `DESCRIPCION` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID_GENERO`)
);

INSERT INTO `genero` (`GENERO`, `DESCRIPCION`) VALUES
('Acción', 'Juegos con énfasis en combate y desafíos físicos.'),
('Aventura', 'Juegos centrados en la exploración y la narrativa.'),
('Rol (RPG)', 'Juegos donde el jugador asume un rol y desarrolla un personaje.'),
('Estrategia', 'Juegos que requieren planificación y toma de decisiones tácticas.'),
('Deportes', 'Simulaciones de deportes reales o ficticios.'),
('Simulación', 'Juegos que simulan actividades o entornos de la vida real.'),
('Puzzle', 'Juegos que desafían la lógica y la resolución de problemas.'),
('Plataformas', 'Juegos con énfasis en saltar y navegar a través de niveles.'),
('Lucha', 'Juegos centrados en combates uno contra uno o en equipo.'),
('Carreras', 'Juegos de conducción y competición vehicular.'),
('Shooter (FPS/TPS)', 'Juegos de disparos en primera o tercera persona.'),
('Musical', 'Juegos que involucran música y ritmo.'),
('Terror', 'Juegos diseñados para asustar o crear tensión.'),
('Indie', 'Juegos desarrollados por estudios independientes.'),
('Multijugador Masivo en Línea (MMO)', 'Juegos en línea con miles de jugadores simultáneos.');

CREATE TABLE `desarrolladora` (
  `ID_DESARROLLADORA` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_DES` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_DESARROLLADORA`)
) ;

INSERT INTO `desarrolladora` VALUES (1,'EPICOSJUEGOS'),(2,'Yandere Dev'),(3,'Microsoft');


CREATE TABLE `videouegos` (
  `ID_VIDEOJUEGO` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_VIDEOJUEGO` varchar(200) DEFAULT NULL,
  `clasificacion_ID_CLASIFICACION` int(11) NOT NULL,
  `desarrolladora_ID_DESARROLLADORA` int(11) NOT NULL,
  `Estatus` int(11) DEFAULT '1',
  `video_img` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID_VIDEOJUEGO`),
  CONSTRAINT `fk_videouegos_clasificacion1` FOREIGN KEY (`clasificacion_ID_CLASIFICACION`) REFERENCES `clasificacion` (`ID_CLASIFICACION`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_videouegos_desarrolladora1` FOREIGN KEY (`desarrolladora_ID_DESARROLLADORA`) REFERENCES `desarrolladora` (`ID_DESARROLLADORA`) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO `videouegos` VALUES 
(15,'GTA V - Edición Premium',1,2,1,'../Imagenes/3432322-grand-theft-auto-v-premium-online-edition-playstation-4-front-co.png'),
(16,'Legend of Zelda: BOTW',2,3,1,'../Imagenes/SI_WiiU_TheLegendOfZeldaBreathOfTheWild_image1600w.jpg'),
(17,'Minecraft',3,2,1,'../Imagenes/minecraft.jpg'),
(18,'FIFA 23',2,1,1,'../Imagenes/fifa-23-image.jpg'),
(19,'Right 4 Alive',3,2,1,'../Plantillas/Carrusel/Imagenes/Right4Alive.jpeg'),
(20,'Genshin Impact',2,2,1,'../Imagenes/genshin-impact-15.jpg'),
(21,'Yandere Simulator',3,2,1,'../Imagenes/Yandere-Simulator-Yan-Visual.jpg'),
(23,'League of Legends',2,1,1,'../Imagenes/league-of-legends.jpg');

CREATE TABLE `plataforma` (
  `ID_PLATAFOMRA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_COMPANIA` int(11) NOT NULL,
  `NOM_PLATAFORMA` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_PLATAFOMRA`),
  CONSTRAINT `fk_plataforma_compania1` FOREIGN KEY (`ID_COMPANIA`) REFERENCES `compania` (`ID_COMPANIA`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO `plataforma` VALUES (1,1,'THE GAME Series X');


CREATE TABLE `compatibilidad` (
  `ID_COMPATIBILIDAD` int(11) NOT NULL AUTO_INCREMENT,
  `plataforma_ID_PLATAFOMRA` int(11) NOT NULL,
  `videouegos_ID_VIDEOJUEGO` int(11) NOT NULL,
  PRIMARY KEY (`ID_COMPATIBILIDAD`),
  CONSTRAINT `fk_compatibilidad_plataforma1` FOREIGN KEY (`plataforma_ID_PLATAFOMRA`) REFERENCES `plataforma` (`ID_PLATAFOMRA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_compatibilidad_videouegos1` FOREIGN KEY (`videouegos_ID_VIDEOJUEGO`) REFERENCES `videouegos` (`ID_VIDEOJUEGO`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `etiqueta` (
  `idETIQUETA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_GENERO` int(11) NOT NULL,
  `videouegos_ID_VIDEOJUEGO` int(11) NOT NULL,
  PRIMARY KEY (`idETIQUETA`),
  CONSTRAINT `fk_etiqueta_genero1` FOREIGN KEY (`ID_GENERO`) REFERENCES `genero` (`ID_GENERO`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_etiqueta_videouegos1` FOREIGN KEY (`videouegos_ID_VIDEOJUEGO`) REFERENCES `videouegos` (`ID_VIDEOJUEGO`) ON DELETE CASCADE ON UPDATE CASCADE
); 

INSERT INTO `etiqueta` VALUES (1,2,15),(14,2,16),(15,1,17),(16,3,18),(17,3,19),(18,1,20),(19,1,23),(24,2,21);

CREATE TABLE `detalles_venta` (
  `ID_DVENTA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_VIDEOJUEGO` int(11) NOT NULL,
  PRIMARY KEY (`ID_DVENTA`),
  CONSTRAINT `fk_detalles_venta_videouegos1` FOREIGN KEY (`ID_VIDEOJUEGO`) REFERENCES `videouegos` (`ID_VIDEOJUEGO`) ON DELETE CASCADE ON UPDATE CASCADE
);


INSERT INTO `genero` VALUES (1,'Aventura','Juegos de aventura en tercera persona'),(2,'Deportes','Juegos de deportes como fútbol, baloncesto, etc.'),(3,'Rompecabezas','Juegos de lógica y rompecabezas');



CREATE TABLE `usuarios` (
  `ID_Us` int(11) NOT NULL AUTO_INCREMENT,
  `ID_rolClave` int(11) NOT NULL,
  `u_Nombre` varchar(50) NOT NULL,
  `u_Ap` varchar(50) NOT NULL,
  `u_Am` varchar(50) DEFAULT NULL,
  `u_Us` varchar(50) DEFAULT NULL,
  `u_Contra` varchar(50) DEFAULT NULL,
  `u_avatar` varchar(250) DEFAULT NULL,
  `u_Numero` varchar(20) DEFAULT NULL,
  `u_Pais` varchar(250) DEFAULT NULL,
  `u_Ciudad` varchar(100) DEFAULT NULL,
  `u_CodigoPostal` int(11) DEFAULT NULL,
  `u_Celular` varchar(30) DEFAULT NULL,
  `u_Correo` varchar(80) NOT NULL,
  `u_Estatus` int(11) NOT NULL,
  `u_Creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_Us`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`ID_rolClave`) REFERENCES `rol` (`ID_rolClave`) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO `usuarios` 
VALUES (1,1,'Juan cc','Carlos','Bodoque','juancarlos','contraseña15656','avatar.jpg','ABCP759372DEF','Chile','Santiago',198675,'XXXX-XXX-XX1','Sanchezk801@gmail.com',1,'2023-11-29 20:49:56'),
(2,3,'pepe','Juarez','Quijas','pepeC','123','avatar1.jpg','ABCP759372DEF','Mexico','Santiago',198675,'XXX-XXX-XXX','pepe@example.com',1,'2023-11-03 13:00:43'),
(3,3,'luis','Martinez','test','test','test123','avantar2.jpg','test','test','test',187895,'test','test@example.com',1,'2023-11-03 13:00:43'),
(4,1,'Kevin Isaac','Sanchez','Benitez','Isaac','12345',NULL,NULL,NULL,NULL,NULL,'7791254656','sanchezk801@gmail.com',1,'2023-11-10 02:45:46'),
(5,3,'pipe','punk','martinez','punk','123',NULL,NULL,NULL,NULL,NULL,'7894564566','sdhhkjas@example.com',1,'2023-11-10 02:49:57'),
(6,3,'pipe','Sanchez','martinez','punk','147',NULL,NULL,NULL,NULL,NULL,'7791254656','sanchezk801@gmail.com',1,'2023-11-10 02:53:24'),
(7,3,'pipe','Sanchez','martinez','punk','147',NULL,NULL,NULL,NULL,NULL,'7791254656','sanchezk801@gmail.com',1,'2023-11-10 02:55:37'),
(8,3,'pipe','Sanchez','martinez','punk','147',NULL,NULL,NULL,NULL,NULL,'7791254656','sanchezk801@gmail.com',1,'2023-11-10 02:55:44'),
(9,3,'Kevin Isaac','punk','martinez','q','12',NULL,NULL,NULL,NULL,NULL,'564564654','swewee',1,'2023-11-10 03:00:32');

CREATE TABLE `ventas` (
  `ID_VENTA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Us` int(11) NOT NULL,
  `ID_DVENTA` int(11) NOT NULL,
  `Activo` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_VENTA`),
  CONSTRAINT `fk_ventas_detalles_venta1` FOREIGN KEY (`ID_DVENTA`) REFERENCES `detalles_venta` (`ID_DVENTA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ventas_usuarios1` FOREIGN KEY (`ID_Us`) REFERENCES `usuarios` (`ID_Us`) ON DELETE CASCADE ON UPDATE CASCADE
);

DELIMITER ;;
CREATE PROCEDURE `bibliotecaUs`(in op int,in clave int)
BEGIN

	if(op=1) then		
		select v.ID_VENTA,vid.ID_VIDEOJUEGO ,vid.NOM_VIDEOJUEGO, now() Fecha_Compra
		from ventas v, videouegos vid, usuarios u, detalles_venta dv
		where v.ID_Us = u.ID_Us and dv.ID_DVENTA = v.ID_DVENTA and 
		dv.ID_VIDEOJUEGO = vid.ID_VIDEOJUEGO and clave = u.ID_Us and v.Activo = 1
		order by v.ID_VENTA desc;
	else	
		select v.ID_VENTA,vid.ID_VIDEOJUEGO,vid.NOM_VIDEOJUEGO,video_img
		from ventas v, videouegos vid, usuarios u, detalles_venta dv
		where v.ID_Us = u.ID_Us and dv.ID_DVENTA = v.ID_DVENTA and 
		dv.ID_VIDEOJUEGO = vid.ID_VIDEOJUEGO and clave = u.ID_Us and v.Activo = 0
		order by v.ID_VENTA desc;
END if;
end ;;
DELIMITER ;

DELIMITER ;;
CREATE PROCEDURE `BuscarUsu`(in clave int)
BEGIN
	 
	select u.u_Nombre, u.u_Ap, u.u_Am, u.u_Contra, u.u_Celular, u.u_Correo, r.rolDesc
	from usuarios u, rol r
	where clave = u.ID_Us and u.ID_rolClave = r.ID_rolClave;
	
END ;;
DELIMITER ;

DELIMITER ;;
CREATE PROCEDURE `ConfirmarCompra`(in clave int, in idpro int)
BEGIN
declare idProducto int ;

	update ventas v, detalles_venta dv Set v.Activo = "1" Where clave = v.ID_us and v.ID_DVENTA = dv.ID_DVENTA and dv.ID_VIDEOJUEGO = idpro;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE PROCEDURE `editarUsu`(
    IN clave INT,
    IN nom VARCHAR(100),
    IN ap VARCHAR(100),
    IN am VARCHAR(100),
    IN email VARCHAR(100),
    IN cont VARCHAR(100),
    IN tel VARCHAR(100)
)
BEGIN
    UPDATE usuarios
    SET u_Nombre = nom, u_Ap = ap, u_Am = am, u_Correo = email, u_Contra = cont, u_Celular = tel
    WHERE ID_Us = clave;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE  PROCEDURE `InsertarPro`(
in titulo varchar(50),
in cla int,
in desarr int,
in gen int,
in img varchar(250)

)
BEGIN
declare id int;
Insert into videouegos (NOM_VIDEOJUEGO,clasificacion_ID_CLASIFICACION,desarrolladora_ID_DESARROLLADORA,video_img)
VALUE (titulo,cla,desarr,img);
select ID_VIDEOJUEGO into id from videouegos order by ID_VIDEOJUEGO desc limit 1 ;
Insert into etiqueta (ID_GENERO,videouegos_ID_VIDEOJUEGO)
value(gen,id);

END ;;
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE `InsertarUsuario`(
    IN p_u_Nombre VARCHAR(50),
    IN p_u_Ap VARCHAR(50),
    IN p_u_Am VARCHAR(50),
    IN p_u_Us VARCHAR(50),
    IN p_u_Contra VARCHAR(50),
    IN p_u_Celular VARCHAR(30),
    IN p_u_Correo VARCHAR(80),
	in rol int
)
BEGIN
    if exists(select * from usuarios where u_Us = p_u_Us) then
			Select 0 clave;
else

	INSERT INTO usuarios (
			u_Nombre,
			u_Ap,
			u_Am,
			u_Us,
			u_Contra,
			u_Celular,
			u_Correo,
			u_Estatus,
			ID_rolClave
			) VALUES (
				p_u_Nombre,
				p_u_Ap,
				p_u_Am,
				p_u_Us,
				p_u_Contra,
				p_u_Celular,
				p_u_Correo,
				1,
				rol
			);
			select 1 clave;
END if ;
end $$

DELIMITER ;

DELIMITER ;;
CREATE PROCEDURE `login`(	
	IN USU 		VARCHAR(50),
	IN CONTRA	VARCHAR(50)
)
BEGIN 
IF EXISTS(SELECT * FROM usuarios WHERE u_Us=USU AND u_Contra=CONTRA
			AND u_Estatus=1) THEN
	SELECT ID_us,
			CONCAT(u.u_Nombre, ' ', u.u_Ap,' ',u.u_Am) usuarios ,
			r.rolDesc ROL
	FROM USUARIOS u, ROL r
	WHERE u.u_Us=USU
	AND u.u_Contra=CONTRA
	AND r.ID_rolClave=u.ID_rolClave
	AND u.u_Estatus=1;
ELSE
	SELECT 0 CLAVE;
END IF;
end ;;
DELIMITER ;

DELIMITER ;;
CREATE PROCEDURE `Producto_x_id`(
  In idpro int 
)
BEGIN
Select 	v.ID_VIDEOJUEGO,v.Nom_VIDEOJUEGO, c.CLASIFICACION, d.NOM_DES, v.video_img from videouegos v, clasificacion c, desarrolladora d
where 	v.ID_VIDEOJUEGO = idpro and v.clasificacion_ID_CLASIFICACION = c.ID_CLASIFICACION and 
		d.ID_DESARROLLADORA =v.desarrolladora_ID_DESARROLLADORA and Estatus = 1;

END ;;
DELIMITER ;


DELIMITER ;;
CREATE PROCEDURE `spRegistrarCompra`(in clave int,
in id_juego int)
BEGIN
	insert into detalles_venta (ID_Videojuego) 
	value (id_juego);
	
	insert into ventas (ID_us,ID_DVENTA)
	value (clave,(select ID_DVENTA from detalles_venta order by ID_DVENTA desc limit 1));
END ;;
DELIMITER ;

DELIMITER ;;
CREATE PROCEDURE `spTotalCompras`()
BEGIN
select count(*) totalCompras from ventas;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE  PROCEDURE `spTotalProducto`()
BEGIN
select count(*) totalProductos from videouegos;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE  PROCEDURE `spTotalUsuarios`()
BEGIN
	select count(*) totalUsuarios from usuarios;
END ;;
DELIMITER ;

DELIMITER ;;
CREATE PROCEDURE `spListarCompras`
(
in opc int
)
BEGIN
	if(opc=0) then
		select v.ID_VENTA,  concat(u.u_Nombre," ",u.u_Ap," ",u.u_Am) Nombre, vid.NOM_VIDEOJUEGO
		from ventas v, usuarios u, detalles_venta dv, videouegos vid
		where dv.ID_DVENTA = v.ID_DVENTA AND v.ID_Us = u.ID_Us and vid.ID_VIDEOJUEGO = dv.ID_VIDEOJUEGO;
	else
		select v.ID_VIDEOJUEGO,v.NOM_VIDEOJUEGO, count(dt.ID_VIDEOJUEGO) cantidad from detalles_venta dt
		join videouegos v on v.ID_VIDEOJUEGO = dt.ID_VIDEOJUEGO
		group by dt.ID_VIDEOJUEGO
		order by cantidad desc;

END if;
end ;;
DELIMITER ;

DELIMITER ;;
CREATE  PROCEDURE `tspListarUsu`()
BEGIN

	select u.ID_Us,u.u_avatar, concat(u.u_Nombre," ",u.u_Ap," ",u.u_Am) Nombre,u.u_Us,u.u_Correo,u.u_Celular, r.rolDesc,u.u_Estatus
	from usuarios u, rol r
	where r.ID_rolClave = u.ID_rolClave
	order by ID_Us desc ;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE PROCEDURE `tspTotalB`(in clave int)
BEGIN
	select count(*) from ventas 
	where clave =  ID_Us and Activo =1;
END ;;
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE ValidarPro(
in idusu int,
in idpro int
)
BEGIN
if EXISTS(select dv.ID_VIDEOJUEGO, v.ID_Us from detalles_venta dv, ventas v where idpro = dv.ID_VIDEOJUEGO and idusu=  v.ID_Us and v.Activo = 1 and dv.ID_DVENTA = v.ID_DVENTA) then
	Select 1 Clave;
else
	Select 0 Clave;


END if;
end$$

DELIMITER ;

DELIMITER $$
CREATE PROCEDURE `Elim_x_Carrito` 
(
	IN claveVenta    	INT,
	IN claveProducto	INT
)
BEGIN
DELETE FROM detalles_venta
  WHERE ID_DVENTA=claveVenta
  AND ID_VIDEOJUEGO=claveProducto;

END$$

DELIMITER ;

DELIMITER ;;
CREATE PROCEDURE `tspListaProductos`()
BEGIN
    SELECT 
		v.ID_VIDEOJUEGO,
        v.NOM_VIDEOJUEGO,
        c.CLASIFICACION AS CLASIFICACION,
        g.GENERO AS GENERO,
        d.NOM_DES,
        v.video_img
    FROM 
        videouegos v
    JOIN 
        clasificacion c ON v.clasificacion_ID_CLASIFICACION = c.ID_CLASIFICACION
    JOIN 
        etiqueta e ON v.ID_VIDEOJUEGO = e.videouegos_ID_VIDEOJUEGO
    JOIN
        genero g ON e.ID_GENERO = g.ID_GENERO
    JOIN 
        desarrolladora d ON v.desarrolladora_ID_DESARROLLADORA = d.ID_DESARROLLADORA
    WHERE 
        v.Estatus = 1;
END ;;

DELIMITER ;
