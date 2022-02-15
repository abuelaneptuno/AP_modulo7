<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos de la persona</h1>
        <form action="SvPersona" method="post">
            <p><label>DNI:</label><input type="text" name="dni"></p>
            <p><label>Nombre:</label><input type="text" name="nombre"></p>
            <p><label>Apellido:</label><input type="text" name="apellido"></p>
            <p><label>Teléfono:</label><input type="text" name="telefono"></p>
            <button type="submit">Enviar</button>
        </form>
        
        <h1>Ver lista de personas</h1>
        <p>Si desea ver la lista de personas haga click en el botón</p>
        <form action="SvPersona" method="GET">
            <button type="submit">Mostrar personas</button>
        </form>
        
        <h1>Eliminar persona</h1>
        <p>Ingrese el ID de la persona a eliminar</p>
        <form action="SvEliminar" method="POST">
            <p><label>ID:</label><input type="text" name="id_elim"></p>
            <button type="submit">Eliminar</button>
        </form>
        
        <h1>Modificar Persona</h1>
        <p>Ingrese el ID y los nuevos datos:</p>
        <form action="SvModificar" method="POST">  
            <p><label>ID:</label><input type="text" name="id"></p>
            <p><label>DNI:</label><input type="text" name="dni"></p>
            <p><label>Nombre:</label><input type="text" name="nombre"></p>
            <p><label>Apellido:</label><input type="text" name="apellido"></p>
            <p><label>Teléfono:</label><input type="text" name="telefono"></p>
            <button type="submit">Modificar</button>
        </form>
        
        <h1>Modificar Persona Posta</h1>
        <p>Ingrese el ID y los nuevos datos:</p>
        <form action="SvModificarPosta" method="POST">  
            <p><label>ID:</label><input type="text" name="id"></p>
            <p><label>DNI:</label><input type="text" name="dni"></p>
            <p><label>Nombre:</label><input type="text" name="nombre"></p>
            <p><label>Apellido:</label><input type="text" name="apellido"></p>
            <p><label>Teléfono:</label><input type="text" name="telefono"></p>
            <button type="submit">Modificar</button>
        </form>
        
    </body>
</html>
