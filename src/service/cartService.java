package service;

import java.util.List;

import bean.Cart;

public interface cartService {
	List<Cart> listCartByU(int uid);
	void saveCartP(Cart cart);
	void deleteCartPByU(Cart cart);
	Cart get(int id);

}
