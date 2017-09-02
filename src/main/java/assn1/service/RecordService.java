package assn1.service;

import java.util.ArrayList;
import java.util.HashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import assn1.dao.Records;
import assn1.model.Row;

@Service
public class RecordService {
	@Autowired
	private Records recordDao = new Records();

	public ArrayList<Row> getAllRecords() {
		return this.recordDao.getAllRecords();
	}
	
	public ArrayList<Row> getRandom(int number) {
		
		return this.recordDao.getRandom(number);
	}
	
	public ArrayList<Row> getHundred() {
		return this.recordDao.getAllRecords();
	}
	
	public ArrayList<Row> getThousand() {
		return this.recordDao.getAllRecords();
	}
    
    public ArrayList<Row> searchByField(String key, String content) {
    		return this.recordDao.searchByField(key, content);
    }
    
    public Row searchById(int id) {
    		return this.recordDao.searchById(id);
    }
    
    public ArrayList<Row> advSearch(HashMap<String,String> hm) {
    		return this.recordDao.advSearch(hm);
    }
}
