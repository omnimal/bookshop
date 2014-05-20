/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comm030.dao;

import comm030.model.ProductDetails;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("ProductDAO")
@Transactional
public class HibernateProductDAO implements ProductDAO {

    @Autowired
    private SessionFactory sessionFactory;
    
    private Session currentSession(){
        return sessionFactory.getCurrentSession();
    }
    
    //Provides ability to retrieve a product by product id.
    @Override
    public ProductDetails getProductbyId(int product_id) {
        ProductDetails prod=null;
        Query query=currentSession().createQuery("FROM ProductDetails WHERE product_id= :code");
        query.setParameter("code", product_id);
        prod = (ProductDetails) query.uniqueResult();
        return prod; 
    }

    //Provides ability to retrieve products by product id.
    @Override
    public List<ProductDetails> getProducts() {
        List<ProductDetails> prodlist=null;
        Query query=currentSession().createQuery("FROM ProductDetails ORDER BY product_id DESC");
        prodlist = (List<ProductDetails>) query.list();
        return prodlist;
    }

    //Provides ability to add a product to the database.
    @Override
    public void addProduct(ProductDetails product) {
         currentSession().save(product);
    }

    //Provides ability to delete a product in the database.
    @Override
    public void deleteProductByid(int product_id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    //Provides ability to retrieve products by category.
    @Override
    public List<ProductDetails> getProductbyCategory(String category) {
        List<ProductDetails> prodlist=null;
        Query query=currentSession().createQuery("FROM ProductDetails WHERE category= :code");
        query.setParameter("code", category);
        prodlist = (List<ProductDetails>) query.list();
        return prodlist; 
    }
    
    //Provides ability to retrieve products by price in ascending order.
    @Override
    public List<ProductDetails> getProductsbyPrice() {
        List<ProductDetails> prodlist=null;
        Query query=currentSession().createQuery("FROM ProductDetails ORDER BY price ASC");
        prodlist = (List<ProductDetails>) query.list();
        return prodlist; 
    }

    //Provides ability to retrieve products by name.
    @Override
    public List<ProductDetails> getProductbyName(String Name) {
       List<ProductDetails> prodlist=null;
        Query query=currentSession().createQuery("FROM ProductDetails WHERE name like %:code%");
        query.setParameter("code", Name);
        prodlist = (List<ProductDetails>) query.list();
        return prodlist;
    }
}