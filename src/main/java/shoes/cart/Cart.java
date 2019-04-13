package shoes.cart;

import java.util.LinkedHashMap;

import shoes.entities.Product;

public class Cart extends LinkedHashMap<Integer, CartItem> {
	
	private static final long serialVersionUID = 1L;

	private int quantity;
	
	public void add(Integer key, Product p) {
		if(containsKey(key)) {
			CartItem item = this.get(key);
			item.setQuantity(item.getQuantity()+1);
			item.setTotalPrice(item.getQuantity());
			setQuantity(getQuantity() + 1);
		}else {
			this.put(key, new CartItem(p, 1, p.getUnitPrice()));
			setQuantity(getQuantity() + 1);
		}
	}
	
	public boolean remove (Integer key) {
		if(containsKey(key)) {
			int itemQuantiy = this.get(key).getQuantity();
			super.remove(key);
			quantity -= itemQuantiy;
		}else {
			return false;
		}
		return true;
	}
	
	public boolean updateQuantity(Integer key, Integer quantity) {
		if (containsKey(key)) {
			CartItem item = this.get(key);
			int oldQty = item.getQuantity();
			item.setQuantity(quantity);
			item.setTotalPrice(item.getQuantity());
			if (quantity > oldQty)
				this.quantity += quantity - oldQty;
			else if (quantity < oldQty)
				this.quantity -= oldQty - quantity;
		} else
			return false;
		return true;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
