<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@include file="../header.jsp"%>
				
				
<!-- Footer -->
<div id="footer">
	<div class="container">
		<div class="row">
			
			
		<section class="off-4 col-12-narrower" >


			<h3> NFC ID 등록 </h3> <br>							
			
			<form action="/admin/NFC_ID_regist" method="post">
				<table> </table>  
		            
		        <table>
		            <tr class="NFC_regist" height="30">
		                <td align="center"> <h5> 1. &nbsp;&nbsp; </h5></td>
		                <td width="50%"> <h5> NFC_ID </h5>
		                <input type="text" name="NFC_ID" placeholder="NFC_ID" style="text-align:center; width:400px; height:50px;"/></td>
		            </tr>						            
		            <tr height="7">
		                <td colspan="3"><hr /></td>
		            </tr>
		            
		            <tr class="NFC_regist" height="30">
		            	<td align="center"> <h5> 2. &nbsp;&nbsp; </h5></td>
		            	<td width="50%"> <h5> User_ID </h5>
		                <input type="text" name="User_ID" placeholder="User_ID" style="text-align:center; width:400px; height:50px;"/></td>						                						                
		            </tr>						            
		            <tr height="7">
		                <td colspan="3"><hr /></td>
		            </tr>
		            
		            <tr class="NFC_regist" height="30">
		                <td align="center"> <h5> 3. &nbsp;&nbsp; </h5></td>
		                <td width="50%"> <h5> Child_Name </h5>
		                <input type="text" name="Child_Name" placeholder="Child_Name" style="text-align:center; width:400px; height:50px;"/></td>
		            </tr>						            
		            <tr height="7">
		                <td colspan="3"><hr /></td>
		            </tr>
		            
		            <tr class="NFC_regist" height="30">
		                <td align="center"> <h5> 4. &nbsp;&nbsp; </h5></td>
		                <td width="50%"> <h5> Child_Gender </h5>
		                	<input type="radio" name="Child_Gender" value="M" /> 남
										<input type="radio" name="Child_Gender" value="F" /> 여						                
		            </tr>						            
		            <tr height="7">
		                <td colspan="3"><hr /></td>
		            </tr>
		            						 
		        </table>
		        
		        <input type="submit" value="저장">
				<input type="reset" onclick="location.href='/admin/NFC_ID_regist'" value="취소">			
		        						        
		    </form>					    
	    
	    </section>
	    
	    </div>
	</div>
</div>			
			

<%@include file="../footer.jsp"%>