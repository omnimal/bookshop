package comm030.model;

/**
 *
 * @author Bogdan Vrusias
 */
public class CartItem {
    private ProductDetails product;
    private int quantity;



    /**
     * @return the quantity
     */
    public int getQuantity() {
        return quantity;
    }

    /**
     * @param quantity the quantity to set
     */
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    /**
     * @return the product
     */
    public ProductDetails getProduct() {
        return product;
    }

    /**
     * @param product the product to set
     */
    public void setProduct(ProductDetails product) {
        this.product = product;
    }

}
