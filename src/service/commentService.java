package service;

import java.util.List;

import bean.Comment;

public interface commentService {
	List<Comment> listCommentByP(int pid);
	List<Comment> listCommentByU(int uid);
	void saveC(Comment comment);
	List<Comment> listComment();
	void delete(Comment comment);
}
