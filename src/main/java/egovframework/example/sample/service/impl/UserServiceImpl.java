package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.UserService;
import egovframework.example.sample.service.UserVO;

@Service("UserService")
public class UserServiceImpl implements UserService{
	
	@Resource(name="userDAO")
	private UserDAO userDAO;

	//전체 목록 조회
	@Override
	public List<UserVO> selectUserList() throws Exception {
		return (List<UserVO>) userDAO.selectUserList();
	}

	//글 등록
	@Override
	public void insertUser(UserVO vo) throws Exception {
		userDAO.insertUser(vo);
		
	}

	//선택된 글 조회 .... 변수명 맞나...???
	@Override
	public UserVO selectUser(UserVO vo) throws Exception {
		UserVO rr = (UserVO) userDAO.selectUser(vo);
		return rr;
	}
	
	//글 수정
	@Override
	public void updateUser(UserVO vo) throws Exception {
		userDAO.updateUser(vo);
		
	}


	//글 삭제
	@Override
	public void deleteUser(UserVO vo) throws Exception {
		userDAO.deleteUser(vo);
		
	}


	
}
