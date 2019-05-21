package action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.opensymphony.xwork2.ActionContext;

import bean.Page;
import bean.Ppicture;
import bean.Product;
import bean.User;
import service.productService;

public class productAction {
	File doc;
	public File getDoc() {
		return doc;
	}
	public void setDoc(File doc) {
		this.doc = doc;
	}
	public String getDocFileName() {
		return docFileName;
	}
	public void setDocFileName(String docFileName) {
		this.docFileName = docFileName;
	}
	public String getDocContentType() {
		return docContentType;
	}
	public void setDocContentType(String docContentType) {
		this.docContentType = docContentType;
	}
	String docFileName;
	String docContentType;
	productService productService;
	Page page;
	public List<Ppicture> getPpictures() {
		return ppictures;
	}
	public void setPpictures(List<Ppicture> ppictures) {
		this.ppictures = ppictures;
	}
	List<Ppicture> ppictures;
	Product product1;
	public Product getProduct1() {
		return product1;
	}
	public void setProduct1(Product product1) {
		this.product1 = product1;
	}
	public Product getProduct2() {
		return product2;
	}
	public void setProduct2(Product product2) {
		this.product2 = product2;
	}
	Product product2;

	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public productService getProductService() {
		return productService;
	}
	public void setProductService(productService productService) {
		this.productService = productService;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	Product product;
	List<Product> products;
//	public String listOne() {
////		ActionContext actionContext = ActionContext.getContext();
////		
////	    Map session = actionContext.getSession();
//	//    Page page1=null;
//	  // page1=(Page)session.get("page");
//	 //   if(page1==null) {
//	    	page=new Page();
//	    //	page=page1;
//	  //  }
//	    	
//	    	List<Product> productx=productService.listProduct();
////		    page=Page.getPage();
//			int s=page.getStart();
//			
//			int c=page.getCount();
//			System.out.println(s+"  "+c);
//			
//			List<Product> p=new ArrayList<>();
//			for(int i=s;i<s+c;i++) {
//				p.add(productx.get(i));
//			}
//			
//			products=p;
//			
//			
//			 int total = productService.count();
//	         
//		       page.caculateLast(total);
////		       session.put("page",page);
//			return "success";
//	    	
//	}
	public String list() {
//ActionContext actionContext = ActionContext.getContext();		
//	    Map session = actionContext.getSession();
//	    page=(Page)session.get("page");
		List<Product> productx=productService.listProduct();
//	    page=Page.getPage();	
		System.out.println("size="+productx.size());
		int total = productService.count();
		page.caculateLast(total);
		System.out.println("last="+page.getLast());
		int s=page.getStart();
		int c=page.getCount();		
		if(s<=0) {
			s=0;
			page.setStart(s);
		}		
		if(s>=total) {
			s=page.getLast();
			page.setStart(s);}
		int l=s+c;
		System.out.println("start="+s+" count= "+c);
		List<Product> p=new ArrayList<>();
		if(l>=productx.size())
		{
			l=productx.size();}
		System.out.println("length="+l);
		for(int i=s;i<l;i++) {
			p.add(productx.get(i));}		
		products=p;				
		return "success";
	}
	public String product() {
		ActionContext actionContext = ActionContext.getContext();		
	    Map session = actionContext.getSession();
	    User user=(User)session.get("user");
	    if(null!=user){
	    	product = productService.get(product.getId());
	    	int pid=product.getId();
	    	ppictures=productService.listPpicture(pid);
	    	product1=productService.get(1);
	    	product2=productService.get(2);
	    	
			return "success";
	    	 
	    }
	    else {
	    	return "login";
	    }
	    
		
	}
	public String listProductByC() {
		products=productService.listProduct(product.getCid());
		return "success";
	}
	public String testp() {
		products=productService.listProducts(0,5);
		return "success";
	}
	public String ListProducts() {
		products=productService.listProduct();
		return "success";
	}
	public String deletep() {
		productService.delete(product);
		return "success";
	}
	public String savep() {
		if(docFileName!=null) {
			String fileName = UUID.randomUUID().toString().replaceAll("-", "") + docFileName.substring(docFileName.lastIndexOf("."));
//			if(fileName=="") {
//				user.setPicture("22.jpg");
//			}else {
		    try {
		        FileUtils.copyFile(doc, new File("g:/Product", fileName));
		    }catch(IOException e) {
		    	e.printStackTrace();
		    }
		product.setPicture(fileName);
			
		
		}
		productService.saveP(product);
		return "success";
	}
	public String updatep() {
		if(docFileName!=null) {
			String fileName = UUID.randomUUID().toString().replaceAll("-", "") + docFileName.substring(docFileName.lastIndexOf("."));
//			if(fileName=="") {
//				user.setPicture("22.jpg");
//			}else {
		    try {
		        FileUtils.copyFile(doc, new File("g:/Product", fileName));
		    }catch(IOException e) {
		    	e.printStackTrace();
		    }
		product.setPicture(fileName);
			
		
		}
		productService.update(product);
		return "success";
	}
	public String getp() {
		System.out.println(product.getId());
		product = productService.get(product.getId());
		return "success";
	}
	public String getps() {
		
		return "success";
	}
	public String tts() {
		return "success";
	}
	
}
