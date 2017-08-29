package assn1.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import assn1.model.Row;
import assn1.model.RowJsonObject;
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
	

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String printWelcome(@ModelAttribute("Row") Row row, BindingResult result,ModelMap model, HttpServletRequest 
	    request, HttpServletResponse response) {
    		request.setAttribute("records", recordService.getAllRecords());
    		return "search";

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

//    @RequestMapping(value = "/springPaginationDataTables.web", method = RequestMethod.GET, produces = "application/json")
//    public @ResponseBody String springPaginationDataTables(HttpServletRequest  request) throws IOException {
//		
//	    	//Fetch the page number from client
//	    	Integer pageNumber = 0;
//	    	if (null != request.getParameter("iDisplayStart"))
//	    		pageNumber = (Integer.valueOf(request.getParameter("iDisplayStart"))/10)+1;		
//	    	
//	    	//Fetch search parameter
//	    	String searchParameter = request.getParameter("sSearch");
//	    	
//	    	//Fetch Page display length
//	    	Integer pageDisplayLength = Integer.valueOf(request.getParameter("iDisplayLength"));
//	    	
//	    	System.out.println(searchParameter);
//	    	
//	    	//Create page list data
//	    	List<Row> recordList = recordService.getRandom(100);
//	    	int totalPages = 100/pageDisplayLength;
//	    	recordList = recordList.subList(pageNumber*pageDisplayLength, (pageNumber+1)*pageDisplayLength);
//		
//		
//		
//		RowJsonObject RowJsonObject = new RowJsonObject();
//		//Set Total display record
//		RowJsonObject.setiTotalDisplayRecords(recordService.getRandom(100).size());
//		//Set Total record
//		RowJsonObject.setiTotalRecords(recordService.getRandom(100).size());
//		RowJsonObject.setAaData(recordList);
//		
//		Gson gson = new GsonBuilder().setPrettyPrinting().create();
//		String json2 = gson.toJson(RowJsonObject);
//	
//		return json2;
//    }

}