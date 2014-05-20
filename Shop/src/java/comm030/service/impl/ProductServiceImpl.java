/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.service.impl;

import comm030.dao.ProductDAO;
import comm030.model.ProductDetails;
import comm030.service.ProductService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("ProductService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ProductServiceImpl implements ProductService {
@Autowired
private ProductDAO productDAO;

    @Override
    public ProductDetails getProductbyId(int product_id) {
        return productDAO.getProductbyId(product_id); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<ProductDetails> getProducts() {
        return productDAO.getProducts(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void addProduct(ProductDetails product) {
       productDAO.addProduct(product); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteProductByid(int product_id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<ProductDetails> getProductbyCategory(String category) {
        return productDAO.getProductbyCategory(category);//To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public List<ProductDetails> getProductsbyPrice() {
        return productDAO.getProductsbyPrice();//To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<ProductDetails> getProductbyName(String Name) {
       return productDAO.getProductbyName(Name);//To change body of generated methods, choose Tools | Templates.
    }
    
}
