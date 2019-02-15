package example.staveware.simplempa.service;

import java.util.List;

import example.staveware.simplempa.dataset.Project;


public interface ProjectService {
	
	List<Project> getAllProject() throws Exception;

}
