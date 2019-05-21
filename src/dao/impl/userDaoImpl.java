package dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import bean.Product;
import bean.User;
import dao.userDao;

public class userDaoImpl extends HibernateTemplate implements userDao{
	@Override
	public void addUser(User user) {
		save(user);
	}
	public boolean checkUser(String username,String password) {
		List userList=find("from User where username='"+username+"' and password='"+password+"'");
		if(userList.size()>0)
			return true;
		return false;
	}
	@Override
	public void update(User user) {
		super.update(user);
		
	}
	public List<User> query(String username,String password) {
		return find("from User where username='"+username+"' and password='"+password+"'");
	}
	public User get(int id) {
		return (User)get(User.class,id);
	}
	public boolean checkUserName(String username) {
		List userList=find("from User where username='"+username+"'");
		if(userList.size()>0)
			return true;
		return false;
		
		
	}
	public List<User> listUser(){
		return find("from User");
	}
	public void delete(User user) {
		super.delete(user);
	}
}
