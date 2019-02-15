package example.staveware.simplempa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import example.staveware.simplempa.dataset.Project;
import example.staveware.simplempa.repository.ProjectRepository;

@Service 
public class ProjectServiceImpl implements ProjectService {
	
	@Autowired
	private ProjectRepository projectReposirtory;
	
	public List<Project> getAllProject() {
		List<Project> result;
		
		try {
			result = projectReposirtory.findAllByOrderByOrderNoAsc();
			
		} catch (Exception e) {
			throw e;
		}
		
		return result;
		
	}

}
