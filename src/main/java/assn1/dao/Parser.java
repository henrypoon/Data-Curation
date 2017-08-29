package assn1.dao;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Random;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Repository;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.xml.XmlMapper;

import assn1.model.Row;
@Repository
public class Parser {
	private Row[] record;
	private ArrayList<Row> records;
	
	public Parser() {
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
	
	public ArrayList<Row> getRandom(int number) {
		int r=0;
		Random rd = new Random();
		int max = this.records.size();
		ArrayList<Row> result = new ArrayList<Row>();
		for (int i=0; i<number; i++) {
			r=rd.nextInt((max-0)+1) + 0;
			result.add(this.records.get(r));
		}
		return result;
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
	
}