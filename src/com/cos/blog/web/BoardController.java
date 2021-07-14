package com.cos.blog.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.blog.Util.Script;
import com.cos.blog.domain.board.dto.SaveReqDto;
import com.cos.blog.domain.user.User;
import com.cos.blog.service.BoardService;
import com.cos.blog.service.UserService;

// 접속 주소 = http://localhost:8000/blog2/board
@WebServlet("/board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BoardController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cmd = request.getParameter("cmd");
		//http://localhost:8000/blog2/board?cmd=
		BoardService boardService = new BoardService();
		HttpSession session = request.getSession();
		
		if(cmd.equals("saveForm")) {
			//http://localhost:8000/blog2/board?cmd=saveForm
			//페이지 뿌리기
			User principal = (User)session.getAttribute("principal"); //로그인 되었는지 인증
			if(principal != null) {
				response.sendRedirect("board/saveForm.jsp");	
			}else {
				response.sendRedirect("user/loginForm.jsp");
			}
		}else if(cmd.equals("save")) {
			//로그인된 유저ID
			int userId = Integer.parseInt(request.getParameter("userId"));
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			SaveReqDto dto = new SaveReqDto();
			dto.setUserId(userId);
			dto.setTitle(title);
			dto.setContent(content);
			
			int result = boardService.글쓰기(dto);
			if(result == 1) { //정상
				response.sendRedirect("index.jsp");
			}else {
				Script.back(response, "글쓰기 실패");
			}
		}
		
	}

}
