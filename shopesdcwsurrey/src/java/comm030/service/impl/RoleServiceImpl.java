/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.service.impl;

import comm030.dao.RoleDAO;
import comm030.model.RoleDetails;
import comm030.service.RoleService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("RoleService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class RoleServiceImpl implements RoleService {
@Autowired
private RoleDAO roleDAO;

    @Override
    public RoleDetails getRolebyId(int id) {
        return roleDAO.getRolebyId(id); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<RoleDetails> getRoles() {
        return roleDAO.getRoles(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void addRole(RoleDetails role) {
       roleDAO.addRole(role); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteRoleByid(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


}
