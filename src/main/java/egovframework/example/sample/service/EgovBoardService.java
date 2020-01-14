package egovframework.example.sample.service;

import java.util.List;

public interface EgovBoardService {

	
	//글 목록 조회
	List<BoardVO> selectBoardList(SampleDefaultVO searchVO) throws Exception;
	
	//글 등록
	void insertBoard(BoardVO vo) throws Exception;
	
	//글 수정
	void updateBoard(BoardVO vo) throws Exception;
	
	//선택된 글 조회
	BoardVO selectBoard(BoardVO vo) throws Exception;

	//글 삭제
	void deleteBoard(BoardVO vo) throws Exception;
}
