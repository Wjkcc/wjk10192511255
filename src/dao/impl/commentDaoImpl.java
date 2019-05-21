package dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import bean.Comment;
import bean.Product;
import dao.commentDao;

public class commentDaoImpl extends HibernateTemplate implements commentDao{

	public List<Comment> listCommentByP(int pid){
		return find("from Comment where pid= '"+pid+"'");
	}
	public List<Comment> listCommentByU(int uid){
		return find("from Comment where uid= '"+uid+"'");
	}
	@Override
	public void saveC(Comment product) {
		save(product);
	}
	public List<Comment> listComment(){
		return find("from Comment ");
	}
	public void delete(Comment comment) {
		super.delete(comment);
	}
}
