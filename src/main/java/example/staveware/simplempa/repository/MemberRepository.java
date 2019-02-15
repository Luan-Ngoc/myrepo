package example.staveware.simplempa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import example.staveware.simplempa.dataset.Member;
import org.springframework.stereotype.Repository;

@Repository // (1)
public interface MemberRepository extends JpaRepository<Member, String> { // (2)
}
