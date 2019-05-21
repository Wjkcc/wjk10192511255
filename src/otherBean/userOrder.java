package otherBean;

public class userOrder {
	private String productPicture;
	public String getProductPicture() {
		return productPicture;
	}
	public void setProductPicture(String productPicture) {
		this.productPicture = productPicture;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getOrderInformation() {
		return orderInformation;
	}
	public void setOrderInformation(String orderInformation) {
		this.orderInformation = orderInformation;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	private String productName;
	private float productPrice;
	public float getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(float productPrice) {
		this.productPrice = productPrice;
	}
	private String orderInformation;
	private String orderTime;
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	private String orderId;
	private int productId;
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	

}
