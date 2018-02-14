/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connexion;
import com.mongodb.DB;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoDatabase;

/**
 *
 * @author giga
 */
public class Connexion {
    
    DB db;
    MongoClient mongoclient;
    
    public DB Co() throws Exception{
        
        //MongoClient mongoClient = new MongoClient();
        //DB database = mongoClient.getDB("bataillenaval");
        //return database;
        try {
            MongoClientURI mongo = new MongoClientURI("mongodb://bataillenaval:bataillenavalmdp@ds233748.mlab.com:33748/bataillenaval");
            mongoclient = new MongoClient(mongo);
            
            System.out.println("mande le base");
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
        }
        /* MongoClient mongo = new MongoClient("localhost", 27017);*/
        return db=mongoclient.getDB("bataillenaval"); 
    }
    public String getBase() throws Exception{
        String retour = "";
        try{
            retour =  "bataillenaval";
        }
        catch(Exception ex){
            
        }
        return retour;
    }
}
