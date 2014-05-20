/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.service;

import comm030.model.User_role;
import java.util.List;

public interface User_roleService {
    public User_role getUser_rolebyId(int id);
    public List<User_role> getUser_roles();
    public void addUser_role(User_role user_role);
    public void deleteUser_roleByid(int id);
}
