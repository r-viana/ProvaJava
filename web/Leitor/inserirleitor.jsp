<%-- 
    Document   : inserirLivro
    Created on : 28 de dez. de 2022, 11:01:47
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
            try {
                    
                
            LeitorDTO objLeitorDTO = new LeitorDTO();
            objLeitorDTO.setNome_usuario(request.getParameter("nome"));
            
            LeitorDAO objLeitorDAO = new LeitorDAO();
            objLeitorDAO.CadastrarLeitor (objLeitorDTO);
            
        %>
        <h3>Leitor incluso na Base de Dados!</h3>
            <h4>O que você deseja fazer?</h4>
            
            <pre>
            <form action="home.html"><button type=submit> Inicio</button></form><form action="LeitorView.html"><button type=submit>Cadastrar Novo Leitor</button></form>
            <form action="listarLeitor.jsp"><button type=submit>Listar Leitores</button></form>
            </pre> <%
            } catch (Exception e) {
                }%>
    </body>
</html>
