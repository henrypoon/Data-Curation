package assn1.model;

import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty;

public final class Row {
    @JacksonXmlProperty(localName = "_id", isAttribute = true)
    private String id;
    @JacksonXmlProperty(localName = "_uuid", isAttribute = true)
    private String uuid;
    @JacksonXmlProperty(localName = "_position", isAttribute = true)
    private String position;
    @JacksonXmlProperty(localName = "_address", isAttribute = true)
    private String address;
    @JacksonXmlProperty(localName = "agency")
    private String agency;
    @JacksonXmlProperty(localName = "headline")
    private String headline;
    @JacksonXmlProperty(localName = "city")
    private String city;
    @JacksonXmlProperty(localName = "publish_date")
    private String publish_date;
    @JacksonXmlProperty(localName = "publish_year")
    private String publish_year;
    @JacksonXmlProperty(localName = "state")
    private String state;
    @JacksonXmlProperty(localName = "content")
    private String content;
    @JacksonXmlProperty(localName = "footer_content")
    private String footer_content;
    @JacksonXmlProperty(localName = "contact1")
    private String contact1;
    @JacksonXmlProperty(localName = "contact2")
    private String contact2;
    @JacksonXmlProperty(localName = "date_entered")
    private String date_entered;
    @JacksonXmlProperty(localName = "entered_by")
    private String entered_by;
    @JacksonXmlProperty(localName = "date_last_modified")
    private String date_last_modified;
    @JacksonXmlProperty(localName = "last_modified_by")
    private String last_modified_by;
    @JacksonXmlProperty(localName = "category_tags")
    private String category_tags;
    @JacksonXmlProperty(localName = "category_tag1")
    private String category_tag1;
    @JacksonXmlProperty(localName = "category_tag2")
    private String category_tag2;
    @JacksonXmlProperty(localName = "content2")
    private String content2;
    @JacksonXmlProperty(localName = "content3")
    private String content3;
    @JacksonXmlProperty(localName = "content4")
    private String content4;
    @JacksonXmlProperty(localName = "subheadline")
    private String subheadline;
    @JacksonXmlProperty(localName = "category_tag3")
    private String category_tag3;
    @JacksonXmlProperty(localName = "category_tag4")
    private String category_tag4;
    @JacksonXmlProperty(localName = "category_tag5")
    private String category_tag5;
    @JacksonXmlProperty(localName = "contact3")
    private String contact3;
    @JacksonXmlProperty(localName = "contact4")
    private String contact4;
    
    
    
    public Row(String id, String uuid, String position, String address, String agency, String headline, String city,
			String publish_date, String publish_year, String state, String content, String footer_content,
			String contact1, String contact2, String date_entered, String entered_by, String date_last_modified,
			String last_modified_by, String category_tags, String category_tag1, String category_tag2, String content2,
			String content3, String content4, String subheadline, String category_tag3, String category_tag4,
			String category_tag5, String contact3, String contact4) {
		super();
		this.id = id;
		this.uuid = uuid;
		this.position = position;
		this.address = address;
		this.agency = agency;
		this.headline = headline;
		this.city = city;
		this.publish_date = publish_date;
		this.publish_year = publish_year;
		this.state = state;
		this.content = content;
		this.footer_content = footer_content;
		this.contact1 = contact1;
		this.contact2 = contact2;
		this.date_entered = date_entered;
		this.entered_by = entered_by;
		this.date_last_modified = date_last_modified;
		this.last_modified_by = last_modified_by;
		this.category_tags = category_tags;
		this.category_tag1 = category_tag1;
		this.category_tag2 = category_tag2;
		this.content2 = content2;
		this.content3 = content3;
		this.content4 = content4;
		this.subheadline = subheadline;
		this.category_tag3 = category_tag3;
		this.category_tag4 = category_tag4;
		this.category_tag5 = category_tag5;
		this.contact3 = contact3;
		this.contact4 = contact4;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getUuid() {
		return uuid;
	}


	public void setUuid(String uuid) {
		this.uuid = uuid;
	}


	public String getPosition() {
		return position;
	}


	public void setPosition(String position) {
		this.position = position;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getAgency() {
		return agency;
	}


	public void setAgency(String agency) {
		this.agency = agency;
	}


	public String getHeadline() {
		return headline;
	}


	public void setHeadline(String headline) {
		this.headline = headline;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getPublish_date() {
		return publish_date;
	}


	public void setPublish_date(String publish_date) {
		this.publish_date = publish_date;
	}


	public String getPublish_year() {
		return publish_year;
	}


	public void setPublish_year(String publish_year) {
		this.publish_year = publish_year;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getFooter_content() {
		return footer_content;
	}


	public void setFooter_content(String footer_content) {
		this.footer_content = footer_content;
	}


	public String getContact1() {
		return contact1;
	}


	public void setContact1(String contact1) {
		this.contact1 = contact1;
	}


	public String getContact2() {
		return contact2;
	}


	public void setContact2(String contact2) {
		this.contact2 = contact2;
	}


	public String getDate_entered() {
		return date_entered;
	}


	public void setDate_entered(String date_entered) {
		this.date_entered = date_entered;
	}


	public String getEntered_by() {
		return entered_by;
	}


	public void setEntered_by(String entered_by) {
		this.entered_by = entered_by;
	}


	public String getDate_last_modified() {
		return date_last_modified;
	}


	public void setDate_last_modified(String date_last_modified) {
		this.date_last_modified = date_last_modified;
	}


	public String getLast_modified_by() {
		return last_modified_by;
	}


	public void setLast_modified_by(String last_modified_by) {
		this.last_modified_by = last_modified_by;
	}


	public String getCategory_tags() {
		return category_tags;
	}


	public void setCategory_tags(String category_tags) {
		this.category_tags = category_tags;
	}


	public String getCategory_tag1() {
		return category_tag1;
	}


	public void setCategory_tag1(String category_tag1) {
		this.category_tag1 = category_tag1;
	}


	public String getCategory_tag2() {
		return category_tag2;
	}


	public void setCategory_tag2(String category_tag2) {
		this.category_tag2 = category_tag2;
	}


	public String getContent2() {
		return content2;
	}


	public void setContent2(String content2) {
		this.content2 = content2;
	}


	public String getContent3() {
		return content3;
	}


	public void setContent3(String content3) {
		this.content3 = content3;
	}


	public String getContent4() {
		return content4;
	}


	public void setContent4(String content4) {
		this.content4 = content4;
	}


	public String getSubheadline() {
		return subheadline;
	}


	public void setSubheadline(String subheadline) {
		this.subheadline = subheadline;
	}


	public String getCategory_tag3() {
		return category_tag3;
	}


	public void setCategory_tag3(String category_tag3) {
		this.category_tag3 = category_tag3;
	}


	public String getCategory_tag4() {
		return category_tag4;
	}


	public void setCategory_tag4(String category_tag4) {
		this.category_tag4 = category_tag4;
	}


	public String getCategory_tag5() {
		return category_tag5;
	}


	public void setCategory_tag5(String category_tag5) {
		this.category_tag5 = category_tag5;
	}


	public String getContact3() {
		return contact3;
	}


	public void setContact3(String contact3) {
		this.contact3 = contact3;
	}


	public String getContact4() {
		return contact4;
	}


	public void setContact4(String contact4) {
		this.contact4 = contact4;
	}


	public Row() {
    	
    }
	
	public String Mapping(String field) {
		if (field == "agency") {
			return this.agency;
		} else if (field == "headline") {
			return this.headline;
		} else if (field == "date") {
			return this.date_entered;
		} else if (field == "city") {
			return this.city;
		} else if (field == "position") {
			return this.position;
		} else if (field == "address") {
			return this.address;
		}
		return null;
	}


	@Override
	public String toString() {
		return "Row [id=" + id + ", uuid=" + uuid + ", position=" + position + ", address=" + address + ", agency="
				+ agency + ", headline=" + headline + ", city=" + city + ", publish_date=" + publish_date
				+ ", publish_year=" + publish_year + ", state=" + state + ", content=" + content + ", footer_content="
				+ footer_content + ", contact1=" + contact1 + ", contact2=" + contact2 + ", date_entered="
				+ date_entered + ", entered_by=" + entered_by + ", date_last_modified=" + date_last_modified
				+ ", last_modified_by=" + last_modified_by + ", category_tags=" + category_tags + ", category_tag1="
				+ category_tag1 + ", category_tag2=" + category_tag2 + ", content2=" + content2 + ", content3="
				+ content3 + ", content4=" + content4 + ", subheadline=" + subheadline + ", category_tag3="
				+ category_tag3 + ", category_tag4=" + category_tag4 + ", category_tag5=" + category_tag5
				+ ", contact3=" + contact3 + ", contact4=" + contact4 + "]";
	}
    

}
