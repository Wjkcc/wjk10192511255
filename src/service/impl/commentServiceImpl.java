package service.impl;

import java.util.List;

import bean.Comment;
import bean.Product;
import dao.commentDao;
import service.commentService;

public class commentServiceImpl implements commentService{
	commentDao commentDao;
	public commentDao getCommentDao() {
		return commentDao;
	}
	public void setCommentDao(commentDao commentDao) {
		this.commentDao = commentDao;
	}
	public List<Comment> listCommentByP(int pid){
		return commentDao.listCommentByP(pid);
	}
	public List<Comment> listCommentByU(int uid){
		return commentDao.listCommentByU(uid);
	}
	
	public void saveC(Comment product) {
		commentDao.saveC(product);
	}
	public List<Comment> listComment(){
		return commentDao.listComment();
	}
	public void delete(Comment comment) {
		 commentDao.delete(comment);
	}
	
}