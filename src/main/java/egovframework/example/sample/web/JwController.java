package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import egovframework.example.sample.service.BoardVO;
import egovframework.example.sample.service.EgovBoardService;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.SampleVO;

@Controller
public class JwController {



	/** EgovBoardService */
	@Resource(name = "boardService")
	private EgovBoardService boardService;

	// 테이블 리스트 확인 searchVO지우면 왜안됨? 뒤에것도 다 연관,,?
	@RequestMapping(value = "/index.do")
	public String jwList(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws Exception {

		List<BoardVO> list =boardService.selectBoardList(searchVO);
		for(int i=0; i<list.size();i++){			
			System.out.println("제목 : " + list.get(i).getTitle());
		}
		
		model.addAttribute("resultList",list);
		 
		return "jw/select";

	}

	// 데이터 삽입. 등록 화면으로 이동
	@RequestMapping(value = "/insert.do", method = RequestMethod.GET)
	public String test(ModelMap model) throws Exception {
		System.out.println("나와라!!!");
		model.addAttribute("boardVO", new BoardVO());
		return "jw/insert";
	}
	
	
	
	//글 등록 버튼 눌렀을 때 데이터 삽입
	@RequestMapping(value = "/jwadd.do", method = RequestMethod.POST)
	public String addBoard(@ModelAttribute("boardVO") BoardVO boardVO,@ModelAttribute("searchVO") SampleDefaultVO searchVO, SampleVO sampleVO, BindingResult bindingResult, Model model, SessionStatus status)
			throws Exception {
		
		System.out.println("글 등록 동작!");
		boardService.insertBoard(boardVO);
		return "forward:/index.do";
	}

	// 수정 화면/ searVO지우면 왜 에러가 나는겨????
	@RequestMapping("/jwupdate.do")
	public String jwupdate(@ModelAttribute("boardVO") BoardVO boardVO, @RequestParam("selectedId") String id,
			@ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
		
		BoardVO boardVO1 = new BoardVO();
		boardVO1.setId(id);

		System.out.println("수정 화면!!");

/*	이렇게 하면 왜 안되나?	model.addAttribute(selectBoard(boardVO1));*/
		model.addAttribute(selectBoard(boardVO1, searchVO));
		return "jw/update";
	}
	

	// 수정화면에 글 조회해오는 것
	public egovframework.example.sample.service.BoardVO selectBoard(BoardVO boardVO,@ModelAttribute("searchVO") SampleDefaultVO searchVO) throws Exception {
		return boardService.selectBoard(boardVO);
	}

	
	//수정버튼 클릭시 
	@RequestMapping(value ="/updateEvent.do", method = RequestMethod.POST)
	public String updateEvent(@ModelAttribute("boardVO") BoardVO boardVO) throws Exception {
		
		boardService.updateBoard(boardVO);
		System.out.println("수정 쿼리 진행");

		return "forward:/index.do";
	}

	
	
	// 글 삭제
	@RequestMapping("/jwdelete.do")
	public String jwdelete(BoardVO boardVO, @ModelAttribute("searchVO") SampleDefaultVO searchVO, SessionStatus status) throws Exception {
		boardService.deleteBoard(boardVO);
		System.out.println("삭제!!");
		return "forward:/index.do";
	}
}
