package service.impl;

import java.util.List;

import bean.Comment;
import bean.Order;
import dao.orderDao;
import service.orderService;

public class orderServiceImpl implements orderService{
	orderDao orderDao;

	
	public orderDao getOrderDao() {
		return orderDao;
	}
	public void setOrderDao(orderDao orderDao) {
		this.orderDao = orderDao;
	}
	public List<Order> listOrderByU(int uid){
		return orderDao.listOrderByU(uid);
	}
	public void saveOrder(Order order) {
		orderDao.saveOrder(order);
	}
	public List<Order> listOrder(){
		return orderDao.listOrder();
	}
	public void delete(Order order) {
		orderDao.delete(order);
	}
	
}
