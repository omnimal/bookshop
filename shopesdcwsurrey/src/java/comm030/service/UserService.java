/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.service;

import comm030.model.UserDetails;
import java.util.List;

public interface UserService {
    public UserDetails getUserbyId(int id);
    public List<UserDetails> getUsers();
    public void addUser(UserDetails user);
    public void deleteUserByid(int id); 
}
