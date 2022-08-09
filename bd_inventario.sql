DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=root @ localhost PROCEDURE NUEVO_PRODUCTO (CODIGO VARCHAR(10))  INSERT INTO inventario (inv_pro_codigo) VALUES (CODIGO)$$
DELIMITER ;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla  inventario 
--
CREATE TABLE  inventario  (
   inv_pro_codigo  varchar(10) NOT NULL,
   inv_entradas  int(4) DEFAULT 0,
   inv_salidas  int(4) DEFAULT 0,
   inv_stock  int(4) DEFAULT 0
);
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla  producto 
--
CREATE TABLE  producto  (
   pro_codigo  varchar(10) NOT NULL,
   pro_descripcion  varchar(150) NOT NULL
) ;
--
-- Indices de la tabla  inventario 
--
ALTER TABLE  inventario 
  ADD PRIMARY KEY ( inv_pro_codigo );
--
-- Indices de la tabla  producto 
--
ALTER TABLE  producto 
  ADD PRIMARY KEY ( pro_codigo );
ALTER TABLE  inventario 
  ADD CONSTRAINT  inventario_ibfk_1  FOREIGN KEY ( inv_pro_codigo ) REFERENCES  producto  ( pro_codigo ) ON DELETE CASCADE ON UPDATE CASCADE;