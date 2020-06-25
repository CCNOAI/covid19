package in.bushansirgur.springbootcrud.springbootcrudapi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import in.bushansirgur.springbootcrud.springbootcrudapi.model.County;
import in.bushansirgur.springbootcrud.springbootcrudapi.model.Employee;
import in.bushansirgur.springbootcrud.springbootcrudapi.controller.CountyController;
import in.bushansirgur.springbootcrud.springbootcrudapi.service.CountyService;
import in.bushansirgur.springbootcrud.springbootcrudapi.repository.CountyRepository;
import in.bushansirgur.springbootcrud.springbootcrudapi.service.EmployeeService;
import in.bushansirgur.springbootcrud.springbootcrudapi.dao.ZipCode;


@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private CountyRepository countyRepository;
	/*
	@Autowired
	private CountyService countyService;
	@Autowired
	private CountyController countyController;
	@Autowired
	private County county;

*/

		
	@RequestMapping(value = {"/", "/home", "/index"})
	public ModelAndView get() {
		ModelAndView mav = new ModelAndView("employeesList");
		List<Employee> list = employeeService.get();
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping("/openEmployeeView")
	public ModelAndView openEmployeeAddView() {
		ModelAndView mav = new ModelAndView("employeesAdd");
		mav.addObject("employee", new Employee());
		return mav;
	}
	
	@RequestMapping("/save")
	public ModelAndView save(@ModelAttribute("employee") Employee employeeObj) {
		ModelAndView mav = new ModelAndView("employeesList");
		
		Integer age = employeeObj.getAge();
		Integer zipcode = employeeObj.getZipcode();
		Integer feet = employeeObj.getFeet();
		Integer inches = employeeObj.getInches();
		Integer weight = employeeObj.getWeight();
		Float sex = employeeObj.getSex();
		Float currentexsmoker = employeeObj.getCurrentExSmoker();
		Float hispanic = employeeObj.getHispanic();
		Float race = employeeObj.getRace();
		Float hypertensive = employeeObj.getHypertensive();
		Float respiratorydisease = employeeObj.getRespiratoryDisease();
		Float ocs = employeeObj.getOcs();
		Float chronicheartdisease = employeeObj.getChronicHeartDisease();
		Float diabetes = employeeObj.getDiabetes();
		Float hematologicaldiagnosis = employeeObj.getHematologicalDiagnosis();
		Float stroke = employeeObj.getStroke();
		Float kidney = employeeObj.getKidney();
		Float arthritis = employeeObj.getArthritis();
		
		float bmicalc = 0;
		float imdcalc = 0;
		float agecalc = 0;
		int height = (feet * 12) + inches;
		float bmi = (float) ((weight * Math.sqrt(height)) *703);
	
		
		if(bmi <= 18.5)
		{
			bmicalc = 0;
		}
		else if(bmi > 18.5 && bmi <=24.9)
		{
			bmicalc = (float) 0.247;
		}
		else if(bmi > 25 && bmi <=29.9)
		{
			bmicalc =  (float) 0.47;
		}
		else if (bmi > 30.0)
		{
			bmicalc = (float) 0.824;
		}
		
		if(age < 18)
		{
			agecalc = 0;
		}
		else if(age >= 18 && age <=39)
		{
			agecalc = (float) -2.56;
		}
		else if(age >= 40 && age <=49)
		{
			agecalc =  (float) -1.204;
		}
		else if(age >= 50 && age <=59)
		{
			agecalc =  0;
		}
		else if(age >= 60 && age <=69)
		{
			agecalc =  (float) 0.728;
		}
		else if(age >= 70 && age <=79)
		{
			agecalc =  (float) 1.571;
		}
		else if (age >= 80 && age <=150)
		{
			agecalc =  (float) 2.488;
		}
		
		
	/* TO DO: Fnish up the ZpCode calculation!!! */
		
		
		
		String county_name = ZipCode.MainTest(zipcode);
		System.out.println("TEEEEESSSSSTTTTTTTTTTTT1");
		System.out.println(county_name);


		List<County> imdvalues = countyRepository.findByNameEndsWith(county_name);
		Object imdvalue= imdvalues.get(0);
		String imdvalue1 = imdvalue.toString();
		System.out.println(imdvalue1);
		
		//Float imd = null;
		//List<County> counties = (List<County>) countyService.findByNameEndsWith(county);
		System.out.println("TEEEEESSSSSTTTTTTTTTTTT2");
		System.out.println("TEEEEESSSSSTTTTTTTTTTTT3");
		//System.out.println(imdvalue);
		imdcalc = Float.valueOf(imdvalue1);
		
		float riskScore = (float) (sex + currentexsmoker + hispanic + race + hypertensive + respiratorydisease + ocs + chronicheartdisease+ diabetes + hematologicaldiagnosis + stroke + kidney + arthritis + bmicalc + agecalc +imdcalc); 
		
		float riskScoreFinal = (float) Math.exp(riskScore);
		float riskScoreFinal1 = (float)(riskScoreFinal/1.86);
				
		employeeObj.setRiskScore((float) riskScoreFinal1);
		employeeObj.setImdCalc((float) imdcalc);
		employeeObj.setBmiCalc((float) bmicalc);
		employeeObj.setAgeCalc((float) agecalc);
		employeeService.save(employeeObj);
		
		
		List<Employee> list = employeeService.get();
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping("/employee/{id}")
	public ModelAndView get(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView("employeesAdd");
		Employee employeeObj = employeeService.get(id);
		if(employeeObj == null) {
			throw new RuntimeException("Employee not found"+id);
		}
		mav.addObject("employee", employeeObj);
		return mav;
	}
	
	@RequestMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView("employeesList");
		employeeService.delete(id);
		List<Employee> list = employeeService.get();
		mav.addObject("list", list);
		return mav;
	}
}
