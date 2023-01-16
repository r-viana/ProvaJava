<%-- 
    Document   : excluirLivro
    Created on : 28 de dez. de 2022, 13:04:10
    Author     : ramon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="excluirLivro.jsp" method="post">
            <label>Código do Livro:</label><br>
            <input type="text" name="id"  readonly="readonly"
                   value="<%=request.getParameter("id")%>"><br>
            
            <lavbel>Nome do Livro:</label><br>
            <input type="text" name="nome" readonly="readonly" 
                   value="<%=request.getParameter("nome")%>"><br>
            
            <button type="submit">Excluir</button>
            
            </form>            
            <form action="listarLivro.jsp">
                <button>Não, voltar</button>
            </form>

            
            
        </form>    </body>
</html>
