/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.DAO;

import br.com.DTO.LeitorDTO;
import br.com.DTO.LivroDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author ramon
 */
public class LeitorDAO{
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<LeitorDTO> lista = new ArrayList<>();
    
     public void CadastrarLeitor(LeitorDTO objLeitorDTO) throws ClassNotFoundException{
        String sql = "insert into usuario (nome_usuario) values(?)";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objLeitorDTO.getNome_usuario());
            
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
        
    }
     
     public ArrayList<LeitorDTO> PesquisarLeitor() throws ClassNotFoundException{
        String sql = "select * from usuario";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);  // resultados da query no BD
            
            while(rs.next()){
                LeitorDTO objLeitorDTO = new LeitorDTO();
                objLeitorDTO.setId_usuario(rs.getInt("id_usuario"));
                objLeitorDTO.setNome_usuario(rs.getString("nome_usuario"));
                
                lista.add(objLeitorDTO);
            }
            
            
        } catch (SQLException e) {
        }
        return lista;
                
    }
     
     public void ExcluirLeitor(LeitorDTO objLeitorDTO) throws ClassNotFoundException{
        String sql = "delete from usuario where id_usuario =?";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objLeitorDTO.getId_usuario());
            
            
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
        
    }
     
     public void AlterarLeitor(LeitorDTO objLeitorDTO) throws ClassNotFoundException{
        String sql = "update usuario set nome_usuario = ? where id_usuario = ?";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            
            pstm.setString(1, objLeitorDTO.getNome_usuario());
            pstm.setInt(2, objLeitorDTO.getId_usuario());
            
            
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
        
    }
    
    
}
