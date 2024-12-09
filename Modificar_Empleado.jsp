<%-- 
    Document   : Modificar_Empleado
    Created on : 28/11/2024, 08:59:20 AM
    Author     : domin
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Cesar´s Burger</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free Website Template" name="keywords">
    <meta content="Free Website Template" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.min.css" rel="stylesheet">
</head>

<body>
   <!-- Navbar Start -->
    <div class="container-fluid p-0 nav-bar">
        <nav class="navbar navbar-expand-lg bg-none navbar-dark py-3">
            <a href="index.html" class="navbar-brand px-lg-4 m-0">
                <h2 class="text-white m-0">Cesar´s Burguer</h2>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav ml-auto p-4">
                    <a href="index.html" class="nav-item nav-link">Conócenos</a>
                    <a href="service.html" class="nav-item nav-link">Servicios</a>
                    <a href="menu.html" class="nav-item nav-link">Menú</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Atención al Cliente<a>
                        <div class="dropdown-menu text-capitalize">
                            <a href="reservar.jsp" class="dropdown-item">Reservación</a>
                            <a href="testimonial.html" class="dropdown-item">Pedidos</a>
                        </div>
                    </div>
                    <a href="contact.html" class="nav-item nav-link">Contáctanos</a>
                     <a href="Inicio_de_sesion.jsp" class="nav-item nav-link active">Administración</a>
                </div>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->
      <!-- Page Header Start -->
    <div class="container-fluid page-header mb-5 position-relative overlay-bottom">
        <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
            <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">Administrador</h1>
        </div>
    </div>
    <!-- Page Header End -->
        <h2 align="center"> Modificar Empleado </h2>
        <%
            String clv=request.getParameter("cod");
            Connection con=null;
            Statement stm=null;
            ResultSet res=null;
               try
               {
                 Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection
                ("jdbc:mysql://localhost/bd_hamburguesas?user=root&password=");
                
                stm=con.createStatement();
                res=stm.executeQuery("select * from t_empleados where Clv_Empl='"+clv+"' ");
                
          while(res.next())
          {
          %>
         <form align="center">
    	 <table border="2" align=center>
			<tr>
				<td colspan="3" align=center bgcolor=lightsalmon> Empleados </td>
			</tr>
			<tr>
				<td>NO.
				</td>
				<td>CAMPO
				</td>
				<td>INFORMACION
				</td>
			</tr>
			<tr>
				<td>1
				</td>
				<td> Clave:
        			</td>
				<td>
                        		<input type= "number" name= "Clv_Empl" value="<%=res.getString(1)%>" min="0" max="100">
				</td>
			</tr>
			<tr>
				<td>2
				</td>
				<td> Nombre:
				</td>
				<td>
					<input type = "text" name = "Emp_Nomb" value="<%=res.getString(2)%>">
				</td>
			</tr>
			<tr>
				<td>3
				</td>
				<td> Apellido Paterno:
				</td>
				<td>
					<input type= "text" name= "Emp_Appa" value="<%=res.getString(3)%>">
				</td>
			</tr>
			<tr>
				<td>4
				</td>
				<td> Apellido Materno:
				</td>
				<td>
        				<input type = "text" name ="Emp_Amma" value="<%=res.getString(4)%>">
				</td>
			</tr>
			<tr>
				<td>5
				</td>
				<td> Teléfono:
				</td>
				<td>
					<input type = "text" name = "Emp_Tele" value="<%=res.getString(5)%>">	
				</td>
			</tr>
			<tr>
				<td>6
				</td>
				<td> Correo:
				</td>
				<td>
					<input type= "email" name= "Emp_Corr" value="<%=res.getString(6)%>">
				</td>
			</tr>	
                        <tr>
				<td>7
				</td>
				<td> Puesto:
        			</td>
				<td>
                        		<input type= "text" name= "Emp_Pues" value="<%=res.getString(7)%>">
				</td>
			</tr>
			<tr>
				<td>8
				</td>
				<td> Hora de Entrada:
				</td>
				<td>
					<input type = "time" name = "Emp_Hore" value="<%=res.getString(8)%>">
				</td>
			</tr>
			<tr>
				<td>9
				</td>
				<td> Hora de Salida:
				</td>
				<td>
					<input type= "time" name= "Emp_Hors" value="<%=res.getString(9)%>">
				</td>
			</tr>
			<tr>
				<td>10
				</td>
				<td> Dirección:
				</td>
				<td>
        				<input type = "text" name = "Emp_Dire" value="<%=res.getString(10)%>">
				</td>
			</tr>
			<tr>
				<td>11
				</td>
				<td> Sueldo:
				</td>
				<td>
					<input type = "float" name = "Emp_Suel" value="<%=res.getString(11)%>" >	
				</td>
			</tr>
			<tr>
				<td>
					<input type= "submit" name= "btnModificar" value="Modificar">
				</td>
			</tr>
		</table>
    	 		  	  	  	   </form>
            
    <% 
        }
}
catch(Exception e)
{
   }
if (request.getParameter("btnModificar")!=null)
 {
              int cod=Integer.parseInt(request.getParameter("Clv_Empl"));
              String nomb=request.getParameter("Emp_Nomb");
              String appa=request.getParameter("Emp_Appa");
              String amma=request.getParameter("Emp_Amma");
              String tele=request.getParameter("Emp_Tele");
              String corr=request.getParameter("Emp_Corr");
              String pues=request.getParameter("Emp_Pues");
              String hore=request.getParameter("Emp_Hore");
              String hors=request.getParameter("Emp_Hors");
              String dire=request.getParameter("Emp_Dire");
              double suel=Double.parseDouble(request.getParameter("Emp_Suel"));

stm.executeUpdate("update t_empleados set Emp_Nomb='"+nomb+"', Emp_Appa='"+appa+"', Emp_Amma='"+amma+"', Emp_Tele='"+tele+"', Emp_Corr='"+corr+"', Emp_Pues='"+pues+"', Emp_Hore='"+hore+"', Emp_Hors='"+hors+"', Emp_Dire='"+dire+"', Emp_Suel="+suel+" where Clv_Empl="+cod+" ");
 request.getRequestDispatcher("Empleados.jsp").forward(request, response);
}
%>
    <!-- Footer Start -->
    <div class="container-fluid footer text-white mt-5 pt-5 px-0 position-relative overlay-top">
        <div class="row mx-0 pt-5 px-sm-3 px-lg-5 mt-4">
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-white text-uppercase mb-4" style="letter-spacing: 3px;">Más Información</h4>
                <p><i class="fa fa-map-marker-alt mr-2"></i>Av. Insurgentes Ote. 11, Centro, 42300 Ixmiquilpan, Hgo.</p>
                <p><i class="fa fa-phone-alt mr-2"></i> 759-723-4777 </p>
                <p class="m-0"><i class="fa fa-envelope mr-2"></i>772-133-0753</p>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-white text-uppercase mb-4" style="letter-spacing: 3px;">Siguenos</h4>
                <p>Buscanos en nuestras redes sociales</p>
                <div class="d-flex justify-content-start">
                    <a class="btn btn-lg btn-outline-light btn-lg-square mr-2" href="https://www.facebook.com/profile.php?id=100040846044153&mibextid=ZbWKwL"><i class="fab fa-facebook-f"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h4 class="text-white text-uppercase mb-4" style="letter-spacing: 3px;">Horario</h4>
                <div>
                    <h6 class="text-white text-uppercase">Martes-Viernes</h6>
                    <p>4.00 PM - 10.00 PM</p>
                    <h6 class="text-white text-uppercase">Sabado-Domingo</h6>
                    <p>3.00 PM - 10.00 PM</p>
                </div>
            </div>
        </div>
        <div class="container-fluid text-center text-white border-top mt-4 py-4 px-sm-3 px-md-5" style="border-color: rgba(256, 256, 256, .1) !important;">
            <p class="mb-2 text-white">Copyright &copy; <a class="font-weight-bold" href="#">Cesar´s Burguer</a></p>
            <p class="m-0 text-white">Creado por <a class="font-weight-bold" href="https://htmlcodex.com">Cecyteh</a></p>
        </div>
    </div>
    <!-- Footer End -->



    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>