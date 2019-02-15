package example.staveware.simplempa.service;

import java.util.List;
import example.staveware.simplempa.dataset.Member;

public interface MemberService { // (1)
	void create(Member member);

	List<Member> findAll();

	void delete(String userid);

	Member findOne(String userid);
}
