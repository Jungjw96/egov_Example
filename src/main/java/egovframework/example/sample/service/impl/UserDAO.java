package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.UserVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("userDAO")
public class UserDAO<UserVO> extends EgovAbstractDAO {

	//글 목록 조회
	@SuppressWarnings("unchecked")
	public List<UserVO> selectUserList() throws Exception{
		return (List<UserVO>) list("userDAO.selectUserList");
	}
	
	//글 등록
	public void insertUser(UserVO vo){
		insert("userDAO.insertUser", vo);
		
	}
	
	//선택된 글 조회
	public UserVO selectUser(UserVO vo)throws Exception {
		return (UserVO) select("userDAO.selectUser", vo);
	}
	
	
	//글 수정
	public void updateUser(UserVO vo) throws Exception {
		update("userDAO.updateUser", vo);
	}
	
	
	//글 삭제
	public void deleteUser(UserVO vo)throws Exception {
		delete("userDAO.deleteUser", vo);
	}
}
