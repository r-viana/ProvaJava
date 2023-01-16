<%-- 
    Document   : alterarLivroFrm
    Created on : 28 de dez. de 2022, 18:15:03
    Author     : ramon
--%>

<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="alterarLivro.jsp" method="post">
            <label>Código do Livro:</label><br>
            <input type="text" name="id" readonly="readonly" value="<%=request.getParameter("id")%>"><br>
            
            <lavbel>Nome do Livro:</label><br>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"><br>
            
            <button type="submit">Alterar</button>
            
            </form>            
            <form action="listarLivro.jsp">
                <button>Não, voltar</button>
            </form>
    </body>
</html>
