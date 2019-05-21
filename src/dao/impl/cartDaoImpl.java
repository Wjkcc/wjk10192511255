package dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import bean.Cart;
import bean.Comment;
import bean.Product;
import dao.cartDao;

public class cartDaoImpl extends HibernateTemplate implements cartDao{

	public List<Cart> listCartByU(int uid){
		return find("from Cart where uid= '"+uid+"'");
	}
	@Override
	public void saveCartP(Cart cart) {
		super.save(cart);
	}
	@Override
	public void deleteCartPByU(Cart cart) {
		super.delete(cart);
	}
	public Cart get(int id) {
		return (Cart)get(Cart.class,id);
	}
}
