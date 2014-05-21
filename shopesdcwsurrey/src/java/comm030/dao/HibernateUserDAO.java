/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.dao;

import comm030.model.UserDetails;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("UserDAO")
@Transactional
public class HibernateUserDAO implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    private Session currentSession(){
        return sessionFactory.getCurrentSession();
    }
    
    @Override
    public UserDetails getUserbyId(int id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    //Provides ability to retrieve all users.
    @Override
    public List<UserDetails> getUsers() {
        List<UserDetails> userlist=null;
        Query query=currentSession().createQuery("From UserDetails");
        userlist = (List<UserDetails>) query.list();
        return userlist;
    }
    
    //Provides ability to add users to the database after checking if the inputed username and email already exist and denying insertion if they do exist while allowing when they do not exist.
    @Override
    public void addUser(UserDetails user) {
        UserDetails u=null;
        Query query1=currentSession().createQuery("From UserDetails Where username= :code");
        query1.setParameter("code", user.username);
        u = (UserDetails) query1.uniqueResult();
        UserDetails em=null;
        Query query2=currentSession().createQuery("From UserDetails Where email= :ecode");
        query2.setParameter("ecode", user.email);
        em = (UserDetails) query2.uniqueResult();
        if(u==null || em==null){
            currentSession().save(user);
        }
    }

    @Override
    public void deleteUserByid(int id) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
    
}
