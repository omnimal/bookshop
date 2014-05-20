package comm030.controller;

import comm030.model.Cart;
import comm030.model.ProductDetails;
import comm030.service.CartService;
import comm030.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("cart")
@RequestMapping("/cart")
public class CartController {
    
    private static String title = "";
    private static String paymentmsg = "";

    @Autowired
    CartService cartService;
    
    @Autowired
    ProductService productService;

    @RequestMapping("/view.htm")
    public String viewCart(ModelMap model, @ModelAttribute Cart cart) {
        title = "Your Cart";
        model.addAttribute("current_title", title);
        return "viewcart";
    }

    // Takes the product_id and uses it to find and add the product to the cart session variable.
    @RequestMapping("/add.htm")
    public String addToCart(ModelMap model, @ModelAttribute Cart cart, @RequestParam("pid") int pid) {
        title = "Your Cart";
        model.addAttribute("current_title", title);
        ProductDetails product = productService.getProductbyId(pid);
        cartService.addToCart(cart, product);
        return "redirect:/viewcart.htm";
    }
    
    // Takes the product_id and uses it to find and remove the product from the cart session variable.
    @RequestMapping("/remove.htm")
    public String removeFromCart(ModelMap model, @ModelAttribute Cart cart, @RequestParam("pid") int pid) {
        title = "Your Cart";
        model.addAttribute("current_title", title);
        ProductDetails product = productService.getProductbyId(pid);
        cartService.removeFromCart(cart, product);
        return "redirect:/viewcart.htm";
    }
    
    // Takes the product_id and uses it to find and add the product to the cart session variable.
    @RequestMapping("/increase.htm")
    public String increaseCart(ModelMap model, @ModelAttribute Cart cart, @RequestParam("pid") int pid) {
        title = "Your Cart";
        model.addAttribute("current_title", title);
        ProductDetails product = productService.getProductbyId(pid);
        cartService.addToCart(cart, product);
        return "redirect:/viewcart.htm";
    }
    
    // Takes the product_id and uses it to find and decreases the products of that id from the cart session variable
    @RequestMapping("/decrease.htm")
    public String decreaseCart(ModelMap model, @ModelAttribute Cart cart, @RequestParam("pid") int pid) {
        title = "Your Cart";
        model.addAttribute("current_title", title);
        ProductDetails product = productService.getProductbyId(pid);
        cartService.decreaseCartQty(cart, product);
        return "redirect:/viewcart.htm";
    }
    
    // Finishes the virtual checkout by deleting all the items inside the cart, sets the total to zero and responds with a than kyou message.
    @RequestMapping("/payment.htm")
    public String payment(ModelMap model, @ModelAttribute Cart cart) {
        title = "Your Cart";
        paymentmsg = "<h1 style=\"color: darkgreen;\">Thank you for choosing AOP Online store for shopping with us!!! We hope to see you again soon!!!<h1>";
        model.addAttribute("current_title", title);
        model.addAttribute("paysuccess", paymentmsg);
        cart.getItems().clear();
        cart.setTotal(0);
        return "viewcart";
    }

    // Creates a new cart variable
    @ModelAttribute("cart")
    public Cart populateCart() {
        return new Cart();
    }
}
