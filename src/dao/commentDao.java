package dao;

import java.util.List;

import bean.Cart;
import bean.Comment;

public interface commentDao {
	List<Comment> listCommentByP(int pid);
	List<Comment> listCommentByU(int uid);
	void saveC(Comment comment);
	List<Comment> listComment();
	void delete(Comment comment);

}
