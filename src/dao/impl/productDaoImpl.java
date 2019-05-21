package dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.jpa.vendor.HibernateJpaSessionFactoryBean;

import bean.Comment;
import bean.Page;
import bean.Ppicture;
import bean.Product;
import bean.User;
import dao.productDao;

public class productDaoImpl extends HibernateTemplate implements productDao{
	public List<Product> listProduct(){
		List<Product> p=find("from Product");
	
		return p;
		
	}
	public List<Product> listProducts(int a,int b){
		List<Product> p=find("from Product limit "+a+" , "+b+"");
	
		return p;
		
	}
	@Override
	public Product get(int id) {
		return (Product)get(Product.class,id);
	}
public int count() {
	List<Product> p=find("from Product");
	return p.size();
}
public List<Product> listProduct(int cid){
	return find("from Product where cid='"+cid+"'");
	
	
	
}
@Override
public void saveP(Product product) {
	save(product);
}
public List<Ppicture> listPpicture(int pid){
	return find("from Ppicture where pid='"+pid+"'");
}
public void delete(Product product) {
	super.delete(product);
}
@Override
public void update(Product product) {
	super.update(product);
	
}
}
