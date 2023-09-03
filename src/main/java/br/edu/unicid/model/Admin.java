package br.edu.unicid.model;

public class Admin {

    // atributos
    private String login;
    private String senha;   
    private String nome;

    // construtor
    public Admin(String login, String senha) {
        this.login =  login;
        this.senha = senha;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
}
