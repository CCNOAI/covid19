package in.bushansirgur.springbootcrud.springbootcrudapi.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "imd_county_info_data", schema = "public")
public class County {
	
	@Id
	//@Column (name = "id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	//@Column (name = "county_fips_code")
	private Integer county_fips_code;
	//@Column (name = "state_fips_code")
	private Integer state_fips_code;
	//@Column (name = "imd")
	private Integer imd;
	//@Column (name = "value")
	private Float value;
	//@Column (name = "state")
	private String state;
	//@Column (name = "county")
	private String county;
	
	public County() {
    }

    public County(int id, String name, int county_fips_code, int state_fips_code, int imd, float value, String state, String county) {
        this.id = id;
        this.county_fips_code = county_fips_code;
        this.state_fips_code = state_fips_code;
        this.imd = imd;
        this.value = value;
        this.state = state;
        this.county = county;
    }
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getcounty_fips_code() {
		return county_fips_code;
	}
	public void setcounty_fips_code(Integer county_fips_code) {
		this.county_fips_code = county_fips_code;
	}
	public Integer getstate_fips_code() {
		return state_fips_code;
	}
	public void setstate_fips_code(Integer state_fips_code) {
		this.state_fips_code = state_fips_code;
	}
	public Integer getimd() {
		return imd;
	}
	public void setimd(Integer imd) {
		this.imd = imd;
	}
	public Float getvalue() {
		return value;
	}
	public void setvalue(Float value) {
		this.value = value;
	}
	public String getstate() {
		return state;
	}
	public void setstate(String state) {
		this.state = state;
	}
	public String getcounty() {
		return county;
	}
	public void setcounty(String county) {
		this.county = county;
	}
	
	
	//@Override
	//public String toString() {
	//	return "Employee [id=" + id + ", name=" + name + ", gender=" + gender + ", department=" + department + ", dob="
	//			+ dob + "]";
	//}
	
}