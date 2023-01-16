<%-- 
    Document   : alterarLeitor
    Created on : 2 de jan. de 2023, 15:30:47
    Author     : ramon
--%>

<%@page import="br.com.DAO.LeitorDAO"%>
<%@page import="br.com.DTO.LeitorDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            LeitorDTO objLeitorDTO = new LeitorDTO();
            objLeitorDTO.setId_usuario(Integer.parseInt(request.getParameter("id")));
            objLeitorDTO.setNome_usuario(request.getParameter("nome"));
            
            LeitorDAO objLeitorDAO = new LeitorDAO();
            objLeitorDAO.AlterarLeitor(objLeitorDTO);
                    
        %>
    </body>
</html>
