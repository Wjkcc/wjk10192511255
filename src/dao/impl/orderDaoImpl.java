package dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import bean.Comment;
import bean.Order;
import bean.User;
import dao.orderDao;

public class orderDaoImpl extends HibernateTemplate implements orderDao{
	public List<Order> listOrderByU(int uid){
	//	return find("from Order where uid ='"+uid+"'");
		return find("from Order where uid= '"+uid+"'");
	}
	@Override
	public void saveOrder(Order order) {
		save(order);
	}
	public List<Order> listOrder(){
	//	return find("from Order where uid ='"+uid+"'");
		return find("from Order ");
	}
	public void delete(Order order) {
		super.delete(order);
	}

}
