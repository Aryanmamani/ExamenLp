<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>  
        <title>AngularJS MVC Spring UPeU</title>  
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
       
    </head>
    <body  class="ng-cloak">
 <%@include file="../header.jsp" %>


        <div class="wrapper">

            <!-- Main Header -->
            <header class="main-header">

                <!-- Header Navbar -->
                <nav class="navbar navbar-static-top" role="navigation">

                    <%@include file="../menu.jsp" %>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">

                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <%@include file="../lateral.jsp" %>
                       

                </section>
                <!-- /.sidebar -->
            </aside>




            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>Soy COntenido</h1>
                    <!-- 
                                             contenido
                        
                        lllllllllllllllllllllllllllllllllllllllllllllllllllllll
                        lllllllllllllllllllllllllllllllllllllllllllllllllllllll
                      lllllllllllllllllllllllllllllllllllllllllllllllllllllll
                      lllllllllllllllllllllllllllllllllllllllllllllllllllllll
                      lllllllllllllllllllllllllllllllllllllllllllllllllllllll
                    -->
                    <div class="generic-container" ng-controller="UserController as ctrl">
                        <div class="panel panel-default">
                            <div class="panel-heading"><span class="lead">User Registration Form </span></div>
                            <div class="formcontainer">



                                <c:out value="${saludo}"/>





                                <div id="idFormulario" align="center">

                                    <form  id="formBuscar" action="buscarDientex"  method="post" name="formBuscar" >
                                        <table align="center"  class="myform">

                                            <tr align="center">
                                                &nbsp;&nbsp;
                                                <td  style="color:black">
                                                    Periodo <input type="text" class="myinput" id="dato" size="50" name="dato"  value="">

                                                    <input  type="submit"  class="button2" value="Buscar" >&nbsp;
                                                </td>
                                                <td>
                                                    <input  type="button" value="Nuevo" onclick="document.location.href = '/BackendUPeU/formDiente'" class="btn btn-success" >&nbsp;   
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
                                </div> 


                            </div>
                        </div>
                        <div class="panel panel-default">
                            <!-- Default panel contents -->
                            <div class="panel-heading"><span class="lead">List of Users </span></div>
                            <div class="tablecontainer">
                                <c:if test="${!empty ListaDiente}">
                                    <table >
                                        <tr>
                                            <th>Codigo</th>
                                            <th>Nombre</th>
                                            <th>Imagen</th>
                                            <th>TipoDiente</th>
                                            <th>Opciones</th>

                                        </tr>

                                        <c:forEach items="${ListaDiente}" var= "dato">   
                                            <tr>
                                                <td><c:out value="${dato.codigo}"/></td>
                                                <td><c:out value="${dato.nombre}"/></td>
                                                <td><c:out value="${dato.imagen}"/></td>
                                                <td><c:out value="${dato.tipoDiente}"/></td>                                    
                                                <td></td>
                                                <td>
                                                    <a href="eliminarDient?id=${dato.idDientes}">Eliminar</a>&emsp14;
                                                    <a href="modificarDienteX?id=${dato.idDientes}">Modificar</a>
                                                </td>

                                            </tr>
                                        </c:forEach>
                                    </table>

                                    Holasss
                                </c:if>
                            </div>
                        </div>
                    </div>
                    <!-- 
                                             contenido
                        
                        lllllllllllllllllllllllllllllllllllllllllllllllllllllll
                        lllllllllllllllllllllllllllllllllllllllllllllllllllllll
                      lllllllllllllllllllllllllllllllllllllllllllllllllllllll
                      lllllllllllllllllllllllllllllllllllllllllllllllllllllll
                      lllllllllllllllllllllllllllllllllllllllllllllllllllllll
                    -->
                </section>

            </div>
        </div>
        <!-- REQUIRED JS SCRIPTS -->

        <script src="<c:url value='/static/libs/plugins/jQuery/jquery-2.2.3.min.js' />"></script>
        Bootstrap 3.3.7 
        <script src="<c:url value='/static/libs/bootstrap/js/bootstrap.min.js' />"></script>
        AdminLTE App 
        <script src="<c:url value='/static/libs/dist/js/app.min.js' />"></script>
    </body>
</html>