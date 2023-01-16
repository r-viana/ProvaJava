<%-- 
    Document   : listarLeitor
    Created on : 2 de jan. de 2023, 00:32:40
    Author     : ramon
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DTO.LeitorDTO"%>
<%@page import="br.com.DAO.LeitorDAO"%>
<%@page import="br.com.DAO.LeitorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Lista de Leitores Cadastrados</h3>
        <form action="../Livro/home.html"><button type=submit>Voltar ao início</button></form>
        <form action="LeitorView.html"><button type=submit>Cadastrar Novo Leitor</button></form>
        <%
            try {
            
            LeitorDAO objLeitorDAO = new LeitorDAO();            
            ArrayList<LeitorDTO> lista = objLeitorDAO.PesquisarLeitor();
            
            for(int num = 0; num < lista.size(); num++){
            
            String id = Integer.toString(lista.get(num).getId_usuario());
            String nome = lista.get(num).getNome_usuario();
            
            out.print("Código: "+ lista.get(num).getId_usuario()+ "<br>");
            out.print("Nome: "+ lista.get(num).getNome_usuario()+ "<br>");
            
                        
            out.print("<a href='excluirLeitorFrm.jsp?id="+id+ "&nome=" 
            +nome+ "'> Excluir </a><br>");
            //alterar
            out.print("<a href='alterarLeitorFrm.jsp?id="+id+ "&nome=" 
            +nome+ "'> Alterar </a><br>");
            
            out.print("<a href='livrosEmprestados.jsp?id="+id+ "&nome=" 
            +nome+ "'> Livros Emprestados </a><br><br>");
            
            
            }%>
            <br><br>
            <%
            }
catch (Exception e) {
                }
        
%>
    </body>
</html>
