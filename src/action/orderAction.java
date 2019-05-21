package action;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.lf5.util.DateFormatManager;
import org.hibernate.type.MaterializedBlobType;

import com.opensymphony.xwork2.ActionContext;

import bean.Cart;
import bean.Order;
import bean.Product;
import bean.User;
import otherBean.userComment;
import otherBean.userOrder;
import service.cartService;
import service.orderService;
import service.productService;
import service.userService;

public class orderAction {
	Cart cart;
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public cartService getCartService() {
		return cartService;
	}
	public void setCartService(cartService cartService) {
		this.cartService = cartService;
	}
	cartService cartService;
	orderService orderService;
	public orderService getOrderService() {
		return orderService;
	}
	public void setOrderService(orderService orderService) {
		this.orderService = orderService;
	}
	Order order;
	List<Order> orders;
	public List<Order> getOrders() {
		return orders;
	}
	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	User user;
	Product product;
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public String tt() {
		ActionContext actionContext = ActionContext.getContext();
		
								Map session = actionContext.getSession();
		
							user=(User)session.get("user");
		product=productService.get(product.getId());
		user=userService.get(user.getId());
		return"success";
	}
	public String order() {
		java.util.Date now=new java.util.Date();
		SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS" );
	    String str = sdf.format(now);
		order.setTime(str);
		int s=(int)(Math.random()*100);
		String orderid="";
		orderid=orderid+user.getId()+s+user.getTelephone()+product.getId();
		order.setOrderid(orderid);
		orderService.saveOrder(order);
//		int number=product.getBuynumbers();
//		number++;
//		product.setBuynumbers(number);
//		productService.saveP(product);
		return "success";
	}
	List<Product> products;
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	public productService getProductService() {
		return productService;
	}
	public void setProductService(productService productService) {
		this.productService = productService;
	}
	public userService getUserService() {
		return userService;
	}
	public void setUserService(userService userService) {
		this.userService = userService;
	}
	List<userOrder> userOrders;
	public List<userOrder> getUserOrders() {
		return userOrders;
	}
	public void setUserOrders(List<userOrder> userOrders) {
		this.userOrders = userOrders;
	}
	productService productService;
	userService userService;
	public String listOrderByU() {
		orders=orderService.listOrderByU(user.getId());
		products=new ArrayList<>();
		for(int i=0;i<orders.size();i++) {
			product=productService.get(orders.get(i).getPid());
			products.add(product);
		}
	//	System.out.println("products"+products.get(0).getId());
		userOrders=new ArrayList<>();
		for(int i=0;i<orders.size();i++) {
			userOrder userOrder=new userOrder();
			userOrder.setOrderId(orders.get(i).getOrderid());
			userOrder.setProductPicture(products.get(i).getPicture());
			userOrder.setProductName(products.get(i).getName());
			userOrder.setOrderInformation(orders.get(i).getInformation());
			userOrder.setOrderTime(orders.get(i).getTime());
			userOrder.setProductPrice(products.get(i).getPrice());
			userOrder.setProductId(products.get(i).getId());
			userOrders.add(userOrder);
			
			
		}
		
		user=userService.get(user.getId());
		return "success";
	}
	public String test() {
		return "success";
	}
	public String listOrder() {
		orders=orderService.listOrder();
		return "success";
	}
	public String listOrders() {
		orders=orderService.listOrder();
		return "success";
	}
	public String tts() {
		ActionContext actionContext = ActionContext.getContext();
		
								Map session = actionContext.getSession();
		
							user=(User)session.get("user");
		product=productService.get(product.getId());
		user=userService.get(user.getId());
	
		
		return"success";
	}
	public String deleteo() {
		orderService.delete(order);
		return "success";
	}

}
