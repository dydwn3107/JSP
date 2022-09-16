package co.micol.prj.mybatis.mapper;

import java.util.List;

import co.micol.prj.member.service.MemberVO;
// MemberService 와 기본적으로 같다 service영역 / repository영역 
public interface MemberMapper {
	List<MemberVO> memberSelectList(); 
	MemberVO memberSelect(MemberVO vo); //한명조회, 로그인 체크
	int memberInsert(MemberVO vo);
	int memberUpdate(MemberVO vo);
	int memberDelete(MemberVO vo);
	
	boolean isIdCheck(String id); //아이디 중복체크
}
