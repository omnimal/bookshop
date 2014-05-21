/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.dao;

import comm030.model.RoleDetails;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("RoleDAO")
@Transactional
public class HibernateRoleDAO implements RoleDAO {

    @Autowired
    private SessionFactory sessionFactory;

    private Session currentSession(){
        return sessionFactory.getCurrentSession();
    }
    
    @Override
    public RoleDetails getRolebyId(int id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    //Provides ability to retrieve all the user roles.
    @Override
    public List<RoleDetails> getRoles() {
        List<RoleDetails> rolelist=null;
        Query query=currentSession().createQuery("From RoleDetails");
        rolelist = (List<RoleDetails>) query.list();
        return rolelist;
    }

    //Provides ability to add roles.
    @Override
    public void addRole(RoleDetails role) {
         currentSession().save(role);
    }

    //Provides ability to delete roles.
    @Override
    public void deleteRoleByid(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
