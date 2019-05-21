package action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import bean.Comment;
import bean.Product;
import bean.User;
import otherBean.productComment;
import otherBean.userComment;
import service.commentService;
import service.productService;
import service.userService;

public class commentAction {
	List<userComment> userComments;
	public List<userComment> getUserComments() {
		return userComments;
	}
	public void setUserComments(List<userComment> userComments) {
		this.userComments = userComments;
	}
	public List<Comment> getComments() {
		return comments;
	}
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
	List<Comment> comments;
	Comment comment;
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
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
	public commentService getCommentService() {
		return commentService;
	}
	public void setCommentService(commentService commentService) {
		this.commentService = commentService;
	}
	public userService getUserService() {
		return userService;
	}
	public void setUserService(userService userService) {
		this.userService = userService;
	}
	public productService getProductService() {
		return productService;
	}
	public void setProductService(productService productService) {
		this.productService = productService;
	}
	User user;
	Product product;
	List<User> users;
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	List<productComment> productComments;
	public List<productComment> getProductComments() {
		return productComments;
	}
	public void setProductComments(List<productComment> productComments) {
		this.productComments = productComments;
	}
	List<Product> products;
	commentService commentService;
	userService userService;
	productService productService;
	public String listCommentByP() {
	comments=commentService.listCommentByP(product.getId());
		List<User> users1=new ArrayList();
		for(int i=0;i<comments.size();i++) {
			
			System.out.println(comments.get(i).getUid());
			int s=comments.get(i).getUid();
		user=userService.get(s);
		
			users1.add(user);
		}
		users=users1;
		productComments=new ArrayList<>();
		for(int i=0;i<comments.size();i++) {
			productComment pc=new productComment();
			pc.setUserPicture(users.get(i).getPicture());
			pc.setUserNickname(users.get(i).getNickName());
			pc.setTime(comments.get(i).getTime());
			pc.setContext(comments.get(i).getContext());
			productComments.add(pc);
			
			
		}
	//	System.out.println(comments.get(0).getContext());
	//	System.out.println(users.get(0).getNickName());
		
		product=productService.get(product.getId());
		return "success";
	}
	public String test() {
		product=productService.get(1);
		return "success";
	}
	public String listCommentByU() {
		System.out.println(user.getId());
		comments=commentService.listCommentByU(user.getId());
		System.out.println(comments.get(0).getId());
		List<Product> products1=new ArrayList();
	for(int i=0;i<comments.size();i++) {
			
	//		System.out.println(comments.get(i).getUid());
			int s=comments.get(i).getPid();
		product=productService.get(s);
		
			products1.add(product);
		}
	products=products1;
	user=userService.get(user.getId());
	userComments=new ArrayList<>();
	for(int i=0;i<comments.size();i++) {
		userComment userComment=new userComment();
		userComment.setProuductPicture(products1.get(i).getPicture());
		userComment.setProductName(products1.get(i).getName());
		userComment.setUserCommnet(comments.get(i).getContext());
		userComment.setProductPrice(products1.get(i).getPrice());
		userComment.setTime(comments.get(i).getTime());
		userComments.add(userComment);
		
	}
	System.out.println(userComments.get(0).getTime());
	return "success";
	}
	public String cc() {
		ActionContext actionContext = ActionContext.getContext();
		
								Map session = actionContext.getSession();
		
							user=(User)session.get("user");
		product=productService.get(product.getId());
		user=userService.get(user.getId());
		return"success";
	}
	public String commentA() {
		java.util.Date now=new java.util.Date();
		SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS" );
	    String str = sdf.format(now);
		comment.setTime(str);
		int s=(int)(Math.random()*100);
		commentService.saveC(comment);
		return "success";
	}
	public String listComment() {
		comments=commentService.listComment();
		return"success";
	} 
	public String deletec() {
		commentService.delete(comment);
		return "success";
	}
}
