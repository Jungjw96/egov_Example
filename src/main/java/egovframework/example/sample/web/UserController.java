package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.example.sample.service.UserService;
import egovframework.example.sample.service.UserVO;

@Controller
public class UserController {

	@Resource(name="UserService")
	private UserService userService;
	
	// 테이블 리스트 확인
		@RequestMapping(value = "/userSelect.do")
		public String jwList(ModelMap model) throws Exception {

			List<UserVO> list =userService.selectUserList();
			model.addAttribute("jwresult", list);
			System.out.println("테이블 목록");
			return "test/select";

		}
		
		//등록화면
		@RequestMapping(value = "userinsert.do")
		public String insert(ModelMap model) throws Exception{
			model.addAttribute("userVO", new UserVO());
			return "test/insert";
		}
		
		//등록이벤트
		@RequestMapping(value="useradd.do")
		public String adduser(@ModelAttribute("userVO") UserVO userVO )throws Exception{
		
			System.out.println("사용자 등록!!!");
			userService.insertUser(userVO);
		return "forward:/userSelect.do";
		}
		
/*		//수정화면
		@RequestMapping(value="userupdate.do")
		public String update(@ModelAttribute("vo") UserVO vo, @RequestParam("selectedName") String name, Model model)
		throws Exception{
			System.out.println("수정화면");
			UserVO uu = new UserVO();
			uu.setUsername(name);
		
			UserVO res = (UserVO) userService.selectUser(uu);
			System.out.println(res.getUserid());
			
		
			model.addAttribute("tttt", userService.selectUser(uu));
			
			
			
			return "test/update";
		}*/
		   //수정화면
	    @RequestMapping(value="userupdate.do")
	    public String update(@ModelAttribute("vo") UserVO vo, @RequestParam("selectedName") String name, Model model)
	    throws Exception{
	       System.out.println("수정화면");
	       UserVO uu = new UserVO();
	       uu.setUsername(name);
	    
	       UserVO res = (UserVO) userService.selectUser(uu);
	       System.out.println(res.getUserid());
	 
	       model.addAttribute("jwResult", res);
	     
	       return "test/update";
	    }
		
		/*//수정화면에 글 조회 Q. 위에서 uu에 name을 받아서 selectUser메소드를 타는데 이 안에 있는 userVO는뭐지
		public UserVO selectUser(UserVO userVO) throws Exception{
			return userService.selectUser(userVO);
		}*/
		
		
		//수정 이벤트
		@RequestMapping(value = "userupdateEvent.do")
		public String upevent(@ModelAttribute("ss") UserVO userVO) throws Exception{
			userService.updateUser(userVO);
			return "forward:/userSelect.do";
		}
		
		
		
		//글 삭제 어떤건 value들어가고 어떤건 안들어가
		@RequestMapping("userdelete.do")
		public String delete(UserVO vv) throws Exception{
			System.out.println("삭제화면");
			System.out.println(vv.getUsername()+"이름!!");
			userService.deleteUser(vv);
			System.out.println("삭제!!");
			return "forward:/userSelect.do";
			
		}
		
}

