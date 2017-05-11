/*
This file is part of Giswater 2.0
The program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
This version of Giswater is provided by Giswater Association
*/


SET search_path = "SCHEMA_NAME", public, pg_catalog;

-- 
-- Message errors already translated (i18n)
--

-- Uncatched errors (audit_cat_error.id = -1)
INSERT INTO audit_cat_error VALUES ('-1', 'Error no detectado','Abra el archivo de registro de PostgreSQL para obtener más detalles', '2', 't', 'generic');

-- Debug messages (audit_cat_error.id between 0 and 99) 
INSERT INTO audit_cat_error VALUES ('0', 'OK', null, '3', 'f', 'generic');
INSERT INTO audit_cat_error VALUES ('1', 'Insertar disparador','Insertado', '3', 'f', null);
INSERT INTO audit_cat_error VALUES ('2', 'Actualizar disparador','Actualizado', '3', 'f', null);
INSERT INTO audit_cat_error VALUES ('3', 'Borrar disparador','Borrado', '3', 'f', null);

-- Trigger messages (audit_cat_error.id between 101 and 499) 
INSERT INTO audit_cat_error VALUES ('100', 'Prueba de disparador', 'Prueba de disparador', '0', 't', 'ws_trg');
INSERT INTO audit_cat_error VALUES ('105', 'No hay tipos de nodos definidos en el modelo', 'Definir al menos uno', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('110', 'No hay ningún catálogo de nodos definido en el modelo', 'Definir al menos uno', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('115', 'No hay sectores definidos en el modelo', 'Definir al menos uno', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('120', 'La característica está fuera del sector','Por favor revise el mapa y utilice el enfoque de los sectores', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('125', 'No hay ningún dma definido en el modelo', 'Definir al menos uno', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('130', 'La característica está fuera del dma','Por favor revise el mapa y utilice el enfoque del dma', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('135', 'No está permitido cambiar el catálogo de nodos','El nuevo catálogo de nodos no está incluido en el mismo tipo (node_type.type) del catálogo de nodos antiguo', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('140', 'No hay tipos de arco definidos en el modelo','Definir al menos uno','2', 't', null);
INSERT INTO audit_cat_error VALUES ('145', 'No hay ningún catálogo de arcos definido en el modelo','Definir al menos uno','2', 't', null);
INSERT INTO audit_cat_error VALUES ('150', 'No hay ningún catálogo de conexiones definido en el modelo','Definir al menos uno', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('152', 'No hay ningún catálogo de rejilla definido en el modelo','Definir al menos uno', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('155', 'No está permitido insertar un arco nuevo en esta tabla', 'Por favor, para insertar un arco nuevo utilice la capa arco de GIS FEATURES', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('157', 'No está permitido eliminar arcos de esta tabla', 'Por favor, para borrar arcos utilice la capa arco de GIS FEATURES', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('160', 'No está permitido insertar un nodo nuevo en esta tabla', 'Por favor, para insertar un nodo nuevo utilice la capa nodo de GIS FEATURES', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('163', 'No está permitido eliminar nodos de esta tabla', 'Por favor, para borrar nodos utilice la capa nodo de GIS FEATURES', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('165', 'No está permitido insertar una válvula nueva en esta tabla', 'Por favor, para insertar una válvula nueva utilice la capa nodo de GIS FEATURES', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('170', 'Hay columnas en esta tabla que no se permiten editar', 'Try to update open, accesibility, broken, mincut_anl or hydraulic_anl', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('175', 'No está permitido eliminar válvulas de esta tabla', 'Por favor, para borrar válvulas utilice la capa nodo de GIS FEATURES', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('180', 'Uno o más arcos tiene el mismo nodo que Node1 y Node2', 'Por favor, revise su proyecto o modifique la configuración de las propiedades', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('182', 'Uno o más arcos no se insertó porque no tiene nodo de inicio/fin', 'Por favor, revise su proyecto o modifique la configuración de las propiedades', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('185', 'Existe una o más conexiones más cerca que el mínimo configurado,', 'Por favor, revise su proyecto o modifique la configuración de las propiedades', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('190', 'Existe uno o más nodos más cerca que el mínimo configurado,', 'Por favor, revise su proyecto o modifique la configuración de las propiedades', '2', 't', null);
INSERT INTO audit_cat_error VALUES ('200', 'Elev no es una columna actualizable', 'Por favor, use use top_elev o ymax para modificar este valor', '2', 't', null);


-- Function messages (audit_cat_error.id between 501 and 998)
INSERT INTO audit_cat_error VALUES ('505', 'Nodo no encontrado','Por favor, revise la tabla nodo', '1', 't', 'ws');
INSERT INTO audit_cat_error VALUES ('510', 'Las tuberías tienen distintos tipos', 'No es posible eliminar el nodo', '1', 't', 'ws');
INSERT INTO audit_cat_error VALUES ('515', 'El nodo no tiene dos arcos', 'No es posible eliminar el nodo', '1', 't', 'ws');
INSERT INTO audit_cat_error VALUES ('520', 'Arco no encontrado','Por favor, revise la tabla arco', '1', 't', 'ws_fct');

-- Undefined error (audit_cat_error.id = 999)
INSERT INTO audit_cat_error VALUES ('999', 'Error indefinido', 'Indefinido', '1', 't', 'generic');

