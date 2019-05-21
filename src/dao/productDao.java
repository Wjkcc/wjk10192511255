package dao;

import java.util.List;

import javax.sound.midi.VoiceStatus;

import bean.Page;
import bean.Ppicture;
import bean.Product;
import bean.User;

public interface productDao {
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
