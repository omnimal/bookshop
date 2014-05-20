/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.controller;

import comm030.model.UserDetails;
import comm030.model.User_role;
import comm030.service.UserService;
import comm030.service.User_roleService;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;
        
    @Autowired
    private User_roleService user_roleService;

    //Displays all the registered users residing in the database in the administrator page.
    @RequestMapping("/all")
    public ModelAndView viewUsers() {
        System.out.println("going to the userHome page");
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("users", userService.getUsers());
        return new ModelAndView("admin", model);
    }
    
 

    
   
   @RequestMapping(value = "/addUser.htm", method = RequestMethod.POST)
   public String addUser(@ModelAttribute("Shop")UserDetails user, 
   ModelMap model) {
       
       try{
           
           User_role user_role = new User_role();
          user_role.setAuthority("ROLE_USER");
       
         
          userService.addUser(user);
       int size=userService.getUsers().size();
                 user_role.setUser_id(userService.getUsers().get(size-1).getUser_id());
  user_roleService.addUser_role(user_role);
      
            
      model.addAttribute("name", "Name: " + user.getName());
       model.addAttribute("username", "Username: " + user.getUsername());
        model.addAttribute("email", "Email: " + user.getEmail());
         model.addAttribute("password", "Password: " + user.getPassword());
          model.addAttribute("phonenumber", "Phone number: " + user.getPhonenumber());
          model.addAttribute("address", "Address: " + user.getAddress());
          
          model.addAttribute("okmessage1", "<h2>Thank you for registering!</h2>");
          model.addAttribute("okmessage2", "<h2 style=\"background:#ddffdd;\">You have registered successfully!!! The following information was submitted:</h2>");
          
           

    } catch(Exception e) {
        model.addAttribute("error1", "<h2>Error! You have not registered</h2>");
        model.addAttribute("error2", "<h2 style=\"background:#ffdddd;\">The username or email are already taken! Please try to register again with different username and email</h2>");

    }
       
      return "result";
   }
    

}
