package service.impl;

import java.util.List;

import bean.Comment;
import bean.Page;
import bean.Ppicture;
import bean.Product;
import dao.productDao;
import service.productService;

public class productServiceImpl implements productService{
	productDao productDao;
	public productDao getProductDao() {
		return productDao;
	}
	public void setProductDao(productDao productDao) {
		this.productDao = productDao;
	}
	public List<Product> listProduct(){
		return productDao.listProduct();
		
	}
	public Product get(int id) {
		return productDao.get(id);
	}
	public int count() {
		return productDao.count();
	}
	public List<Product> listProduct(int cid){
		return productDao.listProduct(cid);
	}

	public void saveP(Product product) {
		productDao.saveP(product);
	}
	public List<Product> listProducts(int a,int b){
		return productDao.listProducts(a,b);
	}
	public List<Ppicture> listPpicture(int pid){
		return productDao.listPpicture(pid);
	}
	public void delete(Product product) {
		 productDao.delete(product);
	}
	public void update(Product product) {
		 productDao.update(product);
	}
	

}
