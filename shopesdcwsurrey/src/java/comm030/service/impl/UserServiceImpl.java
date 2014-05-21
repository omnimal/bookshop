/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.service.impl;

import comm030.dao.UserDAO;
import comm030.model.UserDetails;
import comm030.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("UserService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class UserServiceImpl implements UserService {
@Autowired
private UserDAO userDAO;

    @Override
    public UserDetails getUserbyId(int id) {
        return userDAO.getUserbyId(id); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<UserDetails> getUsers() {
        return userDAO.getUsers(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void addUser(UserDetails user) {
       userDAO.addUser(user); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteUserByid(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
