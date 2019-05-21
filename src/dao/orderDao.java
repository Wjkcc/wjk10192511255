package dao;

import java.util.List;

import bean.Order;
import bean.User;

public interface orderDao {
	List<Order> listOrderByU(int uid);
	void saveOrder(Order order);
	List<Order> listOrder();
	void delete(Order order);
	

}
