package com.rp.finalp.member.model.service;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rp.finalp.lecture.model.vo.Lecture;
import com.rp.finalp.member.model.dao.MemberDao;
import com.rp.finalp.member.model.vo.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	//private MemberDao memberDao = new MemberDao();
	
		@Autowired
		private MemberDao memberDao;
		

		@Override
		public Member loginCheck(Member member) {
			return memberDao.loginCheck(member);
		}

		/*@Override
		public int insertMember(Member member) {
			return memberDao.insertMember(member);
		}*/
		
		@Override
		public int insertProMember(Member member) {
			member.setMem_app_key(create_key());
			send_mail(member,"enroll");
			return memberDao.insertProMember(member);
		}
		
		@Override
		public int insertStMember(Member member) {
			member.setMem_app_key(create_key());
			send_mail(member,"enroll");
			return memberDao.insertStMember(member);
		}

		@Override
		public int updateMember(Member member) {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int deleteMember(String userId) {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public ArrayList<Member> memberAll() {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public int updateMemberImg(Member member) {
			return memberDao.updateMemberImg(member);
		}

		@Override 
		public List<Member> selectTutorList(){
			return memberDao.selectTutorList();
		}
		
		@Override
		public int selectTutorCount() {
			return memberDao.selectTutorCount();
		}

		@Override
		public List<Member> selectReview(int tutor_no) {
			
			return memberDao.selectReview(tutor_no);
		}

		@Override
		public int selectReviewCount(int tutor_no) {
			
			return memberDao.selectReviewCount(tutor_no);
		}
		
		@Override
		public int insertApply(Lecture lecture) {
			return memberDao.insertApply(lecture);
		}
		
		@Override
		public int checkApply(Lecture lecture) {
			return memberDao.checkApply(lecture);
		}

		@Override
		public int deApply(Lecture lecture) {
			return memberDao.deApply(lecture);
		}

		@Override
		public int insertReview(Member member) {
			return memberDao.insertReview(member);
		}

		@Override
		public int checkReady(Lecture lecture) {
			return memberDao.checkReady(lecture);
		}

		@Override
		public Member todaycheck() {
			return memberDao.todaycheck();
		}

		@Override
		public int updateCount(Member today) {
			return memberDao.updateCount(today);
		}

		@Override
		public void insertCount() {
			memberDao.insertCount();
		}
		
		@Override
		public List<Member> selectStudentList(HashMap<String, Object> map) {
			return memberDao.selectStudentList(map);
		}

		@Override
		public int countStudentList(int tutor_no) {
			return memberDao.countStudentList(tutor_no);
		}
		
		@Override
		public List<Member> applyClassList(HashMap<String, Object> map) {
			return memberDao.applyClassList(map);
		}
		
		@Override
		public int countApplyList(int tutor_no) {
			return memberDao.countApplyList(tutor_no);
		}
		
		//아이디 중복 확인
		@Override
		public int checkId(Member member) {
					
			return memberDao.checkId(member);
		}
		
		@Override
		public List<Member> sideListStudent(Member member) {
			return memberDao.sideListStudent(member);
		}

		@Override
		public List<Member> sideListTutor(Member member) {
			return memberDao.sideListTutor(member);
		}

		@Override
		public String create_key() {
			String key = "";
			Random rd = new Random();

			for (int i = 0; i < 8; i++) {
				key += rd.nextInt(10);
			}
			return key;

		}

		@Override
		public void send_mail(Member member, String dis) {
			// Mail Server 설정
			String charSet = "utf-8";
			String hostSMTP = "smtp.naver.com";
			String hostSMTPid = "wpdj77";
			String hostSMTPpwd = "Qorhvkdy77@@";

			// 보내는 사람 EMail, 제목, 내용
			String fromEmail = "wpdj77@naver.com";
			String fromName = "Leap";
			String subject = "";
			String msg = "";
			
			if(dis.equals("enroll")) {
				// 회원가입 메일 내용
				subject = "Leap 회원가입 인증 메일입니다.";
				msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
				msg += "<h3 style='color: blue;'>";
				msg += member.getMem_name() + "님 회원가입을 환영합니다.</h3>";
				msg += "<div style='font-size: 130%'>";
				msg += "하단의 인증 버튼 클릭 시 정상적으로 회원가입이 완료됩니다.</div><br/>";
				msg += "<form method='post' action='http://localhost:8222/finalp/appMember.do'>";
				msg += "<input type='hidden' name='mem_app_key' value='" + member.getMem_app_key() + "'>";
				msg += "<input type='submit' value='인증'></form><br/></div>";
			}else if(dis.equals("findPwd")) {
				subject = "Leap 임시 비밀번호 입니다.";
				msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
				msg += "<h3 style='color: blue;'>";
				msg += "임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
				msg += "<p>임시 비밀번호 : ";
				msg += member.getMem_pwd() + "</p></div>";
			}
			// 받는 사람 E-Mail 주소
			String mail = member.getMem_id();
			try {
				HtmlEmail email = new HtmlEmail();
				email.setDebug(true);
				email.setCharset(charSet);
				email.setSSL(true);
				email.setHostName(hostSMTP);
				email.setSmtpPort(587);

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

		@Override
		public void appMember(Member member, HttpServletResponse response) {
			response.setContentType("text/html;charset=utf-8");
			try{
				PrintWriter out = response.getWriter();
			
			if (memberDao.appMember(member) == 0) { // 이메일 인증에 실패하였을 경우
				out.println("<script>");
				out.println("alert('잘못된 접근입니다.');");
				out.println("history.go(-1);");
				out.println("</script>");
				out.close();
			} else { // 이메일 인증을 성공하였을 경우
				out.println("<script>");
				out.println("alert('인증이 완료되었습니다. 로그인 후 이용하세요.');");
				out.println("location.href='http://127.0.0.1:8222/finalp';");
				out.println("</script>");
				out.close();
			}
			}catch(Exception e) {
				System.out.println("메일인증 실패 : " + e);
			}
			
		}

		@Override
		public void findPwd(HttpServletResponse response, Member member) {
			response.setContentType("text/html;charset=utf-8");
			try{
				PrintWriter out = response.getWriter();
			
			// 아이디가 없으면
			if(memberDao.checkId(member) == 0) {
				out.print("아이디가 없습니다.");
				out.close();
			}else {
				// 임시 비밀번호 생성
				String memPwd = "";
				for (int i = 0; i < 12; i++) {
					memPwd += (char) ((Math.random() * 26) + 97);
				}
				
				member.setMem_pwd(memPwd);
				// 비밀번호 변경
				memberDao.updatePwd(member);
				// 비밀번호 변경 메일 발송
				send_mail(member, "findPwd");
	
				out.print("이메일로 임시 비밀번호를 발송하였습니다.");
				out.close();
			}
			}catch(Exception e) {
				System.out.println("비번 전송 실패 : " + e);
			}
			
		}
		

	}
