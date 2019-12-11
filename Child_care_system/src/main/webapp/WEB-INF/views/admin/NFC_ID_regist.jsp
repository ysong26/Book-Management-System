<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@include file="../header.jsp"%>				
				
	<br> <center>		
		<h1> NFC_ID 등록  </h1>	
	</center> <br>				

	<div class="container">
	<div class="row">			
	<section class="off-4 col-12-narrower" >										
		
	<form action="/admin/NFC_ID_regist" method="post">
	            
        <table>
            <tr class="NFC_regist" height="30">
                
                <td width="100%"> <h5> NFC아이디 </h5>
                <input type="text" name="NFC_ID" placeholder="NFC_ID" style="text-align:center; width:400px; height:50px;"/></td>
            </tr>						            
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            
            <tr class="NFC_regist" height="30">
            	
            	<td width="100%"> <h5> 아이디 </h5>
                <input type="text" name="User_ID" placeholder="User_ID" style="text-align:center; width:400px; height:50px;"/></td>						                						                
            </tr>						            
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            
            <tr class="NFC_regist" height="30">
                
                <td width="100%"> <h5> 아동이름 </h5>
                <input type="text" name="Child_Name" placeholder="Child_Name" style="text-align:center; width:400px; height:50px;"/></td>
            </tr>						            
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            
            <tr class="NFC_regist" height="30">
                
                <td width="100%"> <h5> 아동성별 </h5>
                	<input type="radio" name="Child_Gender" value="M" /> 남
					<input type="radio" name="Child_Gender" value="F" /> 여						                
            </tr>
            					            
            <tr height="7">
                <td colspan="3"><hr /></td>
            </tr>
            						 
        </table>
        
        <center> 
	        <input type="submit" value="저장">
			<input type="reset" onclick="location.href='/admin/NFC_ID_regist'" value="취소">
			<input type="reset" onclick="location.href='/'" value="메인 화면">
		</center>			
        						        
    </form>					    
    
    </section>
    
    </div>
	</div>
		
			

<%@include file="../footer.jsp"%>