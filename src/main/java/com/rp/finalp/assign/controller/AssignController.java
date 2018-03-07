package com.rp.finalp.assign.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rp.finalp.assign.model.vo.Assignment;
import com.rp.finalp.assign.service.AssignService;

@Controller
public class AssignController{
	@Autowired
	private AssignService assignService;
	
	@RequestMapping(value = "assInsertForm.do", method = RequestMethod.GET)
	public String assInsertFormMethod() {
		return "ass/ass";
	}
	
	@RequestMapping(value = "compileAssign.do", method = RequestMethod.POST)
	public void compileAssignMethod(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String path = request.getSession().getServletContext().getRealPath("/");
		PrintWriter out = response.getWriter();
		String filename = request.getParameter("className")+".java";
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
	
	@RequestMapping(value = "runAssign.do", method = RequestMethod.POST)
	public void runAssignMethod(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		PrintWriter out = response.getWriter();
		String filename = request.getParameter("classname").trim();
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
	
	@RequestMapping("assList.do")
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
	}
	
	
	
	
	
	
}