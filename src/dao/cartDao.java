package dao;

import java.util.List;

import bean.Cart;
import bean.Product;

public interface cartDao {
	List<Cart> listCartByU(int uid);
	void saveCartP(Cart cart);
	void deleteCartPByU(Cart cart);
	Cart get(int id);
}
