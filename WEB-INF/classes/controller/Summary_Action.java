package controller;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import model.CandidateDAO;
import model.Model;

public class Summary_Action extends Action {
	private CandidateDAO cdao;
	private	 HashSet<String> skills=new HashSet<String>();
	private	 HashMap<String,ArrayList<Integer>> hm=new HashMap<String,ArrayList<Integer>>();

	public Summary_Action(Model model) {
		// TODO Auto-generated constructor stub
cdao=model.getUserDAO();
	}
	public String getName() { return "summary.do"; }
	 public String perform(HttpServletRequest request)  {
		 try {
			cdao.parse(request);
			cdao.skill_list();
		} catch (IOException | ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	     	        	      
		 return "summary.jsp";
	 }
}
