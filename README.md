
# IDCARD GENERATOR

    This project is based on servlet in this project the admin fills the data of the student 
    through the simple html form, when the data is filled by the admin  and as the admin hits
    the generate id card button. That means the admin is request to  the server for the idcard.
    As the button is clicked the request goes to the server and server calls the  respected 
    servlet to take the information from the html form and process the information at the run
    time and give the response in return, but as the server has many  servlet file so how the 
    server knows that which servlet is to be called, here the  deployment descriptor comes in 
    the role.  
    
    When the admin request idcard from the server the server goes and check the  web.xml file 
    i:e deployment descriptor in this file the url-mapping is done in through  which the server
    knows that in this request this servlet should be called. After this the servlet fetches the 
    information from the html form through  HttpServletRequest object and processes the information
    and forward that  information to the JSP(Java Server Page) with the help of RequestDispatcher. 
    Inside this JSP the database stuff connection and insert code is written after the  database 
    stuff executes the admin gets the Idcard with QRCode in response in the  html format through 
    out object. 
    
    If the respected teachers scan the QRCode of the student the it will show the  details of 
    that student through this we can recognize that the idcard is fake or genuine.
  
## Features

- QRCODE
- SOFTCOPY IDCARD


  
## Software Requirements
- Eclipse IDE enterprise version.
- JDK 15 or higher version.

  
## Concept used

- servlets
- java with jdbc
- Sql queries
- JSP Java Server Page

## Libraries Required

- mysql jdbc connector
- Zxing
- Zxing-j2se-1.7
- Zxing-core-1.7
- qrgen


  
