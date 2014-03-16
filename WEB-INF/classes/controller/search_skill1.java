package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;



import databeans.Candidate;
import model.Model;
import model.MyDAOException;

public class search_skill1 extends Action {
	
	public search_skill1(Model model) {
		// TODO Auto-generated constructor stub
	}
	public String getName() { return "search_skill1.do"; }
	 public String perform(HttpServletRequest request) {
		 System.out.println();
		 request.getSession().setAttribute("cands", request.getSession().getAttribute("cand_list"));
			return "search1.jsp";
	 }
	 }

