package com.universal;
import java.io.File;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;

public class Universal extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String profile,coursename,name,dob,tel,address,city,state,email;

		public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        try {
	          
	            profile=request.getParameter("img");
	            
	            coursename=request.getParameter("coursename");
	            
	            name=request.getParameter("name");
	            name=name.toUpperCase();
	            
	            dob=request.getParameter("dob");
	            dob=dob.toUpperCase();
	            
	            tel=request.getParameter("tel");
	            
	            address=request.getParameter("address");
	            
	            city=request.getParameter("city");
	            
	            state=request.getParameter("state");
	            
	            email=request.getParameter("email");
	            
	            String data="course_name: "+coursename+"\n"+"name: "+name+"\n"+"dob: "+dob+"\n"+"contact_no: "+tel+"\n"+"address: "+address+"\n"+"city: "+city+"\n"+"state: "+state+"\n"+"email: "+email;
	            String filepath="C:\\Users\\darshan\\eclipse-workspace\\Idcardgenerator\\src\\main\\webapp\\qrcodes\\"+email+".png";
	            String charset="UTF-8";
	            BitMatrix matrix=new MultiFormatWriter().encode(
	            		new String(data.getBytes(charset),charset),
	            		BarcodeFormat.QR_CODE,200,200);
	            MatrixToImageWriter.writeToFile(matrix, filepath.substring(filepath.lastIndexOf('.')+1), new File(filepath));
	          
	            
		 			            
	            request.setAttribute("profile",profile);           
	            request.setAttribute("studentname",name);           
	            request.setAttribute("coursename",coursename);           
	            request.setAttribute("dateofbirth",dob);           
	            request.setAttribute("address",address);           
	            request.setAttribute("city",city);           
	            request.setAttribute("state",state);           
	            request.setAttribute("emailid",email);           
	            request.setAttribute("contactno",tel);    
	            RequestDispatcher rq=request.getRequestDispatcher("Db.jsp");
	            rq.forward(request, response);


	        } catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        finally {}
	    }


}
