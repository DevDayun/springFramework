package mul.cam.a.dao;

import java.util.List;

import mul.cam.a.dto.MemberDto;

public interface MemberDao {
	
	List<MemberDto> allMember();
	
	// 아이디 중복체크
	int idCheck(String id);
	
	// 회원가입
	int addMember(MemberDto dto);
	
	// 로그인 확인
	MemberDto login(MemberDto dto);
}
