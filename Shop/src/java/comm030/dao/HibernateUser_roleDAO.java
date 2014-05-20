/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.dao;

import comm030.model.User_role;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("User_roleDAO")
@Transactional
public class HibernateUser_roleDAO implements User_roleDAO {

    @Autowired
    private SessionFactory sessionFactory;
    private Session currentSession(){
        return sessionFactory.getCurrentSession();
    }
    
    @Override
    public User_role getUser_rolebyId(int id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public List<User_role> getUser_roles() {
        List<User_role> user_rolelist=null;
        Query query=currentSession().createQuery("From User_roleDetails");
        user_rolelist = (List<User_role>) query.list();
        return user_rolelist;
    }

    @Override
    public void addUser_role(User_role user_role) {
         currentSession().save(user_role);
    }

    @Override
    public void deleteUser_roleByid(int id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

}
