/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.service.impl;

import comm030.dao.User_roleDAO;
import comm030.model.User_role;
import comm030.service.User_roleService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("User_roleService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class User_roleServiceImpl implements User_roleService {
@Autowired
private User_roleDAO user_roleDAO;

    @Override
    public User_role getUser_rolebyId(int id) {
        return user_roleDAO.getUser_rolebyId(id); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<User_role> getUser_roles() {
        return user_roleDAO.getUser_roles(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void addUser_role(User_role user_role) {
       user_roleDAO.addUser_role(user_role); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteUser_roleByid(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
