package co.three.prj.comment.service;

import java.util.List;

public interface CommentService {

	List<CommentVO> CommentSelectList(CommentVO vo);
	List<CommentVO> CommentCSelect(CommentVO vo);
 	CommentVO CommentSelect(CommentVO vo);
	int CommentInsert(CommentVO vo);
	int CommentDelete(CommentVO vo);
	int CommentUpdate(CommentVO vo);

}
