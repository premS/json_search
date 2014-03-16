package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

import javax.servlet.http.HttpServletRequest;







import org.json.simple.parser.ParseException;

import model.CandidateDAO;
import model.Model;
import model.MyDAOException;

public class Search_Action extends Action {
	private CandidateDAO cdao;
	private	 HashSet<String> skills=new HashSet<String>();
	private	 HashMap<String,HashSet<Integer>> hm=new HashMap<String,HashSet<Integer>>();
	public Search_Action(Model model) {
		// TODO Auto-generated constructor stub
		cdao=model.getUserDAO();
	}
	public String getName() { return "search.do"; }
	 public String perform(HttpServletRequest request) {
		 try {
			cdao.parse(request);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 HashSet<String> sk=cdao.skill_list();
		 StringBuilder sb=new StringBuilder();
     	for(String str:sk) {        	 
     		sb.append("'"+str+"',");
     	}
     	sb.substring(0, sb.length()-1);
		request.setAttribute("name", sb.toString());
			return "search.jsp";
	 }
}
