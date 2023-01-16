/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.DAO;


import br.com.DTO.EmprestimoDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ramon
 */
public class EmprestimoDAO{
    
    Connection con;
    PreparedStatement pstm;
    
    public void EmprestarLivro (EmprestimoDTO objEmprestimoDTO) throws ClassNotFoundException{
        
        String sql = "insert into emprestimo (id_usuario, id_livro, nome_livro) values(?,?,?)";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objEmprestimoDTO.getId_usuarioFK());
            pstm.setInt(2, objEmprestimoDTO.getId_livroFK());
            pstm.setString(3, objEmprestimoDTO.getNome_livro());
            
            pstm.execute();
            pstm.close();
            
            
        } catch (SQLException e) {
        }
        
        
        
        
    }
    
}
