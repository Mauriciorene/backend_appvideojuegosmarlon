/*Procedimientos para la tabla "Usuario"*/
/*Procedimiento almacenado para insertar un nuevo Usuario*/
DELIMITER $
CREATE PROCEDURE InsertarUsuario (IN nombre VARCHAR(20), IN apellido VARCHAR(20), IN contraseña VARCHAR(8), IN Rol VARCHAR(20))
BEGIN
  INSERT INTO Usuario (nombre_Usuario, apellido, contraseña, Rol) 
  VALUES (nombre, apellido, contraseña, Rol);
END $

/*Procedimiento almacenado para actualizar un registro de Usuario*/
CREATE PROCEDURE ActualizarUsuario (IN id_Usuario INT, IN nombre VARCHAR(20), IN apellido VARCHAR(20), IN contraseña VARCHAR(8), IN Rol VARCHAR(20))
BEGIN
  UPDATE Usuario
  SET nombre_Usuario = nombre, apellido = apellido, contraseña = contraseña, Rol = Rol
  WHERE id_Usuario = id_Usuario;
END $

/*Procedimiento almacenado para eliminar un registro de Usuario*/
CREATE PROCEDURE EliminarUsuario (IN id_Usuario INT)
BEGIN
  DELETE FROM Usuario
  WHERE id_Usuario = id_Usuario;
END $

/*Procedimiento almacenado para Mostrar un registro de Usuario*/
CREATE PROCEDURE MostrarUsuarios()
BEGIN
  SELECT id_Usuario, nombre_Usuario, apellido, contraseña, Rol
  FROM Usuario;
END $

/*Procedimientos almacenado para la tabla Cliente-----------------------------------------------------------------------------------------*/

/*Procedimiento almacenado para insertar un Cliente*/
DELIMITER $
CREATE PROCEDURE InsertarCliente (IN nombre VARCHAR(20), IN apellido VARCHAR(20), IN telefono VARCHAR(8))
BEGIN
  INSERT INTO Cliente (nombre, apellido, telefono) 
  VALUES (nombre, apellido, telefono);
END $

/*Procedimiento almacenado para actualizar un registro de Cliente*/
CREATE PROCEDURE ActualizarCliente (IN id_cliente INT, IN nombre VARCHAR(20), IN apellido VARCHAR(20), IN telefono VARCHAR(8))
BEGIN
  UPDATE Cliente
  SET nombre = nombre, apellido = apellido, telefono = telefono
  WHERE id_cliente = id_cliente;
END $

/*Procedimiento almacenado para eliminar un registro de Cliente*/
CREATE PROCEDURE EliminarCliente (IN id_cliente INT)
BEGIN
  DELETE FROM Cliente
  WHERE id_cliente = id_cliente;
END $

/*Procedimiento almacenado para Mostrar un registro de Cliente*/
CREATE PROCEDURE MostrarClientes()
BEGIN
  SELECT id_cliente, nombre, apellido, telefono
  FROM Cliente;
END $
 
/*Procedimientos almacenado para la tabla Categoria--------------------------------------------------------------------------*/

/*Procedimiento almacenado para insertar un registro de Categoria*/
DELIMITER $
CREATE PROCEDURE InsertarCategoria (IN nombre VARCHAR(30))
BEGIN
  INSERT INTO Categoria (nombre) 
  VALUES (nombre);
END $

/*Procedimiento almacenado para actualizar un registro de Categoria*/
CREATE PROCEDURE ActualizarCategoria (IN id_categoria INT, IN nombre VARCHAR(30))
BEGIN
  UPDATE Categoria
  SET nombre = nombre
  WHERE id_categoria = id_categoria;
END $

/*Procedimiento almacenado para Eliminar un registro de Categoria*/
CREATE PROCEDURE EliminarCategoria (IN id_categoria INT)
BEGIN
  DELETE FROM Categoria
  WHERE id_categoria = id_categoria;
END $

/*Procedimiento almacenado para Mostrar un registro de Categoria*/
CREATE PROCEDURE MostrarCategorias()
BEGIN
  SELECT id_categoria, nombre
  FROM Categoria;
END $

/*Procedimientos almacenado para la tabla Producto-----------------------------------------------------------------------------------------------------------------------------------*/

/*Procedimiento almacenado para insertar un registro de Producto*/
DELIMITER $
CREATE PROCEDURE InsertarProducto (IN id_categoria INT, IN descripcion VARCHAR(100), IN nombreProducto VARCHAR(30), IN precio FLOAT, IN Stock INT)
BEGIN
  INSERT INTO Producto (id_categoria, descripcion, nombreProducto, precio, Stock) 
  VALUES (id_categoria, descripcion, nombreProducto, precio, Stock);
END $

/*Procedimiento almacenado para actualizar un registro de Producto*/
CREATE PROCEDURE ActualizarProducto (IN id_producto INT, IN id_categoria INT, IN descripcion VARCHAR(100), IN nombreProducto VARCHAR(30), IN precio FLOAT, IN Stock INT)
BEGIN
  UPDATE Producto
  SET id_categoria = id_categoria, descripcion = descripcion, nombreProducto = nombreProducto, precio = precio, Stock = Stock
  WHERE id_producto = id_producto;
END $

/*Procedimiento almacenado para Eliminar un registro de Producto*/
CREATE PROCEDURE EliminarProducto (IN id_producto INT)
BEGIN
  DELETE FROM Producto
  WHERE id_producto = id_producto;
END $

/*Procedimiento almacenado para Mostrar un registro de Producto*/
CREATE PROCEDURE MostrarProductos()
BEGIN
  SELECT id_producto, id_categoria, descripcion, nombreProducto, precio, Stock
  FROM Producto;
END $


/* Procedimiento Almacenado para Actualizar una Venta ----------------------------------------------------------*/

/*Procedimiento almacenado para insertar un registro de Venta*/
DELIMITER $
CREATE PROCEDURE InsertarVenta (IN id_cliente INT, IN id_producto INT, IN fecha DATE)
BEGIN
  INSERT INTO Venta (id_cliente, id_producto, fecha) 
  VALUES (id_cliente, id_producto, fecha);
END $

/*Procedimiento almacenado para actualizar un registro de Venta*/
CREATE PROCEDURE ActualizarVenta (IN id_venta INT, IN id_cliente INT, IN id_producto INT, IN fecha DATE)
BEGIN
  UPDATE Venta
  SET id_cliente = id_cliente, id_producto = id_producto, fecha = fecha
  WHERE id_venta = id_venta;
END $

/*Procedimiento almacenado para Eliminar un registro de Venta*/
CREATE PROCEDURE EliminarVenta (IN id_venta INT)
BEGIN
  DELETE FROM Venta
  WHERE id_venta = id_venta;
END $

/*Procedimiento almacenado para Mostrar un registro de Venta*/
CREATE PROCEDURE MostrarVentas()
BEGIN
  SELECT id_venta, id_cliente, id_producto, fecha
  FROM Venta;
END $
