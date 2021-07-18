<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% 
	String profile = (String)request.getAttribute("profile");
	String studentname = (String)request.getAttribute("studentname");
	String coursename = (String)request.getAttribute("coursename");
	String dateofbirth = (String)request.getAttribute("dateofbirth");
	String address = (String)request.getAttribute("address");
	String city = (String)request.getAttribute("city");
	String state = (String)request.getAttribute("state");
	String emailid = (String)request.getAttribute("emailid");
	String contactno = (String)request.getAttribute("contactno");
	%>
	
	<%
			    // database connection
			 	Connection con;
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost/universal","root","root");
				//variables for storing coursename.
				String comp1="Computer Engineering(1Y)";
				String comp2="Computer Engineering(2Y)";
				String comp3="Computer Engineering(3Y)";
				String comp4="Computer Engineering(4Y)";

				String civil1="Civil Engineering(1Y)";
				String civil2="Civil Engineering(2Y)";
				String civil3="Civil Engineering(3Y)";
				String civil4="Civil Engineering(4Y)";

				String info1="Information Technology(1Y)";
				String info2="Information Technology(2Y)";
				String info3="Information Technology(3Y)";
				String info4="Information Technology(4Y)";

				String mechanical1="Mechanical Engineering(1Y)";
				String mechanical2="Mechanical Engineering(2Y)";
				String mechanical3="Mechanical Engineering(3Y)";
				String mechanical4="Mechanical Engineering(4Y)";

				
				//comparing string and storing as per coursename
				if(coursename.equals(comp1)){
					String query="insert into computer1y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}
				else if(coursename.equals(comp2)){
					String query="insert into computer2y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}
				else if(coursename.equals(comp3)){
					String query="insert into computer3y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}
				else if(coursename.equals(comp4)){
					String query="insert into computer4y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}
				else if(coursename.equals(civil1)){
					String query="insert into civil1y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}
				else if(coursename.equals(civil2)){
					String query="insert into civil2y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}else if(coursename.equals(civil3)){
					String query="insert into civil3y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}else if(coursename.equals(civil4)){
					String query="insert into civil4y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}
				else if(coursename.equals(info1)){
					String query="insert into it1y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}
				else if(coursename.equals(info2)){
					String query="insert into it2y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}else if(coursename.equals(info3)){
					String query="insert into it3y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}else if(coursename.equals(info4)){
					String query="insert into it4y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}
				else if (coursename.equals(mechanical1)){
					String query="insert into mechanical1y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}
				else if (coursename.equals(mechanical2)){
					String query="insert into mechanical2y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}
				else if (coursename.equals(mechanical3)){
					String query="insert into mechanical3y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}
				else if (coursename.equals(mechanical4)){
					String query="insert into mechanical4y (profile,studentname,coursename,dateofbirth,address,city,state,emailid,contact) values ('"+profile+"','"+studentname+"','"+coursename+"','"+dateofbirth+"','"+address+"','"+city+"','"+state+"','"+emailid+"','"+contactno+"')";
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
				}
				
				else {
					out.print("Invalid choice");
				} 
			%>
		
	           <% 
	       		String url="idcard.png";

		        out.println("<html>");
		        
	           	out.println("<body class='body'>");
		        out.println("<style>.body{background-image:url("+url+"); background-repeat:no-repeat; background-position:center; background-size: 350px 500px;}</style>");
		        
		        out.println("<img src="+profile+" class='image' accept='image/*' alt='error'>");
		        out.println("<style>.image{width:80px; height:100px; margin-top:132px; margin-left:630px};</style>");
		        
		        out.println("<p class='cname'>"+coursename+"</p>");
		        out.println("<style>.cname{font-weight:bold; margin-top:10px; text-align:center; color:red };</style>"); 
		        
		        out.println("<p class='name'>"+studentname+"</p>");
		        out.println("<style>.name{font-weight:bold; font-size:small; margin-top:-9px; margin-left:579px};</style>");    
		           
		        out.println("<p class='dob'>"+dateofbirth+"</p>");
		        out.println("<style>.dob{font-weight:bold; font-size:small; margin-top:12px; margin-left:579px};</style>");
		            
				out.println("<p class='addr'>"+address+"</p>");
	            out.println("<style>.addr{font-weight:bold; font-size:small; margin-top:13px; margin-left:579px};</style>");
	            

	            out.println("<p class='city'>"+city+"</p>");
	         	out.println("<style>.city{font-weight:bold; font-size:small; margin-top:5px; margin-left:579px};</style>");

	          	out.println("<p class='state'>"+state+"</p>");
	            out.println("<style>.state{font-weight:bold; font-size:small; margin-top:5px; margin-left:579px};</style>");
	            
	          	out.println("<p class='tel'>"+contactno+"</p>");
	            out.println("<style>.tel{font-weight:bold; font-size:small; margin-top:43px; margin-left:595px};</style>");
	            
	            out.println("<p class='email'>"+emailid+"</p>");
	            out.println("<style>.email{font-weight:bold; font-size:small; margin-top:-1px; margin-left:575px; color:red};</style>");
	            
		        out.println("<img src="+"qrcodes//"+emailid+".png class='qr' accept='image/*' alt='error'>");
	            out.println("<style>.qr{width:100px;height:100px; margin-top:-35px; margin-left:747px;};</style>");

	            out.println("</body>");
	            out.println("</html>");
	
	           %>