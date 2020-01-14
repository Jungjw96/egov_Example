package egovframework.example.sample.service;

import java.util.List;

public interface UserService {

	//테이블 조회
	List<UserVO> selectUserList() throws Exception;
	
	//글 등록
	void insertUser(UserVO vo) throws Exception;
	
	//선택된 글 조회해오기
	UserVO selectUser(UserVO vo) throws Exception;
	
	//글 수정
	void updateUser(UserVO vo) throws Exception;
	
	//글 삭제
	void deleteUser(UserVO vo) throws Exception;

}
