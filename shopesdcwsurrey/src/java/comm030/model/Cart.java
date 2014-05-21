package comm030.model;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Component;

/**
 *
 * @author Bogdan Vrusias
 */
@Component
public class Cart {
    private List<CartItem> items;
    private float total;
    
    public Cart() {
        items = new ArrayList<CartItem>();
    }

    /**
     * @return the items
     */
    public List<CartItem> getItems() {
        return items;
    }

    /**
     * @param items the items to set
     */
    public void setProducts(List<CartItem> items) {
        this.items = items;
    }

    /**
     * @return the total
     */
    public float getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(float total) {
        this.total = total;
    }
}
