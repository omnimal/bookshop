/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package comm030.controller;

import comm030.model.Comment_Rating;
import comm030.model.UserDetails;
import comm030.service.UserService;
import comm030.service.Comment_ratingService;
import comm030.service.ProductService;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Staticpages {
    
    @Autowired
    private ProductService productService;
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private Comment_ratingService comment_service;
    private static String title = "";
    
    //All the mappings create a ModelMap variable and the title of the target page is put in to be displayed on the header. 
    
    //The welcome page also creates a map object which carries the products details to be shown by lowest price and most recent id.
    @RequestMapping( value = "/index.htm", method = RequestMethod.GET)
    protected ModelAndView latest(ModelMap modelmap){
        title = "Welcome";
        modelmap.addAttribute("current_title", title);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("products", productService.getProductsbyPrice());
        model.put("recent", productService.getProducts());
        return new ModelAndView("index", model);
    }
    
    @RequestMapping( value = "/login.htm", method = RequestMethod.GET)
    protected String login(ModelMap modelmap) throws Exception {
        title = "Login";
        modelmap.addAttribute("current_title", title);
        return "login";
    }
    
    @RequestMapping(value = "/register.htm", method = RequestMethod.GET)
    public ModelAndView user(ModelMap modelmap) {
        title = "Register";
        modelmap.addAttribute("current_title", title);
        return new ModelAndView("register", "command", new UserDetails());
    }  
    
    @RequestMapping( value = "/about.htm", method = RequestMethod.GET)
    protected String about(ModelMap modelmap) throws Exception {
        title = "About";
        modelmap.addAttribute("current_title", title);
        return "about";
    }
    
    @RequestMapping( value = "/contact.htm", method = RequestMethod.GET)
    protected String contact(ModelMap modelmap) throws Exception {
        title = "Contact Us";
        modelmap.addAttribute("current_title", title);
        return "contact";
    }
    
    //Displays a more detailed view of the chosen product from the user by passing tis id and retrieving its other fields.
    //Also used in adding comments in order to pass the product id and find the comment for that particular product.
    @RequestMapping( value = "/product.htm", method = RequestMethod.GET)
    protected ModelAndView product(ModelMap modelmap, @RequestParam("pid") int pid){
        Map<String, Object> model = new HashMap<String, Object>();
        int prd_id = productService.getProductbyId(pid).getProduct_id();
        model.put("product", productService.getProductbyId(pid));
        model.put("comments_rating", comment_service.getComment_ratingsbyProdid(prd_id));
        title = productService.getProductbyId(pid).getName();
        modelmap.addAttribute("current_title", title);
        Comment_Rating Commen_for_proudct=new Comment_Rating();
        Commen_for_proudct.setProduct_id(pid);
        modelmap.addAttribute("comment", Commen_for_proudct);
        modelmap.addAttribute("id", prd_id);
        return new ModelAndView("product", model);
    }
    
    @RequestMapping("/viewcart.htm")
    protected String viewcart(ModelMap modelmap) throws Exception {
        title = "Shopping Cart";
        modelmap.addAttribute("current_title", title);
        return "viewcart";
    }
    
    //Shows all book products by quering the hibernate service for that category.
    @RequestMapping( value = "/books.htm", method = RequestMethod.GET)
    protected ModelAndView books(ModelMap modelmap){
        title = "Books";
        modelmap.addAttribute("current_title", title);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("products", productService.getProductbyCategory("books"));
        return new ModelAndView("books", model);
    }
    
    //Shows all ebook products by quering the hibernate service for that category.
    @RequestMapping( value = "/ebooks.htm", method = RequestMethod.GET)
    protected ModelAndView ebooks(ModelMap modelmap){
        title = "eBooks";
        modelmap.addAttribute("current_title", title);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("products", productService.getProductbyCategory("ebooks"));
        return new ModelAndView("ebooks", model);
    }
    
    //Shows all audio book products by quering the hibernate service for that category.
    @RequestMapping( value = "/audio.htm", method = RequestMethod.GET)
    protected ModelAndView audio(ModelMap modelmap){
        title = "Audio Books";
        modelmap.addAttribute("current_title", title);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("products", productService.getProductbyCategory("audio"));
        return new ModelAndView("audio", model);
    }
    
    //Shows all magazine products by quering the hibernate service for that category.
    @RequestMapping( value = "/magazines.htm", method = RequestMethod.GET)
    protected ModelAndView magazines(ModelMap modelmap){
        title = "Magazines";
        modelmap.addAttribute("current_title", title);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("products", productService.getProductbyCategory("magazines"));
        return new ModelAndView("magazines", model);
    }
    
    //Shows all used products by quering the hibernate service for that category.
    @RequestMapping( value = "/used.htm", method = RequestMethod.GET)
    protected ModelAndView used(ModelMap modelmap){
        title = "Used Books";
        modelmap.addAttribute("current_title", title);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("products", productService.getProductbyCategory("used"));
        return new ModelAndView("used", model);
    }
    
    @RequestMapping( value = "/faq.htm", method = RequestMethod.GET)
    protected String faq(ModelMap modelmap) throws Exception {
        title = "Frequently Asked Questions";
        modelmap.addAttribute("current_title", title);
        return "faq";
    }
    
    //Displays all products by price from lowest to highest.
    @RequestMapping( value = "/offers.htm", method = RequestMethod.GET)
    protected String offers(ModelMap modelmap) throws Exception {
        title = "Current Offers";
        modelmap.addAttribute("current_title", title);
        modelmap.put("products", productService.getProductsbyPrice());
        return "offers";
    }
    
    @RequestMapping( value = "/coming.htm", method = RequestMethod.GET)
    protected String coming(ModelMap modelmap) throws Exception {
        title = "Coming Soon!";
        modelmap.addAttribute("current_title", title);
        return "coming";
    }
    
    @RequestMapping( value = "/returns.htm", method = RequestMethod.GET)
    protected String returns(ModelMap modelmap) throws Exception {
        title = "Your Returns";
        modelmap.addAttribute("current_title", title);
        return "returns";
    }
    
    @RequestMapping( value = "/terms.htm", method = RequestMethod.GET)
    protected String terms(ModelMap modelmap) throws Exception {
        title = "Terms & Conditions";
        modelmap.addAttribute("current_title", title);
        return "terms";
    }
    
    @RequestMapping( value = "/delivery.htm", method = RequestMethod.GET)
    protected String delivery(ModelMap modelmap) throws Exception {
        title = "Your Delivery Information";
        modelmap.addAttribute("current_title", title);
        return "delivery";
    }
    
    @RequestMapping( value = "/privacy.htm", method = RequestMethod.GET)
    protected String privacy(ModelMap modelmap) throws Exception {
        title = "Privacy Policy";
        modelmap.addAttribute("current_title", title);
        return "privacy";
    }
    
    @RequestMapping( value = "/wishlist.htm", method = RequestMethod.GET)
    protected String wishlist(ModelMap modelmap) throws Exception {
        title = "Wishlists";
        modelmap.addAttribute("current_title", title);
        return "wishlist";
    }
    
    @RequestMapping( value = "/control.htm", method = RequestMethod.GET)
    protected String control(ModelMap modelmap) throws Exception {
        title = "Control Panel";
        modelmap.addAttribute("current_title", title);
        String name = SecurityContextHolder.getContext().getAuthentication().getName(); //get logged in username
        modelmap.addAttribute("username", name);
        return "control";
    }
    
    @RequestMapping("/admin")
    public ModelAndView viewUsers(ModelMap modelmap) {
        String title = "";
        title = "Administration";
        modelmap.addAttribute("current_title", title);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("users", userService.getUsers());
        return new ModelAndView("admin", model);
    }
    
    @RequestMapping( value = "/checkout.htm", method = RequestMethod.GET)
    protected String checkout(ModelMap modelmap) throws Exception {
        title = "Checkout";
        modelmap.addAttribute("current_title", title);
        return "checkout";
    }
    
}
