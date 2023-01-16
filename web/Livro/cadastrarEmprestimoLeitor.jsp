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
    <body><p>Emprestar Livro</p>
        <p><%
            out.print("Título a ser emprestado: ");
    out.print(request.getParameter("nomeDoLivro")); %><br><br><%
            out.print("Lista de Leitores");
        %></p>
        <%
            try {
            
            LeitorDAO objLeitorDAO = new LeitorDAO();            
            ArrayList<LeitorDTO> lista = objLeitorDAO.PesquisarLeitor();
            
            for(int num = 0; num < lista.size(); num++){
            
            String id = Integer.toString(lista.get(num).getId_usuario());
            String nome = lista.get(num).getNome_usuario();
            
            out.print("<pre>Código: "+ lista.get(num).getId_usuario()+ "    ");
            out.print("Nome: "+ lista.get(num).getNome_usuario()+ "<br></pre>");
            
                 
            %>
            <form action="cadastrarEmprestimoFrm.jsp">
                <input type="hidden" name="idDoLivro" value="<%=request.getParameter("idDoLivro")%>">
                <input type="hidden" name="nomeDoLivro" value="<%=request.getParameter("nomeDoLivro")%>">
                
                <input type="hidden" name="idDoLeitor" value="<%=id%>">
                <input type="hidden" name="nomeDoLeitor" value="<%=nome%>">
                
                <button type="submit">Emprestar</button>
            </form>
            
            
            <br><br>
            <%
            }}
catch (Exception e) {
                }
        
%>
    </body>
</html>
