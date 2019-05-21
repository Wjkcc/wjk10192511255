package action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.print.attribute.Size2DSyntax;

import com.opensymphony.xwork2.ActionContext;

import bean.Cart;
import bean.Ppicture;
import bean.Product;
import bean.User;
import otherBean.cartU;
import service.cartService;
import service.productService;

public class cartAction {
	public List<cartU> getCartUs() {
		return cartUs;
	}
	public void setCartUs(List<cartU> cartUs) {
		this.cartUs = cartUs;
	}
	List<cartU> cartUs;
	List<Cart> carts;
	public List<Cart> getCarts() {
		return carts;
	}
	public void setCarts(List<Cart> carts) {
		this.carts = carts;
	}
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	public cartService getCartService() {
		return cartService;
	}
	public void setCartService(cartService cartService) {
		this.cartService = cartService;
	}
	public productService getProductService() {
		return productService;
	}
	public void setProductService(productService productService) {
		this.productService = productService;
	}
	Cart cart;
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	List<Product> products;
	Product product;
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	cartService cartService;
	productService productService;
	public Product getProduct1() {
		return product1;
	}
	public void setProduct1(Product product1) {
		this.product1 = product1;
	}
	public Product getProduct2() {
		return product2;
	}
	public void setProduct2(Product product2) {
		this.product2 = product2;
	}
	List<Ppicture> ppictures;
	
	public List<Ppicture> getPpictures() {
		return ppictures;
	}
	public void setPpictures(List<Ppicture> ppictures) {
		this.ppictures = ppictures;
	}
	Product product1;
	Product product2;
	public String ListCartByU() {
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		User user=(User)session.get("user");
		if(user==null) {
			return "error";
		}
		
			int uid=user.getId();
			System.out.println("uidwei"+uid);
			carts=cartService.listCartByU(uid);
			products=new ArrayList<>();
			for(Cart cart:carts) {
				int pid=cart.getPid();
				Product p=productService.get(pid);
				products.add(p);
				
				
			}
			cartUs=new ArrayList<>();
			for(int i=0;i<carts.size();i++) {
				cartU cart=new cartU();
				cart.setCartid(carts.get(i).getId());
				cart.setPrice(products.get(i).getPrice());
				cart.setName(products.get(i).getName());
				cart.setTrueName(products.get(i).getTrueName());
				cart.setPid(products.get(i).getId());
				cart.setPicture(products.get(i).getPicture());
				cartUs.add(cart);
			}
			
			return "success";
		
	
	}
	public String saveCartP() {
//		cart=new Cart();
//		int pid=cart.getPid();
//		System.out.println("pid="+pid);
		product = productService.get(product.getId());
	//	cartService.saveCartP(cart);
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		User user=(User)session.get("user");
		cart=new Cart();
		cart.setPid(product.getId());
		cart.setUid(user.getId());
		product1=productService.get(1);
    	product2=productService.get(2);
    	int pid=product.getId();
    	ppictures=productService.listPpicture(pid);
    	carts=cartService.listCartByU(user.getId());
    	for(Cart cart:carts) {
    		if(cart.getPid()==product.getId()) 
    			return "success";    		    			    			   		
    	}
    	cartService.saveCartP(cart);
    	return "success";
    	
	}
	public String deleteP() {
		//cart=cartService.get(cart);
		System.out.println("id==="+cart.getId());
		cartService.deleteCartPByU(cart);

		return "success";
	}

}
