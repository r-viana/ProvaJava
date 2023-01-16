<%-- 
    Document   : excluirLeitorFrm
    Created on : 2 de jan. de 2023, 15:19:50
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
        <form action="excluirLeitor.jsp" method="post">
            <label>Código do Leitor:</label><br>
            <input type="text" name="id"  readonly="readonly"
                   value="<%=request.getParameter("id")%>"><br>
            
            <lavbel>Nome do Leitor:</label><br>
            <input type="text" name="nome" readonly="readonly" 
                   value="<%=request.getParameter("nome")%>"><br>
            
            <button type="submit">Excluir</button>
            
            </form>            
            <form action="listarLeitor.jsp">
                <button>Não, voltar</button>
            </form>

            
            
        </form>    
    </body>
</html>
