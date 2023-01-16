<%-- 
    Document   : listarLivro
    Created on : 28 de dez. de 2022, 12:23:28
    Author     : ramon
--%>

<%@page import="br.com.DTO.LivroDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.LivroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Lista de Livros Cadastrados</h3>
        <form action="../Livro/home.html"><button type=submit>Voltar ao início</button></form>
        <form action="LivroView.html"><button type=submit>Cadastrar Novo Livro</button></form><br>
        <hr>

        <%
            try {
            
            LivroDAO objLivroDAO = new LivroDAO();            
            ArrayList<LivroDTO> lista = objLivroDAO.PesquisarLivro();
            
            for(int num = 0; num < lista.size(); num++){
            
            //String id = Integer.toString(lista.get(num).get());
            String nomeLivro = lista.get(num).getNome_livro();
            String idLivro = Integer.toString(lista.get(num).getIdLivro());
            
            String urlExcluir = "excluirLivroFrm.jsp?id="+idLivro+"&nome="+nomeLivro;
            String urlAlterar = "alterarLivroFrm.jsp?id="+idLivro+"&nome="+nomeLivro;
            
            
            //out.print("Código do Livro:"    + lista.get(num).getIdLivro()+ "<br>");
            out.print("Nome do Livro:"  + lista.get(num).getNome_livro()+ "<br>");
            
            out.print("<a href='excluirLivroFrm.jsp?id="+idLivro+ "&nome=" 
            +nomeLivro+ "'> Excluir </a><br>");
            //alterar
            out.print("<a href='alterarLivroFrm.jsp?id="+idLivro+ "&nome=" 
            +nomeLivro+ "'> Alterar </a><br>");

            out.print("<a href='cadastrarEmprestimoLeitor.jsp?idDoLivro="+idLivro+ "&nomeDoLivro=" 
            +nomeLivro+ "'> Emprestar </a><br><br>");

            
            
            
            }%>
            <br><hr><br>
            <%
            }
catch (Exception e) {
                }
        
%>

    </body>
</html>
