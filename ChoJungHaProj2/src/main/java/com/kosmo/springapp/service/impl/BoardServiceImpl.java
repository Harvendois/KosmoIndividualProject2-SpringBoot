package com.kosmo.springapp.service.impl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.kosmo.springapp.service.BoardDTO;
import com.kosmo.springapp.service.ListPagingData;
import com.kosmo.springapp.service.PagingUtil;
import com.kosmo.springapp.service.AllService;

@Service
public class BoardServiceImpl implements AllService<BoardDTO>{

	@Autowired
	private BoardMapper mapper;
	
	@Override
	public BoardDTO selectOne(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Map map) {
		
		return 0;
	}

	@Override
	public int update(BoardDTO record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(BoardDTO record) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Value("${"+PagingUtil.PAGE_SIZE+"}")
	private int pageSize;
	@Value("${"+PagingUtil.BLOCK_PAGE+"}")
	private int blockPage;

	@Override
	public ListPagingData<BoardDTO> selectList(Map map, HttpServletRequest req, int nowPage) {
		
		int totalCount=mapper.count(map);
		map.put(PagingUtil.TOTAL_RECORD_COUNT, totalCount);
		map.put(PagingUtil.PAGE_SIZE, pageSize);
		map.put(PagingUtil.BLOCK_PAGE, blockPage);
		map.put(PagingUtil.NOWPAGE, nowPage);
		//시작/끝 행번호 및 총 페이지 수 설정:PagingUtil.setMapForPaging()호출
		PagingUtil.setMapForPaging(map);		
		//글 전체 목록 얻기
		List records= mapper.findAll(map);
		//페이징 문자열 얻기
		String pagingString=PagingUtil.pagingBootStrapStyle(totalCount, pageSize, blockPage, nowPage,req.getContextPath()+ "/approach/List.do?");
		
		//페이징과 관련된 정보 및 모든 목록을 담는 ListPagingData객체 생성		
		ListPagingData<BoardDTO> listPagingData = ListPagingData.builder()
													.records(records)//글 전체 목록 설정
													.map(map)//페이징 관련 데이타 설정
													.pagingString(pagingString)//페이징 문자열 설정
													.build();
		
		return listPagingData;
	}

	
}
