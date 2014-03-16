package indeed;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.*;


public class test {

	public static void main(String[] args) throws IOException, ParseException {
		// TODO Auto-generated method stub
		String x="October 2001 to March 2005";
		String y[]=x.split(" to ");
		System.out.print(y[0]+" "+ y[1]);
/*System.out.println("Hello");
	FileReader reader = new FileReader("json/resumes-json.txt");
	 JSONParser jsonParser = new JSONParser();
    JSONObject outerObject = (JSONObject) jsonParser.parse(reader);
     JSONArray jsonArray =(JSONArray)outerObject.get("resumes");    
    HashSet<String> skills=new HashSet<String>();
    HashMap<String,ArrayList<Integer>> hm=new HashMap<String,ArrayList<Integer>>();
    ArrayList<Integer> list=new ArrayList<Integer>();
	  System.out.println(list);
	  
	  String sk_temp=null;
    for (int i = 0;  i < jsonArray.size(); i++)
     {
       // "...and get thier component and thier value."
    	 JSONObject jsonobj=(JSONObject)jsonArray.get(i);
         //System.out.println( jsonobj.get("firstName")+" "+jsonobj.get("lastName"));
         for(String sk:jsonobj.get("skills").toString().split(",")){
        	 sk_temp=sk.trim().toLowerCase();
        	 if(sk_temp!=null&& !sk_temp.isEmpty())
              {	 
          		 skills.add(sk_temp);  
        		 list=hm.get(sk_temp);
        		 if(list!=null){
        			 list.add(i);
        		 hm.put(sk_temp, list);
        		 }
        		 else{
        			 ArrayList<Integer> newlist =new ArrayList<Integer>();
        			 newlist.add(i);
            		 hm.put(sk_temp, newlist);
        		 }
        	
              }
         }
         }
         //System.out.println( elementNames);
      /* for (String elementName : elementNames)
       {
         String value = objectInArray.getString(elementName);
         System.out.printf("name=%s, value=%s\n", elementName, value);
       }
      
         Set lis=hm.entrySet();  
         Iterator i=lis.iterator();
          while(i.hasNext()){
        	  Map.Entry<String, ArrayList<Integer>> entry=(Map.Entry)i.next();
        	  System.out.println(entry.getKey()+" "+entry.getValue());
          }
   //for(String s:skills)
//System.out.println(s);
	*/
	}

}
