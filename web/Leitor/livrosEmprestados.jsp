<%-- 
    Document   : livrosEmprestados
    Created on : 4 de jan. de 2023, 22:31:56
    Author     : ramon
--%>

<%@page import="java.util.ArrayList"%>
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
            try {
            
            LivroDAO objLivroDAO = new LivroDAO();   
            String sql = "select livro.nome_livro from livro inner join emprestimo on livro.id_livro = emprestimo.id_livro where emprestimo.id_usuario ="+request.getParameter("id");

            ArrayList<LivroDTO> lista = objLivroDAO.PesquisarLivroEmprestado(sql);
            
            if (lista.size()>0) {
            for(int num = 0; num < lista.size(); num++){
            
            
                    
                
            
            //String id = Integer.toString(lista.get(num).get());
            String nomeLivro = lista.get(num).getNome_livro();
            String idLivro = Integer.toString(lista.get(num).getIdLivro());
            
            String urlExcluir = "excluirLivroFrm.jsp?id="+idLivro+"&nome="+nomeLivro;
            String urlAlterar = "alterarLivroFrm.jsp?id="+idLivro+"&nome="+nomeLivro;
            
            
            out.print("Nome do Livro:  "  + lista.get(num).getNome_livro()+ "<br>");
            }} else {%>
            <h3>Não foram emprestados livros para esta pessoa ainda.</h3>
            <h4>O que deseja fazer?</h4>
            <form action="../Livro/home.html"><button type=submit>Voltar ao início</button></form>
            <form action="../Livro/listarLivro.jsp"><button type=submit>Selecionar algum livro</button></form>
            <%
            }}           
            
catch (Exception e) {
                }
        
%>
    </body>
</html>
