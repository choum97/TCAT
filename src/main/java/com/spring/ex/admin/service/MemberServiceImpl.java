package com.spring.ex.admin.service;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.MemberDAO;
import com.spring.ex.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	@Inject
	private MemberDAO dao;

	// author 김요한
	// 회원 로그인
	@Override
	public MemberVO Login(MemberVO vo) throws Exception {
		return dao.Login(vo);
	}

	// 회원 로그아웃
	@Override
	public void logout(HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		out.println("<script>location.href='home';</script>");
		out.close();
	}
	// author 김요한

	// 아이디 중복 검사(AJAX)
	@Override
	public void check_id(String id, HttpServletResponse response) throws Exception {
		PrintWriter out = response.getWriter();
		out.println(dao.check_id(id));
		out.close();
	}

	

	// 로그인
	@Override
	public MemberVO login(MemberVO vo, HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		// 등록된 아이디가 없으면
		if (dao.check_id(vo.getMember_id()) == 0) {
			out.println("<script>");
			out.println("alert('등록된 아이디가 없습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return null;
		} else {
			String pw = vo.getMember_pw();
			vo = dao.login(vo.getMember_id());
			// 비밀번호가 다를 경우
			if (!vo.getMember_pw().equals(pw)) {
				out.println("<script>");
				out.println("alert('비밀번호가 다릅니다.');");
				out.println("history.go(-1);");
				out.println("</script>");
				out.close();
				return null;
				// 이메일 인증을 하지 않은 경우
			} else if (!vo.getApproval_status().equals("true")) {
				out.println("<script>");
				out.println("alert('이메일 인증 후 로그인 하세요.');");
				out.println("history.go(-1);");
				out.println("</script>");
				out.close();
				return null;
				// 로그인 일자 업데이트 및 회원정보 리턴
			} else {
				dao.update_log(vo.getMember_id());
				return vo;
			}
		}
	}

	// 비밀번호 찾기 이메일발송
	@Override
	public void sendEmail(MemberVO vo, String div) throws Exception {
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.gmail.com"; // 네이버 이용시 smtp.naver.com
		String hostSMTPid = "capbread22@gmail.com";
		String hostSMTPpwd = "서버 이메일 비번(보내는 사람 이메일 비번)";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "capbread22@gmail.com";
		String fromName = "손호영";
		String subject = "";
		String msg = "";

		if (div.equals("find_pw")) {
			subject = "베프마켓 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += vo.getMember_id() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += vo.getMember_pw() + "</p></div>";
		}

		// 받는 사람 E-Mail 주소
		String mail = vo.getMember_email();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(465); // 네이버 이용시 587

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}

	// 비밀번호찾기
	@Override
	public void find_pw(HttpServletResponse response, MemberVO vo) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		// 가입된 아이디가 없으면
		if (dao.check_id(vo.getMember_id()) == 0) {
			out.print("등록되지 않은 아이디입니다.");
			out.close();
		}
		// 가입된 이메일이 아니면
		else if (!vo.getMember_email().equals(dao.login(vo.getMember_id()).getMember_email())) {
			out.print("등록되지 않은 이메일입니다.");
			out.close();
		} else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			vo.setMember_pw(pw);
			// 비밀번호 변경
			dao.update_pw(vo);
			// 비밀번호 변경 메일 발송
			sendEmail(vo, "findpw");

			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
		}
	}

}