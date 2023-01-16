/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.DTO;

/**
 *
 * @author ramon
 */
public class EmprestimoDTO{
    
    private int id_emprestimo;
    private int id_usuarioFK;
    private int id_livroFK;
    private String nome_livro;

    public int getId_emprestimo() {
        return id_emprestimo;
    }

    public void setId_emprestimo(int id_emprestimo) {
        this.id_emprestimo = id_emprestimo;
    }

    public int getId_usuarioFK() {
        return id_usuarioFK;
    }

    public void setId_usuarioFK(int id_usuarioFK) {
        this.id_usuarioFK = id_usuarioFK;
    }

    public int getId_livroFK() {
        return id_livroFK;
    }

    public void setId_livroFK(int id_livroFK) {
        this.id_livroFK = id_livroFK;
    }

    public String getNome_livro() {
        return nome_livro;
    }

    public void setNome_livro(String nome_livro) {
        this.nome_livro = nome_livro;
    }
    
    
    
    
    
}
