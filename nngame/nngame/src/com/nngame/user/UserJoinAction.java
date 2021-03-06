package com.nngame.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nngame.action.Action;
import com.nngame.action.ActionForward;
import com.nngame.encrypt.SHA256;
import com.nngame.user.dao.UserDAO;
import com.nngame.user.dao.UserDTO;

public class UserJoinAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserDAO udao = new UserDAO();
		UserDTO user = new UserDTO();
		ActionForward forward = new ActionForward();
		
		//시퀀스, #{userid}, #{userpw}, #{usernickname}, #{userphone}, #{userbirth}, SYSDATE 
		user.setUser_email(request.getParameter("user_email"));
		// 비밀번호 해싱
		user.setUser_pwd(SHA256.getSHA256(request.getParameter("user_pwd")));
		user.setUser_nickname(request.getParameter("user_nickname"));
		user.setUser_phone(request.getParameter("user_phone"));
		user.setUser_birth(request.getParameter("user_birth"));
		
		if(udao.join(user)) {		// 회원가입 성공
			request.setAttribute("joinOk", true);
			forward.setPath("/user/login");
		} else {					// 회원가입 실패
			System.out.println("회원가입 실패 이메일 중복");
			request.setAttribute("joinOk", false);
			forward.setPath("/user/join");
		}
		
		forward.setRedirect(false);
		
		return forward;
	}
}
