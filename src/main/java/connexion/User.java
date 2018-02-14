/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connexion;

/**
 *
 * @author giga
 */
public class User {
    private String nom;
    private String email;
    private String mdp;
    private int score;
    
    public User(){
        
    }
    public User(String nom, String email, String mdp, int score ) {
        this.nom = nom;
        this.email = email;
        this.mdp = mdp;
        this.score = score;
    }

    public String getNom() {
        return nom;
    }

    public String getEmail() {
        return email;
    }
    
    public String getMdp() {
        return mdp;
    }
    
    public int getScore() {
        return score;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public void setScore(int score) {
        this.score = score;
    }
    
    
}
