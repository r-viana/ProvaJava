<%-- 
    Document   : emprestar
    Created on : 4 de jan. de 2023, 22:00:21
    Author     : ramon
--%>

<%@page import="br.com.DAO.EmprestimoDAO"%>
<%@page import="br.com.DTO.EmprestimoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            try {
                    
                
            EmprestimoDTO objEmprestimoDTO = new EmprestimoDTO();
            objEmprestimoDTO.setId_livroFK(Integer.parseInt(request.getParameter("codigoLivroEmprestado")));
            objEmprestimoDTO.setId_usuarioFK(Integer.parseInt(request.getParameter("codigoLeitorEmprestado")));
            objEmprestimoDTO.setNome_livro(request.getParameter("nomeLivroEmprestado"));
            
            EmprestimoDAO objEmprestimoDAO = new EmprestimoDAO();
            objEmprestimoDAO.EmprestarLivro(objEmprestimoDTO);
            %>
            <h4>O livro <%=request.getParameter("nomeLivroEmprestado")%> foi emprestado para o leitor <%=request.getParameter("nomeLeitorEmprestado")%></h4>
            <form action="../Livro/home.html"><button type=submit>Voltar ao início</button></form>
            <form action="../Livro/listarLivro.jsp"><button type=submit>Emprestar outro livro</button></form>
        
        <%
            } catch (Exception e) {
                }
            
        %>
    </body>
</html>
