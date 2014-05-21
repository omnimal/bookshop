/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.service;

import comm030.model.RoleDetails;
import java.util.List;

public interface RoleService {
    public RoleDetails getRolebyId(int id);
    public List<RoleDetails> getRoles();
    public void addRole(RoleDetails role);
    public void deleteRoleByid(int id);
}
