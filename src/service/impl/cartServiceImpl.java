package service.impl;

import java.util.List;

import bean.Cart;
import dao.cartDao;
import service.cartService;

public class cartServiceImpl implements cartService{
	public cartDao getCartDao() {
		return cartDao;
	}
	public void setCartDao(cartDao cartDao) {
		this.cartDao = cartDao;
	}
	cartDao cartDao;
  public List<Cart> listCartByU(int uid){
	 return cartDao.listCartByU(uid);
	
  }
  public void saveCartP(Cart cart) {
	  cartDao.saveCartP(cart);
  }
	public void deleteCartPByU(Cart cart) {
		cartDao.deleteCartPByU(cart);
	}
	public Cart get(int id) {
		return cartDao.get(id);
	}
}
