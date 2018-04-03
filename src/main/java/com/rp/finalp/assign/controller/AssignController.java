package com.rp.finalp.assign.controller;

import java.io.BufferedInputStream;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.rp.finalp.assign.model.service.AssignService;
import com.rp.finalp.assign.model.vo.Assignment;
import com.rp.finalp.member.model.service.MemberService;
import com.rp.finalp.member.model.vo.Member;

@Controller
public class AssignController{
	@Autowired
	private AssignService assignService;
	
	@RequestMapping(value = "loginTestForm.do", method = RequestMethod.GET)
	public String loginTest(Locale locale, Model model) {
		//logger.info("Welcome home! The client locale is {}.", locale);

		
		return "loginTest";
	}
	@RequestMapping(value = "loginTestBackForm.do", method = RequestMethod.GET)
	public String lobinTestBack(Locale locale, Model model) {
		//logger.info("Welcome home! The client locale is {}.", locale);

		
		return "loginTestBack";
	}
	
	@RequestMapping(value = "assInsertForm.do", method = RequestMethod.GET)
	public String assInsertFormMethod() {
		return "ass/ass";
	}
	
	@RequestMapping(value = "assMakeForm.do", method = RequestMethod.GET)
	public String assMakeFormMethod() {
		return "ass/assMakeForm";
	}
	
	
	@RequestMapping(value = "compileAssign.do", method = RequestMethod.POST)
	public void compileAssignMethod(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String path = request.getSession().getServletContext().getRealPath("/");//루트경로
		PrintWriter out = response.getWriter();	//웹단에 출력
		String filename = request.getParameter("className")+".java";	//.java로 파일저장
		File fn = new File(path+"//Files");	//폴더만들기1
		fn.mkdirs();	//폴더만들기2
		fn = new File(path+"//Files//"+filename);	//폴더에 파일넣기1
		FileOutputStream fos = new FileOutputStream(fn);	//폴더에 파일넣기2(스트림열기)
		System.out.println(request.getParameter("code"));	//코드를 콘솔에 찍어보기
		byte[] sourcecode = request.getParameter("code").getBytes();	//코드를 바이트배열로 만들기
		fos.write(sourcecode);	//폴더에파일넣기3(파일에 코드 쓰기)
		String compilecmd ="javac -d " + path + "\\Files\\Classes\\ " + path + "\\Files\\" + filename;//도스상에서 컴파일 하는 실행구문과 동일한 스트링
		//에러에 대한 처리
		Process error = Runtime.getRuntime().exec(compilecmd);//이 구문을 쓰면 프로세스상에서 컴파일 실행됨
		BufferedReader br = new BufferedReader(new InputStreamReader(error.getErrorStream()));//프로세스로 실행한 컴파일을 불러오는 스트림 열기
		String res="";
		while(true){
			String str = br.readLine();//한줄씩 일거오기
			if(str!=null){
				res+=str;//읽어온거 res에 담기
				res+="\n";//줄바꿈해서 읽어오는거니까 필수
			}
			else{
				break;
			}
		}
		if(res.equals("")){
			res="Compiled Successfully";	//컴파일이 성공하면 웹단에 출력될 구문
		}
		out.println(res); //웹단에 출력
		br.close();
		fos.close();
		/*
		PrintWriter pw = response.getWriter();
		pw.println("<html><body>");
		pw.println("<h1>hello world !! </h1>");
		pw.println("</body></html>");
		*/
	}
	
	@RequestMapping(value = "runAssign.do", method = RequestMethod.POST)
	public void runAssignMethod(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/plain;charset=utf-8");
		PrintWriter out = response.getWriter();
		String filename = request.getParameter("classname").trim();
		String path = request.getSession().getServletContext().getRealPath("/");
		File fn = new File(path+"//Files//Classes");
		fn.mkdirs();
		String runcmd = "java -cp " + path + "\\Files\\Classes\\ " + filename;//도스상에서 컴파일 이후에 실행하는 구문(코드실행구문)
		Process exe = Runtime.getRuntime().exec(runcmd);//실행된걸 프로세스로 실행
		try{
			exe.waitFor();
			BufferedReader bin = new BufferedReader(new InputStreamReader(exe.getInputStream()));	//프로세스로 실행한 결과 
			//에러처리
			BufferedReader berr = new BufferedReader(new InputStreamReader(exe.getErrorStream()));	//에러관련 스트림열기
			String res="";
/*			while(true){
				String temp=bin.readLine();
				if(temp==null){
					break;
				}
				else{
					res+=temp;
				}
			}*/
			String temp=null;
			while ((temp = bin.readLine()) != null) {
				res+=temp;
				res+="\n";
			}
			if(res.equals("")){
				while(true){
					String temp1 = berr.readLine();
					if(temp==null){
						break;
					}
					else{
						res+=temp1;
					}
				}
			}
		
			byte[] resb=res.getBytes("iso-8859-1");

			out.print(resb);
			bin.close();
			berr.close();
			out.close();
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
	
/*	@RequestMapping("assList.do")
	public String assListMethod(Model model, HttpServletRequest request) {
		int currentPage = 1;
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int limit = 10;
		int listCount = assignService.listCount();
		int maxPage = (int)((double)listCount / limit + 0.9);
		int startPage = ((int)((double)currentPage / limit + 0.9)-1)*limit +1;
		int endPage = startPage + limit -1;
		int startRow = (currentPage - 1)*limit + 1;
		int endRow = startRow + limit -1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow",endRow);
		
		List<Assignment> list = assignService.selectAssignList(map);
		
		if(maxPage < endPage)
			endPage = maxPage;
		
		model.addAttribute("assList",list);
		model.addAttribute("limit",limit);
		model.addAttribute("currentPage",currentPage);
		model.addAttribute("maxPage",maxPage);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
		
		return "ass/assListView";
	}*/
	
	@RequestMapping("assDetailForm.do")
	public String assSelectOneMethod(Assignment ass,Model model) {
		Assignment ass1=assignService.selectAss(ass);
		model.addAttribute("ass",ass1);
		return "ass/assDetail";
	}
	
	@RequestMapping(value = "submitAssign.do", method = RequestMethod.POST)
	public void submitAssignMethod(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String path = request.getSession().getServletContext().getRealPath("/");
		PrintWriter out = response.getWriter();
		String filename = request.getParameter("className")+".java";
		String tutorno = request.getParameter("tutorno");
		File fn = new File(path+"//Files//Classes//"+tutorno);
		fn.mkdirs();
		fn = new File(path+"//Files//Classes//"+tutorno+"//"+filename);
		FileOutputStream fos = new FileOutputStream(fn);
		System.out.println(request.getParameter("code"));
		byte[] sourcecode = request.getParameter("code").getBytes();
		fos.write(sourcecode);
		String compilecmd ="javac -d " + path + "\\Files\\Classes\\" + tutorno + " \\" + path + "\\Files\\" + filename;
		fos.close();
	}
	
	@RequestMapping("/assdownfile.do")
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
	
	@RequestMapping("/assdelete.do")
	public String assdeleteMethod(Assignment ass) {
		assignService.assDeleteone(ass);
		return "redirect:assList.do";
	}
	

	@RequestMapping(value="test1.do",method=RequestMethod.POST)
	public void test1Method(Assignment ass, @RequestParam("submit") String submit,
			HttpServletResponse response) throws IOException{
		System.out.println(ass);
		assignService.insertAss(ass);
		assignService.updateAssCount(ass);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out=response.getWriter();
		if(submit.equals("sub")) {
			out.append("ok");
			out.flush();
		}else {
			out.append("fail");
			out.flush();
		}
		out.close();
	}
	


	@RequestMapping(value="makeAss.do",method=RequestMethod.POST)
	public String assMakeMethod(Assignment ass,
			HttpServletResponse response) throws IOException{
		assignService.makeAss(ass);
		return "home";

	}
}
