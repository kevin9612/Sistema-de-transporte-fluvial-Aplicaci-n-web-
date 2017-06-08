<%-- 
    Document   : fluvialdisjsp
    Created on : 21/11/2016, 12:21:18 PM
    Author     : kevin
--%>

<%@page import="java.util.Date"%>
<%-- 
    Document   : SolicitarFluvial
    Created on : 17/10/2016, 06:19:57 PM
    Author     : JuanDiego
--%>


<%@page import="java.util.List"%>
<%@page import="stf.entities.Ruta"%>
<%@page import="stf.sessionBeans.RutaFacade"%>
<% RutaFacade rut = new RutaFacade();
   List<Ruta> rutas= rut.consultarRutas();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STF - Actualizar Embarcación</title>
        <link data-require="bootstrap-css@3.3.6" data-semver="3.3.6" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.css" />


        <script data-require="jquery@2.2.0" data-semver="1.11.3" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
        <script data-require="bootstrap.js@3.3.6" data-semver="3.3.6" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <link data-require="bootstrap-css@3.3.6" data-semver="3.3.6" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.css" />
        <link data-require="font-awesome@4.5.0" data-semver="4.5.0" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.css" />
        <link rel="stylesheet" href="stylesheedadmincss.css" />
        
     
        <script src="script-solicitar.js"></script>

        <script type="text/javascript">
            function submitCab()
            {
                document.forms["formCab"].submit();
            }
            function submitCargo()
            {
                document.forms["formCargo"].submit();
            }
            function submitPass()
            {
                document.forms["formPass"].submit();
            }

        </script>
        
    </head>
    <body>     


        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
        <link href='http://www.cssscript.com/demo/pure-css-switches-for-checkbox-and-radio-inputs/dist/rb-switcher.min.css' rel='stylesheet' type='text/css'>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script> 
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

        <!-- Static navbar -->
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" href="actualizar.jsp"><b>STF</b></a>

                </div>


                <div id="navBar" class="navbar-collapse collapse">

                   <ul class="nav navbar-nav">
                                     
            <li class="active">
              <a href="homeadmin.jsp">Home</a>
            </li>
            
             <li>
              <a href="prueba-mapa.jsp">Mapa</a>
            </li>
                         
            <li>
              <a href="consultasensores.jsp">Sensores</a>
            </li>
            <li>
              <a href="consultarutas.jsp">Ruta</a>
            </li>
        
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                Consulta Embarcaciones
                <span class="caret"></span>
              </a>
              <ul class="dropdown-menu">
                <li>
                 <form id="formCab" action="fluvialdis.jsp" method="POST">
                        <input type="hidden" id="fluvial" name ="fluvial" value="2">
                            <a style="color: black" href="javascript: submitCab()">
                        Consultar Fluvial Cab</a>
                       
                 </form>
                </li>
                 <li>
                 <form id="formCargo" action="fluvialdis.jsp" method="POST">
                        <input type="hidden" id="fluvial" name ="fluvial" value="1">
                            <a style="color: black" href="javascript: submitCargo()">
                                Consultar Fluvial Cargo</a>
                </form>
                </li>
                <li>
                 <form id="formPass" action="fluvialdis.jsp" method="POST">
                     <input type="hidden" id="fluvial" name ="fluvial" value="3">
                        <a style="color: black" href="javascript: submitPass()">
                        Consultar Fluvial Passenger</a>
                       
                 </form>
                </li>
               
              </ul>
            </li>

      
          </ul>
                        </li>


                    </ul>

                    <ul class="nav navbar-nav navbar-right">

                        <li class="active dropdown">
                            <a href="index.jsp" >
                                Cerrar Sesion
                                <i class="fa fa-border fa-user"></i>
                            </a>

                        </li>

                    </ul>

                </div>
                <!--/.nav-collapse -->
            </div>
            <!--/.container-fluid -->
        </nav>


        <div class="container">
            <br />

            <div class="container">

                <div class="row">
                    <div class="col-md-6 col-md-offset-3">

                        <div class ="login-group" style="color: white;">
                            <div class=" panel-login">

                                <hr />

                                 
                     
                                <div class="row">
                                    <div class="col-lg-12">
                                        <form class = "formularioRegistro" name ="solicitudForm" id="register-form" action="RequestServlet" method="post" role="form" style="display: block;">
                                            <h3 style="font-size: 30px"> Consultar Fluvial</h3>
                                            <div class="form-group">
                                                <label style="font-size: 20px" for = "Salida" class="control-label">Disponibilidad</label>

                                                 <tbody>
        
                                                <table >
        
                                                  <tr style="text-align: center">
                                                    <th>  id  </th>
                                                   <th>  trayecto </th>
                                                   <th>  tiempo   </th>
                                                   <th> hora salida  </th>
                                                   <th>  hora llegada  </th>
                                                   <th>  transporte  </th>
                                                   </tr>
                                            
            <%
                                     
                        for(int i=0; i< rutas.size(); i++){
               
                        Ruta r = rutas.get(i);
                        int id = r.getIdruta();
                        String trayecto = r.getTrayecto();
                        String tiempo =r.getTiempoInvertido();
                        Date horasalida = r.getHorasIdhora().getHoraSalida();
                        Date horallegada = r.getHorasIdhora().getHoraLlegada();
                        String transporte = "";
                        
                        
                        if(r.getTransportesIdtransporte().getCabsIdcab()!=null){
                        
                          transporte= "cab";
                        
                        }
                        
                        if(r.getTransportesIdtransporte().getCargosIdcargo()!=null){
                        
                          transporte= "cargos";
                        
                        }
                        
                         if(r.getTransportesIdtransporte().getPassengersIdpassengers()!=null){
                        
                          transporte= "passenger";
                        
                        }
                        
                        
                    %>
          
                
        <tr style="text-align: center">
            <td> <%= id %> </td>
       
                  <td> <%=trayecto %></td>
                 <td> <%= tiempo%></td>                 
                <td>  <%= horasalida %></td>
                 <td> <%= horallegada %></td>
                 <td> <%= transporte  %></td>
                         
        </tr>
    
                 
                   <%
                    }

                    
                   %>
                   </table>
               </tbody>
                                        
                                                 
                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">

                    </html>