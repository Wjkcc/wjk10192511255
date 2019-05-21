package service;

import java.util.List;

import bean.Comment;
import bean.Order;

public interface orderService {
	List<Order> listOrderByU(int uid);
	void saveOrder(Order order);
	List<Order> listOrder();
	void delete(Order order);

}
