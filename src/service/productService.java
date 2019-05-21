package service;

import java.util.List;

import bean.Comment;
import bean.Page;
import bean.Ppicture;
import bean.Product;

public interface productService {
	List<Product> listProduct();
	Product get(int id);
	int count();
	 List<Product> listProduct(int cid);
	void saveP(Product product);
	List<Product> listProducts(int a,int b);
	List<Ppicture> listPpicture(int pid);
	void delete(Product product);
	void update(Product product);
}
