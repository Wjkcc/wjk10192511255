package action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.xwork.RandomStringUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import bean.User;

import service.userService;

public class userAction {
	User user;
	File doc;
	List<User> users;
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
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
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public userService getUserService() {
		return userService;
	}
	public void setUserService(userService userService) {
		this.userService = userService;
	}
	userService userService;
	public String add() {
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		if(session.get("user")!=null) {
			session.remove("user");
		}
		
		userService.addUser(user);
		return "success";
	}
	public String ss() {
		return "success";
	}
	public String check() {
//			if(userService.checkUser(user.getUsername(),user.getPassword())) {
//				ActionContext actionContext = ActionContext.getContext();
//
//						Map session = actionContext.getSession();
//
//						session.put("user",user);
//						System.out.println(user.getUsername());
		ActionContext actionContext = ActionContext.getContext();

				Map session = actionContext.getSession();
				User user1=null;
				user1=(User)session.get("user");
						if(user1==null) {
					user1=userService.query(user.getUsername(),user.getPassword()).get(0);
					if(user1!=null) {
					session.put("user",user1);
					return "success";
				//	System.out.println(user1.getNickName());
						}
						}else {
							return "success";
						}
					 
						
					
				

			//	session.put("user",user);
				
				
	//		}
		return "error";
	}
	public String login() {
		return "login";
	}
	public String upload() {
		//	product.setPicture(doc.getAbsolutePath());
		//	System.out.println(product.getPicture());
			
			
		
       
    
			
			ActionContext actionContext = ActionContext.getContext();

			Map session = actionContext.getSession();
			user=(User)session.get("user");
			if(user==null) {
				return "error";
			}else {
			//List<User> user1=userService.query(users.getUsername(),users.getPassword());
			//User u=user1.get(0);
			//setUser(u);
	//		System.out.println(user.getNickName());
			
			//System.out.println(u.getId());
if(docFileName!=null) {
	String fileName = UUID.randomUUID().toString().replaceAll("-", "") +
			docFileName.substring(docFileName.lastIndexOf("."));
//	if(fileName=="") {
//		user.setPicture("22.jpg");
//	}else {
    try {
        FileUtils.copyFile(doc, new File("g:/Product", fileName));
    }catch(IOException e) {
    	e.printStackTrace();
    }
user.setPicture(fileName);
	
session.put("user",user);
}
				
			
		//	user.setNickName(user1.getNickName());
		//	System.out.println(user1.getPicture());
			//System.out.println("?");
			try {
				userService.update(user);
				
			}catch (Exception e) { 
				e.printStackTrace();
			}
			
			
			
			return "success";}
		}
	public String quit() {
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		session.remove("user");
		return "success";
		
	}
//		public static void copyFile(String oldPath, String newPath) { 
//			try { 
//			int bytesum = 0; 
//			int byteread = 0; 
//			File oldfile = new File(oldPath); 
//			if (oldfile.exists()) { //文件存在时 
//			InputStream inStream = new FileInputStream(oldPath); //读入原文件 
//			FileOutputStream fs = new FileOutputStream(newPath); 
//			byte[] buffer = new byte[1444]; 
//			int length; 
//			while ( (byteread = inStream.read(buffer)) != -1) { 
//			bytesum += byteread; //字节数 文件大小 
//		//	System.out.println(bytesum); 
//			fs.write(buffer, 0, byteread); 
//			} 
//			inStream.close(); 
//			} 
//			} 
//			catch (Exception e) { 
//			System.out.println("复制单个文件操作出错"); 
//			e.printStackTrace(); 
//
//			} 
//		}

		 public String getOne() {
			 ActionContext ac = ActionContext.getContext();
				Map session = ac.getSession();
			 user=(User)session.get("user");
			 if(user!=null) {
			 return "success";
			 }
			 return "error";
			 
		 }
		 public String ex() {
			 return "success";
		 }
		public String checkUserName() {
			String name=user.getUsername();
			if(userService.checkUserName(name)) {
				return "error";
			}else {
				return "success";
			}
			
			
		}
		public String listUser() {
			users=userService.listUser();
			return "success";
			
		}
		public String gl() {
			return "gl";
		}
		public String deleteu() {
		userService.delete(user);
			return "success";
		}
}
