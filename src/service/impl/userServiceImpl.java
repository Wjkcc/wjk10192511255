package service.impl;

import java.util.List;

import bean.Comment;
import bean.User;
import dao.userDao;
import service.userService;

public class userServiceImpl implements userService{
	userDao userDao;
	public userDao getUserDao() {
		return userDao;
	}
	public void setUserDao(userDao userDao) {
		this.userDao = userDao;
	}
	public void addUser(User user) {
		userDao.addUser(user);
	}
	public boolean checkUser(String username,String password) {
	return userDao.checkUser(username,password);
	}
	public void update(User user) {
		 userDao.update(user);
	}
	public List<User> query(String username,String password){
		return userDao.query(username,password);
	}
	public User get(int id) {
		return userDao.get(id);
	}
	public boolean checkUserName(String userName) {
		return userDao.checkUserName(userName);
		
	}
	public List<User> listUser(){
		return userDao.listUser();
	}
	public void delete(User user) {
		 userDao.delete(user);
	}
	

}
