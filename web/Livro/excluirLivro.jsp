<%-- 
    Document   : excluirLivro
    Created on : 28 de dez. de 2022, 14:50:56
    Author     : ramon
--%>

<%@page import="br.com.DTO.LivroDTO"%>
<%@page import="br.com.DAO.LivroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            LivroDTO objLivroDTO = new LivroDTO();
            objLivroDTO.setIdLivro(Integer.parseInt(request.getParameter("id")));
            
            LivroDAO objLivroDAO = new LivroDAO();
            objLivroDAO.ExcluirLivro(objLivroDTO);
                    
        %>
        
    </body>
    
        


    
</html>
