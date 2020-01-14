package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.BoardVO;
import egovframework.example.sample.service.EgovBoardService;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

	@Service("boardService")
	public class EgovBoardServiceImpl extends EgovAbstractServiceImpl implements EgovBoardService{

	@Resource(name = "boardDAO")
	private BoardDAO boardDAO;

	//글 목록조회
	@Override
	public List<BoardVO> selectBoardList(SampleDefaultVO searchVO) throws Exception {
		return (List<BoardVO>) boardDAO.selectBoardList(searchVO);
	}

	//글 등록 반환타입은 void 
	@Override
	public void insertBoard(BoardVO vo) throws Exception {
		boardDAO.insertBoard(vo);
	}

	//글 수정
	@Override
	public void updateBoard(BoardVO vo) throws Exception {
		boardDAO.updateBoard(vo);
		
	}

	//글 조회
	@Override
	public BoardVO selectBoard(BoardVO vo) throws Exception {
		BoardVO resultVO = boardDAO.selectBoard(vo);
		return resultVO;
	}

	//글 삭제
	@Override
	public void deleteBoard(BoardVO vo) throws Exception {
		boardDAO.deleteBoard(vo);
	}



}
