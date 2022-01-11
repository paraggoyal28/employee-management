package org.java.parag.springmybatis.controller;

import org.java.parag.springmybatis.dao.EmployeeMapper;
import org.java.parag.springmybatis.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeMapper mapper;
	
	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("list-employees");
		mav.addObject("listemployees", mapper.getAllEmployees());
		return mav;
	}
	
	@RequestMapping("/showFormForAddEmployee")
	public ModelAndView showForm() {
		ModelAndView mav = new ModelAndView("add-employee");
		mav.addObject("employee", new Employee());
		return mav;
	}
	
	@RequestMapping("/saveEmployee")
	public String saveEmployee(@ModelAttribute("employee") Employee employee) {
		mapper.saveEmployee(employee);
		return "redirect:/";
	}
	
	@RequestMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam("employeeId") int employeeId) {
		mapper.deleteEmployee(employeeId);
		return "redirect:/";
	}
	
	@RequestMapping("/editEmployee")
	public ModelAndView editEmployee(@RequestParam("employeeId") int employeeId) {
		ModelAndView mav = new ModelAndView("edit-employee");
		Employee employee = mapper.findById(employeeId);
		mav.addObject("employee", employee);
		return mav;
	}
	
	@RequestMapping("/updateEmployee")
	public String updateEmployee(@ModelAttribute("employee") Employee employee) {
		mapper.updateEmployee(employee);
		return "redirect:/";
	}
}
