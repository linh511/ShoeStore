package shoes.cart;

import shoes.entities.Product;

public class CartItem {
	private Product product;
	private int quantity;
    private int totalPrice;
    
    
    
	public int getTotalPrice() {
		totalPrice = quantity* product.getUnitPrice();
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public CartItem() {
		super();
	}

	public CartItem(Product product) {
		super();
		this.product = product;
		this.quantity = 1;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public CartItem(Product product, int quantity, int totalPrice) {
		super();
		this.product = product;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
	}
	

}
