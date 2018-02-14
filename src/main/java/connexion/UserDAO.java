/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connexion;
import com.mongodb.BasicDBObject;
import java.util.ArrayList;

import com.mongodb.util.JSON;
import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.Mongo;
import com.mongodb.MongoException;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import java.io.IOException;
import java.util.Arrays;
import javax.ws.rs.container.ContainerRequestContext;
import javax.ws.rs.container.ContainerResponseContext;
import javax.ws.rs.container.ContainerResponseFilter;
import org.bson.Document;

/**
 *
 * @author giga
 */
public class UserDAO{
    public int find_User(DB co, User us)throws Exception{
        try{
            ArrayList<User> lu=new ArrayList();
            
            int statut=0;
        
            DBCollection collection = co.getCollection("utilisateur");

            BasicDBObject searchQuery = new BasicDBObject();
            searchQuery.put("nom", us.getNom());
            searchQuery.put("mdp", us.getMdp());

            DBCursor cursor = collection.find(searchQuery);

            while (cursor.hasNext()){
                DBObject objet=cursor.next();
                User u = new User(objet.get("nom").toString(),objet.get("email").toString(),objet.get("mdp").toString(), Integer.parseInt(objet.get("score").toString()));
                lu.add(u);
            }
            
            if(lu.size()!=0){
                statut=1;
            }

            return statut;
        }
        catch(Exception ex){
            ex.printStackTrace();
            throw ex;
        }
    }
    
    public int findClassement(DB co, String user, String mdp)throws Exception {
        int retour=0;
        try{
        
            DBCollection collection = co.getCollection("utilisateur");

            BasicDBObject searchQuery = new BasicDBObject();
            searchQuery.put("nom", user);
            searchQuery.put("mdp", mdp);

            DBCursor cursor = collection.find(searchQuery);

            while (cursor.hasNext()){
                DBObject objet=cursor.next();
                User u = new User(objet.get("nom").toString(),objet.get("email").toString(),objet.get("mdp").toString(), Integer.parseInt(objet.get("score").toString()));
                retour=u.getScore();
            }
        }
        catch(Exception ex){
            ex.printStackTrace();
            throw ex;
        }
        return retour;
    }
    
    public void insertUser(DB co, String base, User us)throws Exception {
        try{
            BasicDBObject document = new BasicDBObject();
            document.put("nom", us.getNom());
            document.put("email", us.getEmail());
            document.put("mdp", us.getMdp());
            document.put("score", us.getScore());
            
            DBCollection collection = co.getCollection("utilisateur");
            

            collection.insert(document);
        }
        catch(Exception ex){
            
        }
        
    }
}
