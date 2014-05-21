/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package comm030.controller;

import comm030.model.ProductDetails;
import comm030.service.ProductService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/products")
public class ProductController {
    
    private static String title = "";

    @Autowired
    private ProductService productService;

    //Shows all the products (books) in the searchresults page.
    @RequestMapping("/all")
    public ModelAndView viewProducts(ModelMap modelmap) {
        title = "All Books";
        modelmap.addAttribute("current_title", title);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("products", productService.getProducts());
        return new ModelAndView("searchresults", model);
    }
  
 
    // The main search facility finds books searching inside their names and category values for matches and displays them.
    @RequestMapping(value ="/find.htm",method=RequestMethod.GET)
    public ModelAndView findproduct(ModelMap modelmap, @RequestParam("category") String category){
        String searchvar = category.toLowerCase();
        title = "Find Books";
        modelmap.addAttribute("current_title", title);
        Map<String, Object> model = new HashMap<String, Object>();
        List<ProductDetails> mytemporarylist = productService.getProducts();  
        List<ProductDetails> myresultlist =  new ArrayList<ProductDetails>();          
        if(productService.getProductbyCategory(searchvar).isEmpty()){
            for (int i=0; i<mytemporarylist.size(); i++) {
                if (mytemporarylist.get(i).getName().toLowerCase().contains(searchvar)==true) 
                    myresultlist.add(mytemporarylist.get(i));
            }
            model.put("products", myresultlist);
        }
        else{
            model.put("products", productService.getProductbyCategory(searchvar));
        }
        return new ModelAndView("searchresults", model);
        }
}
