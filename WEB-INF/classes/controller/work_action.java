package controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import model.CandidateDAO;
import model.Model;

import org.json.simple.parser.ParseException;

import databeans.Candidate;
import databeans.Education;
import databeans.work_history;

public class work_action extends Action{
	private CandidateDAO cdao;
	private	 HashSet<String> skills=new HashSet<String>();
	private	 HashMap<String,HashSet<Integer>> hm=new HashMap<String,HashSet<Integer>>();
	public work_action(Model model) {
		// TODO Auto-generated constructor stub
		cdao=model.getUserDAO();
	}
	public String getName() { return "work.do"; }
	 public String perform(HttpServletRequest request) {
		String id="";
		ArrayList<work_history> worklist=new ArrayList<work_history>();
		ArrayList<Education> edulist=new ArrayList<Education>();
Candidate ca=new Candidate();
		try {
			hm=cdao.parse(request);
			
			id=request.getSession().getAttribute("pos_id").toString();
              
				worklist=cdao.getwork(request, Integer.parseInt(id));
			edulist=cdao.getedu(request, Integer.parseInt(id));
			ca=cdao.getdata(request,Integer.parseInt(id));
			
		}  catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (java.text.ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 System.out.print("Id is"+id);
		 request.setAttribute("nam", ca.getFname()+" "+ca.getLname());
		 request.setAttribute("pid", id);		 
		 request.setAttribute("edu", edulist);
		 request.setAttribute("work", worklist);

			return "work.jsp";
	 }
}
