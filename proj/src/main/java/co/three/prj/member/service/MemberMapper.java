package co.three.prj.member.service;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface MemberMapper {
	@Select("select * from users")
	List<MemberVO> selectMemberList();
	
	MemberVO selectMember(MemberVO vo);
	int insertMember(MemberVO vo);
	int updateMember(MemberVO vo);
	int deleteMember(MemberVO vo);
	int ackMember(MemberVO vo);
	int selectMemberCk(String id);
	int updateMemberSuccess(MemberVO vo);
	
}
