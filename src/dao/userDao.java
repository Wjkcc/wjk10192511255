package dao;

import java.util.List;

import bean.User;

public interface userDao {
	void addUser(User user);
	boolean checkUser(String username,String password);
	void update(User user);
	List<User> query(String username,String password);
	User get(int id);
	 boolean checkUserName(String userName);
	 List<User> listUser();
	 void delete(User user);
}
