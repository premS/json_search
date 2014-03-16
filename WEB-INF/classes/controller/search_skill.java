package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

import javax.servlet.http.HttpServletRequest;






import org.json.simple.parser.ParseException;

import databeans.Candidate;
import model.CandidateDAO;
import model.Model;
import model.MyDAOException;

public class search_skill extends Action {
	private CandidateDAO cdao;
	private	 HashSet<String> skills=new HashSet<String>();
	private	 HashMap<String,HashSet<Integer>> hm=new HashMap<String,HashSet<Integer>>();

	public search_skill(Model model) {
		// TODO Auto-generated constructor stub
		cdao=model.getUserDAO();
	}
	public String getName() { return "search_skill.do"; }
	 public String perform(HttpServletRequest request) {	 
		String search= request.getParameter("url");
		ArrayList<Candidate> cand=new ArrayList<Candidate>(); 
		try {
				hm=cdao.parse(request);
				HashSet<Integer> pos_list=hm.get(search);
				for(int i:pos_list){
					Candidate c=new Candidate();
						c=cdao.getdata(request, i);
					System.out.println(c.getFname());
					if(c!=null)
					cand.add(c);
					request.getSession().setAttribute("cand_list",  cand);
					
				}
				
			} 
		catch (java.text.ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "search_skill1.do";
	 }
	 }

