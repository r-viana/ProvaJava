<%-- 
    Document   : cadastrarEmprestimoFrm
    Created on : 4 de jan. de 2023, 18:42:11
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
        <form action="emprestar.jsp" method="post">
            
            <label>Nome do Livro</label><br><!-- comment -->
            <input type="text" readonly="readonly" name="nomeLivroEmprestado" value="<%=request.getParameter("nomeDoLivro")%>"><br>
            <label>Código do Livro</label><br><!-- comment -->
            <input type="text" readonly="readonly" name="codigoLivroEmprestado" value="<%=request.getParameter("idDoLivro")%>" ><br>
                       
            <label> Nome do Leitor</label><br>
            <input type="text" readonly="readonly" name="nomeLeitorEmprestado" value="<%=request.getParameter("nomeDoLeitor")%>" ><br>
            <label> Código do Leitor</label><br>
            <input type="text" readonly="readonly" name="codigoLeitorEmprestado" value="<%=request.getParameter("idDoLeitor")%>" ><br>
            
            <button type="submit">EMPRESTAR</button><!-- comment --> 
            
            
        </form>
    </body>
</html>
