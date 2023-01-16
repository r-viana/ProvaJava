<%-- 
    Document   : alterarLivro
    Created on : 28 de dez. de 2022, 18:17:18
    Author     : ramon
--%>

<%@page import="br.com.DAO.LivroDAO"%>
<%@page import="br.com.DTO.LivroDTO"%>
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
            objLivroDTO.setNome_livro(request.getParameter("nome"));
            
            LivroDAO objLivroDAO = new LivroDAO();
            objLivroDAO.AlterarLivro(objLivroDTO);
                    
        %>


    </body>
</html>
