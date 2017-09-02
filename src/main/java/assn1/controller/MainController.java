package assn1.controller;

import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import assn1.model.Row;
import assn1.service.RecordService;

@Controller
public class MainController {
	
	@Autowired
	private RecordService recordService;

	@RequestMapping("/")
	public String home(@RequestParam(value="options", required=false) Integer number, HttpServletRequest request){
		if (number == null) {
			request.setAttribute("records", recordService.getRandom(10));
			request.setAttribute("num", 10);
		} else {
			if (number != 0) {
				request.setAttribute("records", recordService.getRandom(number));
				request.setAttribute("num", number);
			} else {
				request.setAttribute("records", recordService.getAllRecords());
				request.setAttribute("num", 0);
			}
		}
		return "index";
	}	
	

    @RequestMapping(value = "/resultTable", method = RequestMethod.GET)
    public String resultTable(@RequestParam("type") String type, @RequestParam("keyword") String keyword, @ModelAttribute("Row") Row row, BindingResult result,ModelMap model, HttpServletRequest 
	    request, HttpServletResponse response) {
    		ArrayList<Row> res = recordService.searchByField(type, keyword);
    		if (res == null) {
    			res = new ArrayList<Row>();
    		}
    		request.setAttribute("records", res);
    		return "resultTable";
    }
    
    
    @RequestMapping(value = "/resultTableAdv", method = RequestMethod.GET)
    public String resultTableAdv( 
    		@RequestParam(value = "agency", required=false) String agency,
    		@RequestParam(value ="headline", required=false) String headline,
    		@RequestParam(value ="publish_date", required=false) String publish_date,
    		@RequestParam(value ="city", required=false) String city,
    		@RequestParam(value ="address", required=false) String address,
    		@RequestParam(value ="position", required=false) String position,
    		@RequestParam(value ="state", required=false) String state,
    		@RequestParam(value ="content", required=false) String content,
    		@ModelAttribute("Row") Row row, 
    		BindingResult result,ModelMap model, HttpServletRequest request, HttpServletResponse response) {
    			HashMap<String,String> hm=new HashMap<String,String>();  
    			if (agency != "") {
    				hm.put("agency", agency);
    			}
    			if (headline != "") {
    				hm.put("headline", headline);
    			}
    			if (publish_date != "") {
    				hm.put("publish_date", publish_date);
    			}
    			if (city != "") {
    				hm.put("city", city);
    			}
    			if (address != "") {
    				hm.put("address", address);
    			}
    			if (position != "") {
    				hm.put("position", position);
    			}
    			if (state != "") {
    				hm.put("state", state);
    			}
    			if (content != "") {
    				hm.put("content", content);
    			} 			
    			System.out.println(hm.size());
    			request.setAttribute("records", recordService.advSearch(hm));
    			return "resultTable";
    }
    
    @RequestMapping(value = "/result/{id}", method = RequestMethod.GET)
    public String resultDetails(@PathVariable String id, HttpServletRequest request) {
    		request.setAttribute("record", recordService.searchById(Integer.parseInt(id)));
    		return "result";
    }
    
    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String resultDetails(HttpServletRequest request) {
    		return "ContactUs";
    }
    
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String result(HttpServletRequest request) {
    		return "search";
    }


}