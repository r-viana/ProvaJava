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
        <div style="background-color: darkcyan; font-size: 3ch; font-family: Verdana, Geneva, Tahoma, sans-serif;">

        <%
            try {
                    
                
            LivroDTO objLivroDTO = new LivroDTO();
            objLivroDTO.setNome_livro(request.getParameter("nome"));
            LivroDAO objLivroDAO = new LivroDAO();
            objLivroDAO.CadastrarLivro(objLivroDTO);
            %>
            <h3>Livro incluso na Base de Dados!</h3>
            <h4>O que você deseja fazer?</h4>
            
            <pre>
            <form action="home.html"><button type=submit> Inicio</button></form><form action="LivroView.html"><button type=submit>Cadastrar Novo Livro</button></form>
            </pre>
            <%
        } catch (Exception e) {
                }
        
        %>
        </div>
    </body>
</html>
