package assn1.dao;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Random;
import java.util.stream.IntStream;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Repository;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.xml.XmlMapper;

import assn1.model.Row;
@Repository
public class Records {
	private Row[] record;
	private ArrayList<Row> records;
	
	public Records() {
		System.out.println("start parsing");
	    ObjectMapper objectMapper = new XmlMapper();
	    try {
			this.record = objectMapper.readValue(
			        StringUtils.toEncodedString(Files.readAllBytes(Paths.get("./src/main/resources/data.xml")), StandardCharsets.UTF_8),
			        Row[].class);
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    records = new ArrayList<Row>(Arrays.asList(record));
	}
	
	public ArrayList<Row> getAllRecords() {
		return this.records;
	}
	
	public ArrayList<Row> getRandom(int totalNumber) {
		Random random = new Random();
		ArrayList<Row> resultList = new ArrayList<Row>();
		int max = this.records.size();
		int min = 1;
		IntStream stream = random.ints(totalNumber, min, max);
		stream.forEach((i) -> {
			resultList.add(this.records.get(i));
		});
		return resultList;
	}
	
	public ArrayList<Row> searchByField(String key, String content) {
		ArrayList<Row> result = new ArrayList<Row>();
		for (Row r: this.records) {
			if (r.Mapping(key).contains(content)) {
				result.add(r);
			}
		}
		return result;
	}
	
	public ArrayList<Row> advSearch(HashMap<String,String> hm) {
		ArrayList<Row> result = new ArrayList<Row>();
		for (Row r: this.records) {
			if (r.match(hm)) {
				result.add(r);
			}
		}
		return result;	
	}
	
	
	public Row searchById(int id) {
		for (Row r: this.records) {
			if (Integer.parseInt(r.getId()) == id) {
				return r;
			}
		}
		return null;
	}
	
	
}