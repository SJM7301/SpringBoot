package org.big.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.big.dto.BoardDto;

@Mapper
public interface BoardMapper {
	List<BoardDto> selectBoardList() throws Exception;
	void insertBoard(BoardDto board) throws Exception;
	void updateHitCount(int board_idx) throws Exception;
	BoardDto selectBoardDetail(int board_idx) throws Exception;
	void updateBoard(BoardDto board) throws Exception;
	void deleteBoard(int board_idx) throws Exception;
}