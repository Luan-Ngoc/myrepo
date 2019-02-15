package example.staveware.simplempa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import example.staveware.simplempa.dataset.Project;

@Repository
public interface ProjectRepository extends JpaRepository<Project, String>{
	
	Long countByProjectNo(String projectNo);
	
	List<Project> findAllByOrderByOrderNoAsc();
	
	Project findByProjectNo(String projectNo);
	
	
}
