package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.SampleDefaultVO;
/*import egovframework.example.sample.service.SampleVO;*/
import egovframework.example.sample.service.BoardVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("boardDAO")
public class BoardDAO extends EgovAbstractDAO {

	// 글 목록 조회
	
	@SuppressWarnings("unchecked")
	public List<BoardVO> selectBoardList(SampleDefaultVO searchVO) throws Exception {
		return (List<BoardVO>) list("boardDAO.selectBoardList", searchVO);
	}

	
	
	// 글 등록
	public void insertBoard(BoardVO vo) {
		insert("boardDAO.insertBoard", vo);
	}

	// 글 수정
	public void updateBoard(BoardVO vo) {
		update("boardDAO.updateBoard", vo);

	}

	// 글 삭제
	public void deleteBoard(BoardVO vo) {
		delete("boardDAO.deleteBoard", vo);

	}

	// 글 조회
	public BoardVO selectBoard(BoardVO vo) throws Exception {
		return (BoardVO) select("boardDAO.selectBoard", vo);
	}

}
