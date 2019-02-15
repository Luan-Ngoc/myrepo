package example.staveware.simplempa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import example.staveware.simplempa.dataset.Project;
import example.staveware.simplempa.service.ProjectService;

@Controller
public class ProjectListController {
	
	@Autowired
	private ProjectService projectService;
	
	@RequestMapping("/project")
	public String displayPjList(Model model) throws Exception {
		
		List<Project> projectList = projectService.getAllProject();
		
		model.addAttribute("projectList", projectList);
		
		return "project_list";
	}

}
