package com.rp.finalp.test.controller;

import java.io.BufferedInputStream;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rp.finalp.assign.model.vo.Assignment;
import com.rp.finalp.lecture.model.service.LectureService;
import com.rp.finalp.lecture.model.vo.Lecture;
import com.rp.finalp.member.model.service.MemberService;
import com.rp.finalp.test.model.service.TestService;
import com.rp.finalp.test.model.vo.Test;

@Controller
public class TestController {
	@Autowired
	private TestService testService;
	
	@Autowired
	private LectureService lectureService;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "testInsertForm.do", method = RequestMethod.GET)
	public String testInsertFormMethod() {
		return "test/test";
	}
	
	@RequestMapping(value = "testMakeForm.do", method = RequestMethod.GET)
	public String assMakeFormMethod() {
		return "test/testMakeForm";
	}
	
	@RequestMapping(value = "compileTest.do", method = RequestMethod.POST)
	public void compileAssignMethod(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String path = request.getSession().getServletContext().getRealPath("/");
		PrintWriter out = response.getWriter();
		String filename = request.getParameter("className")+"_test.java";
		File fn = new File(path+"//Files");
		fn.mkdirs();
		fn = new File(path+"//Files//"+filename);
		FileOutputStream fos = new FileOutputStream(fn);
		System.out.println(request.getParameter("code"));
		byte[] sourcecode = request.getParameter("code").getBytes();
		fos.write(sourcecode);
		String compilecmd ="javac -d " + path + "\\Files\\Classes\\ " + path + "\\Files\\" + filename;
		Process error = Runtime.getRuntime().exec(compilecmd);
		BufferedReader br = new BufferedReader(new InputStreamReader(error.getErrorStream()));
		String res="";
		while(true){
			String str = br.readLine();
			if(str!=null){
				res+=str;
				res+="\n";
			}
			else{
				break;
			}
		}
		if(res.equals("")){
			res="Compiled Successfully";
		}
		out.println(res);
		br.close();
		fos.close();
		/*
		PrintWriter pw = response.getWriter();
		pw.println("<html><body>");
		pw.println("<h1>hello world !! </h1>");
		pw.println("</body></html>");
		*/
	}
	
	@RequestMapping(value = "runTest.do", method = RequestMethod.POST)
	public void runTestMethod(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		PrintWriter out = response.getWriter();
		String filename = (request.getParameter("classname")+"_test").trim();
		String path = request.getSession().getServletContext().getRealPath("/");
		File fn = new File(path+"//Files//Classes");
		fn.mkdirs();
		String runcmd = "java -cp " + path + "\\Files\\Classes\\ " + filename;
		Process exe = Runtime.getRuntime().exec(runcmd);
		try{
			exe.waitFor();
			BufferedReader bin = new BufferedReader(new InputStreamReader(exe.getInputStream()));
			BufferedReader berr = new BufferedReader(new InputStreamReader(exe.getErrorStream()));
			String res="";
			while(true){
				String temp=bin.readLine();
				if(temp==null){
					break;
				}
				else{
					res+=temp;
				}
			}
			if(res.equals("")){
				while(true){
					String temp = berr.readLine();
					if(temp==null){
						break;
					}
					else{
						res+=temp;
					}
				}
			}
			out.println(res);
			bin.close();
			berr.close();
			out.close();
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
	
	@RequestMapping("testList.do")
	public String testListMethod(Model model, HttpServletRequest request,@RequestParam(value="tutor_no") int tutor_no,Lecture lecture) {
		
		model.addAttribute("tutor_no",tutor_no);
		model.addAttribute("Lecture",lectureService.selectTutorLecture(tutor_no));
		//model.addAttribute("testList",testService.testList(tutor_no));
		int checkApply=memberService.checkApply(lecture);
		model.addAttribute("checkApply",checkApply);
		int checkReady = memberService.checkReady(lecture);
		model.addAttribute("checkReady",checkReady);
		
		int currentPage = 1;
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int limit = 10;
		int listCount = testService.listCount();
		int maxPage = (int)((double)listCount / limit + 0.9);
		int startPage = ((int)((double)currentPage / limit + 0.9)-1)*limit +1;
		int endPage = startPage + limit -1;
		int startRow = (currentPage - 1)*limit + 1;
		int endRow = startRow + limit -1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow",endRow);
		map.put("tutor_no", tutor_no);
		
		List<Test> list = testService.selectTestList(map);
		
		if(maxPage < endPage)
			endPage = maxPage;
		
		model.addAttribute("testList",list);
		model.addAttribute("limit",limit);
		model.addAttribute("currentPage",currentPage);
		model.addAttribute("maxPage",maxPage);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
		
		return "tutor/testListView";
	}
	
	@RequestMapping("testDetail.do")
	public String testSelectOneMethod(Test test,Model model,@RequestParam(value="tutor_no") int tutor_no,@RequestParam(value="test_no") int test_no,@RequestParam(value="test_sub_no") int test_sub_no,Lecture lecture) {
		model.addAttribute("tutor_no",tutor_no);
		model.addAttribute("Lecture",lectureService.selectTutorLecture(tutor_no));
		int checkApply=memberService.checkApply(lecture);
		model.addAttribute("checkApply",checkApply);
		int checkReady=memberService.checkReady(lecture);
		model.addAttribute("checkReady",checkReady);
		model.addAttribute("test_sub_no", test_sub_no);
		Test test1=testService.selectTest(test_no);
		model.addAttribute("test",test1);
		return "tutor/testDetailView";
	}
	
	@RequestMapping("/testdownfile.do")
	public void fileDownload(
			@RequestParam(value="rfile") String rfileName, 
			@RequestParam(value="ofile") String ofileName,
			HttpServletResponse response,
			HttpServletRequest request){
		// 프로젝트 내에 파일이 저장된 곳의 위치를 얻어옴
		String saveFolder = request.getSession()
			   .getServletContext().getRealPath("/Files/");			 
		BufferedInputStream buf = null;
		ServletOutputStream downOut = null;
			 
		try {		  
		   downOut = response.getOutputStream();
		   File downfile = new File(saveFolder + "/" + ofileName);
		   response.setContentType("text/plain; charset=utf-8");		
			//한글 파일명 인코딩 처리
			response.addHeader("Content-Disposition", "attachment; filename=\"" + 
			 new String(ofileName.getBytes("UTF-8"), "ISO-8859-1") + 
			 "\"");
		   response.setContentLength((int)downfile.length());
				  
		   FileInputStream input = new FileInputStream(downfile);
		   buf = new BufferedInputStream(input);
		   int readBytes = 0;

		   while ((readBytes = buf.read()) != -1){
			downOut.write(readBytes);
		   }
		   downOut.close();
		   buf.close();
		} catch (Exception e) {
		   e.printStackTrace();
		}
		
	}
	
	@RequestMapping("/testdelete.do")
	public String assdeleteMethod(Test test,@RequestParam(value="tutor_no") int tutor_no,Model model) {
		model.addAttribute("tutor_no",tutor_no);
		testService.testDeleteone(test);
		return "redirect:classManageTest.do";
	}
	
	@RequestMapping(value="teststart.do",method=RequestMethod.POST)
	public void test3Method(HttpServletResponse response)throws IOException{

		//List를 json 배열로 만들어서, 뷰로 리턴 처리함
		List<Test> list = testService.selectTestAll();

		
		//전송용 최종 json 객체 생성
		JSONObject sendJson = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		//list를 jarr로 복사하기
		for(Test test : list) {
			//user 정보 저장할 json 객체 생성
			JSONObject jtest = new JSONObject();
			jtest.put("question", test.getTest_pro());
			jtest.put("answer", test.getTest_answer());
/*			jtest.put("testno", test.getTest_no());
			jtest.put("comment", test.getTest_comment());
			jtest.put("regdate", test.getTest_reg_date());
			jtest.put("date",test.getTest_date());
			jtest.put("orfile",test.getTest_orfile());
			jtest.put("refile",test.getTest_refile());
			jtest.put("cate",test.getTest_cate());
			jtest.put("title",test.getTest_title());
			jtest.put("cnt",test.getTest_cor_cnt());
			jtest.put("cod",test.getTest_res_cod());
			jtest.put("ans",test.getTest_res_ans());
			jtest.put("writer",test.getTest_writer());
			jtest.put("maker",test.getTest_maker());
			jtest.put("lec",test.getTest_lec_id());
			jtest.put("tcate",test.getTest_tcate_id());*/

			jarr.add(jtest);
		}
		sendJson.put("list", jarr);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println(sendJson.toJSONString());
		out.flush();
		out.close();
				
	}
	
	@RequestMapping(value = "submitTest.do", method = RequestMethod.POST)
	public void submitTestMethod(Test test, HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String path = request.getSession().getServletContext().getRealPath("/");
		PrintWriter out = response.getWriter();
		String filename = request.getParameter("className")+"_test.java";
		String tutorno = request.getParameter("tutorno");
		File fn = new File(path+"//Files//Classes//"+tutorno);
		fn.mkdirs();
		fn = new File(path+"//Files//Classes//"+tutorno+"//"+filename);
		FileOutputStream fos = new FileOutputStream(fn);
		System.out.println(request.getParameter("code"));
		byte[] sourcecode = request.getParameter("code").getBytes();
		fos.write(sourcecode);
		String compilecmd ="javac -d " + path + "\\Files\\Classes\\" + tutorno + " \\" + path + "\\Files\\" + filename;
		
		System.out.println(test);
		testService.insertTest(test);		
		response.setContentType("text/html; charset=utf-8");
		
		if(request.getParameter("submit").equals("sub")) {
			out.append("ok");
			out.flush();
		}else {
			out.append("fail");
			out.flush();
		}
		out.close();
		
		fos.close();
	}
	
	@RequestMapping(value="makeTest.do",method=RequestMethod.POST)
	public String assMakeMethod(Test test,
			HttpServletResponse response) throws IOException{
		testService.makeTest(test);
		return "home";

	}
}
