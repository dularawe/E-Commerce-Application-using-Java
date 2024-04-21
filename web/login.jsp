<%-- 
    Document   : login
    Created on : Mar 27, 2024, 8:15:10 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login_Page</title>
        <style>
            * {
            box-sizing: border-box;
          }
         body{
             background-color: white;
         }
        .container{
            background-color: #ffffcc;
            width:1000px;
            height: 600px ;
            margin-top: 80px;
            margin-left: 250px;
            position: static;
            border:none;
            border-radius: 30px;
   
            }
        .column_1{
           float: left;
           width: 50%;
           height: 600px;
           border-radius: 30px;
            
            }
            
        .column_2{
           float: right;
           width: 50%;
           height: 600px; 
           border-radius: 30px;
            }
        .row_1 h2{
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            padding-top:  10px;
            color: black;
           
            } 
        .row_1{
            background-color:  #ffffcc;
            margin-top:  80px;
            height: 50px;
               
                
            }    
        .row_2{
                background-color:lightyellow;
                width: 75%;
                height: 50px;
                border-radius: 10px;
                boder: 3px;
                border-color: darkcyan;
                margin-top: 20px;
                display: flex;
                align-items: center;
                font-family: Arial, Helvetica, sans-serif;
            }    
            .row_3{
                background-color:red;
                width: 75%;
                height: 50px;
                border-radius: 10px;
                margin-top: 20px;
                display: flex;
                align-items: center;
                font-family: Arial, Helvetica, sans-serif;
            }  
            
             
            .row_col{
              margin-left: 100px; 
            }
            
            .row_2 input{
                outline: none;
                width: 100%;
                font-size: 15px;
                background: none;
                border: none;
                font-family: Arial, Helvetica, sans-serif;
                color: #39393d;
            }
            
            .row_3 input{
                outline: none;
                width: 100%;
                font-size: 15px;
                background: none;
                border: none;
                font-family: Arial, Helvetica, sans-serif; 
                color: black;
                
            }
            .or{
                font-family: Arial, Helvetica, sans-serif;
                margin-top: 10px;
                font-size: 12px;
                color: #39393d;
            
        </style>
    </head>
    <body>
        <div class="container"> 
          
         <div class="row">
              <div class="column_1" style="background-color:#ffffcc">
                   <form>
                  <div class="row_1">
                      <h2>L O G I N</h2>
                           
                  </div>
                  
                      <div class="row_col">
                          
                          <div class="or">
                          If You Are Already A Member,Easily Log In
                          </div>
                          
                          <div class="row_2">
                            
                              <input type="email" placeholder="Email" name="mail" value="" >                             
                        
                          </div>
                          
                          <div class="row_2">
                           
                              <input type="password" placeholder="Password" name="psw" value="" >
                         
                          </div>
                          
                          <div class="row_3">
                            
                              <input type="submit" value="Login" name="" >
                         
                           </div>
                          
                          <div class="or">
                             If You Are Not A Member,Easily Sign up
                          </div>
                          
                          <div class="row_3">
                            
                              <input type="submit" value="Sign-Up" name="Cr" >
                         
                           </div>
                      </div>
                      
                   </form>  
                  
              </div>
             <div class="column_2" style="background-color:#cccccc;">
                 
    
              </div>
         </div> 
               

               
          
           
             
        
        </div>
    </body>
</html>
