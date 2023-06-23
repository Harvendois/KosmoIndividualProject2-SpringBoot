package com.kosmo.springapp.service.impl;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.springapp.service.AllService;
import com.kosmo.springapp.service.ListPagingData;
import com.kosmo.springapp.service.MemberDTO;

@Service
public class MemberServiceImpl implements AllService<MemberDTO>{

	@Autowired
	private MemberMapper mapper;
	
	public boolean isMember(Map map) {
		
		boolean isMember = mapper.findByIdAndPwd(map);
		return isMember;
	}

	@Override
	public int insert(Map map) {
		
		return mapper.save(map);
	}

	public int updateMember(Map map) {
		
		return mapper.updateById(map);
	}

	@Override
	public int delete(MemberDTO record) {
		return 0;
	}

	@Override
	public MemberDTO selectOne(Map map) {
		MemberDTO member = mapper.findById(map);
		String regNum = member.getRegistrynum();
		String birthday = regNum.substring(0,6);
		String gender = regNum.substring(6,7);
		int year = Integer.parseInt(birthday.substring(0, 2));
        int century = (gender.equals("1") || gender.equals("2")) ? 19 : 20;
        year += century * 100;
        int month = Integer.parseInt(birthday.substring(2, 4));
        int day = Integer.parseInt(birthday.substring(4, 6));
        String genderMember = (gender.equals("1") || gender.equals("3")) ? "Male" : "Female";
        birthday = String.format("%04d-%02d-%02d", year, month, day);
        member.setBirthday(birthday);
        member.setGender(genderMember);
        return member;
	}

	@Override
	public ListPagingData<MemberDTO> selectList(Map map, HttpServletRequest req, int nowPage) {
		// TODO Auto-generated method stub
		return null;
	}

	public int isDuplicate(Map map) {
		System.out.println(map.get("id"));
		return mapper.findId(map);
	}

	@Override
	public int update(MemberDTO record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
