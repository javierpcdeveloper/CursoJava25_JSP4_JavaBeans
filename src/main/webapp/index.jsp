<!-- Agregamos declaración -->
<%!
    //declaramos una variable con su método get
    String usuario="Pepe";
    public String getUsuario(){
        return this.usuario;
    }
    //declaramos un contador
    int contador=1;
    //en un scriptlet las vriables y métodos no están accesibles para toda la clase
    //por eso conviene utilizar una declaración para ello
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplo de JSP con JavaBeans</title>
    </head>
    <body>
        <h1>Ejemplo de JSP con JavaBeans</h1><br>
        <a href=""></a>
        <jsp:useBean id="r1" class="beans.Rectangulo" scope="session"/><!-- Si existe, lo recupera; si no, lo crea -->
        <jsp:useBean id="r2" class="beans.Rectangulo" scope="request"/>
        <!-- El rectangulo r1, al tener alcance session, guarda los valores mientras no se cierre la sesión -->
        Base de r1:<jsp:getProperty name="r1" property="base"/><br>
        Altura de r1:<jsp:getProperty name="r1" property="altura"/><br>
        Área de r1:<jsp:getProperty name="r1" property="area"/><br>
        <!-- El rectangulo r2, al tener alcance request, no guarda los valores de una página a otra -->
        Base de r2:<jsp:getProperty name="r2" property="base"/><br>
        Altura de r2:<jsp:getProperty name="r2" property="altura"/><br>
        Área de r2:<jsp:getProperty name="r2" property="area"/><br>
        <form action="modificarRectangulo.jsp">
            Base r1:<input type="text" name="base1"><br>
            Altura r1:<input type="text" name="altura1"><br>
            Base r2:<input type="text" name="base2"><br>
            Altura r2:<input type="text" name="altura2"><br>
            <input type="submit" value="Modificar">
        </form>
    </body>
</html>
