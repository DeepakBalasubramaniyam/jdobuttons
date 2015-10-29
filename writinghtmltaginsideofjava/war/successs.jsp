<%@page import="com.example.myproject.Example"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="javascript.js"></script>
	<link href="special.css" rel="stylesheet" type="text/css">

<title>successs</title>
<style>
.greycolor {
	background-color: lightgrey;
}
#table1{
width:150px;
}
#table2{
position: absolute;
top:0px;
left:150px;
}

</style>

</head>
<body>

	<table class="table table-bordered" id="table1">
	<thead class="greycolor">


				<tr>
					<th><div>IMAGE</div></th>
					
					

				</tr>

			</thead>
			<tbody>
	<%
    
     // The attribute name we are getting is object so we are giving the name of the object.
	 Object image=request.getAttribute("image");
	//we are creating an arraylist
	         ArrayList al = new ArrayList();
	         
	//here we are converting the object to arraylist
                al = (ArrayList) image;
                
             //here we are retrieving the arraylist one by one
             for(Object firstimage:al){%>
            	 
            	 <tr> 
            	
            	<td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBJtSDarQv3pKmr3KUsbIrh2g2vXWuisUvQVl56OpIsKQeRJloAw"
						 width="12" height="12" /> <%= firstimage %></td>
						 
            	 </tr>
            	 

            	 
            <% }
            
            
            %>
            <tr class="greycolor"><td></td></tr>
                   
            
            </tbody>
             </table>
                                 
       
    </body>
	


</html>
