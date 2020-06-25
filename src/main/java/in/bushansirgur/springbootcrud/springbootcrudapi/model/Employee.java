package in.bushansirgur.springbootcrud.springbootcrudapi.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "covid19user", schema = "public")
public class Employee {
	
	@Id
	@Column (name = "id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	@Column (name = "age")
	private Integer age;
	@Column (name = "zipcode")
	private Integer zipcode;
	@Column (name = "feet")
	private Integer feet;
	@Column (name = "inches")
	private Integer inches;
	@Column (name = "weight")
	private Integer weight;
	@Column (name = "sex")
	private Float sex;
	@Column (name = "race")
	private Float race;
	//@Column (name = "neversmoked")
	//private Float neverSmoked;
	@Column (name = "currentexsmoker")
	private Float currentExSmoker;
	@Column (name = "hispanic")
	private Float hispanic;
	
	
	@Column (name = "hypertensive")
	private Float hypertensive;
	@Column (name = "respiratorydisease")
	private Float respiratoryDisease;
	@Column (name = "ocs")
	private Float ocs;
	@Column (name = "chronicheartdisease")
	private Float chronicHeartDisease;
	@Column (name = "diabetes")
	private Float diabetes;
	@Column (name = "hematologicaldiagnosis")
	private Float hematologicalDiagnosis;
	@Column (name = "stroke")
	private Float stroke;
	@Column (name = "kidney")
	private Float kidney;
	@Column (name = "arthritis")
	private Float arthritis;
	@Column (name = "bmicalc")
	private Float bmiCalc;
	@Column (name = "agecalc")
	private Float ageCalc;
	@Column (name = "imdcalc")
	private Float imdCalc;
	@Column (name = "riskscore")
	private Float riskScore;


	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public Integer getZipcode() {
		return zipcode;
	}
	public void setZipcode(Integer zipcode) {
		this.zipcode = zipcode;
	}
	public Integer getFeet() {
		return feet;
	}
	public void setFeet(Integer feet) {
		this.feet = feet;
	}
	public Integer getInches() {
		return inches;
	}
	public void setInches(Integer inches) {
		this.inches = inches;
	}
	public Integer getWeight() {
		return weight;
	}
	public void setWeight(Integer weight) {
		this.weight = weight;
	}
	public Float getSex() {
		return sex;
	}
	public void setSex(Float sex) {
		this.sex = sex;
	}
	
	
	public Float getRace() {
		return race;
	}
	public void setRace(Float race) {
		this.race = race;
	}
	/*
	public Float getNeverSmoked() {
		return neverSmoked;
	}
	public void setNeverSmoked(Float neverSmoked) {
		this.neverSmoked = neverSmoked;
	}
	*/
	public Float getCurrentExSmoker() {
		return currentExSmoker;
	}
	public void setCurrentExSmoker(Float CurrentExSmoker) {
		this.currentExSmoker = CurrentExSmoker;
	}
	
	
	public Float getHispanic() {
		return hispanic;
	}
	public void setHispanic(Float hispanic) {
		this.hispanic = hispanic;
	}
	public Float getHypertensive() {
		return hypertensive;
	}
	public void setHypertensive(Float hypertensive) {
		this.hypertensive = hypertensive;
	}
	public Float getRespiratoryDisease() {
		return respiratoryDisease;
	}
	public void setRespiratoryDisease(Float respiratoryDisease) {
		this.respiratoryDisease = respiratoryDisease;
	}

	public Float getOcs() {
		return ocs;
	}
	public void setOcs(Float ocs) {
		this.ocs = ocs;
	}
	public Float getChronicHeartDisease() {
		return chronicHeartDisease;
	}
	public void setChronicHeartDisease(Float chronicHeartDisease) {
		this.chronicHeartDisease = chronicHeartDisease;
	}
	public Float getDiabetes() {
		return diabetes;
	}
	public void setDiabetes(Float diabetes) {
		this.diabetes = diabetes;
	}

	
	public Float getHematologicalDiagnosis() {
		return hematologicalDiagnosis;
	}
	public void setHematologicalDiagnosis(Float hematologicalDiagnosis) {
		this.hematologicalDiagnosis = hematologicalDiagnosis;
	}
	public Float getStroke() {
		return stroke;
	}
	public void setStroke(Float stroke) {
		this.stroke = stroke;
	}
	public Float getKidney() {
		return kidney;
	}
	public void setKidney(Float kidney) {
		this.kidney = kidney;
	}
	
	public Float getArthritis() {
		return arthritis;
	}
	public void setArthritis(Float arthritis) {
		this.arthritis = arthritis;
	}
	public Float getBmiCalc() {
		return bmiCalc;
	}
	public void setBmiCalc(Float bmiCalc) {
		this.bmiCalc = bmiCalc;
	}
	public Float getAgeCalc() {
		return ageCalc;
	}
	public void setAgeCalc(Float ageCalc) {
		this.ageCalc = ageCalc;
	}
	public Float getImdCalc() {
		return imdCalc;
	}
	public void setImdCalc(Float imdCalc) {
		this.imdCalc = imdCalc;
	}
	
	public Float getRiskScore() {
		return riskScore;
	}
	public void setRiskScore(Float riskScore) {
		this.riskScore = riskScore;
	}
	
	
	//@Override
	//public String toString() {
	//	return "Employee [id=" + id + ", name=" + name + ", gender=" + gender + ", department=" + department + ", dob="
	//			+ dob + "]";
	//}
	
}
