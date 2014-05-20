/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.dao;

import comm030.model.ProductDetails;
import java.util.List;

public interface ProductDAO {
    public ProductDetails getProductbyId(int product_id);
    public List<ProductDetails> getProductbyCategory(String category);
    public List<ProductDetails> getProductsbyPrice();
    public List<ProductDetails> getProducts();
    public void addProduct(ProductDetails product);
    public void deleteProductByid(int product_id);
    public List<ProductDetails> getProductbyName(String Name);
}
