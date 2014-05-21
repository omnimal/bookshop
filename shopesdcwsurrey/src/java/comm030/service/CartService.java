package comm030.service;

import comm030.model.Cart;
import comm030.model.ProductDetails;

/**
 *
 * @author bogdan
 */
public interface CartService {
    public void addToCart(Cart cart, ProductDetails product);
    public void removeFromCart(Cart cart, ProductDetails product);
    public void decreaseCartQty(Cart cart, ProductDetails product);
}
