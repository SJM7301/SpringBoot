package org.big.service;

import java.util.List;

import org.big.dto.BoardDto;

public interface BoardService {
	List<BoardDto> selectBoarList() throws Exception;
	void updateHitCount(int board_idx) throws Exception;
	void insertBoard(BoardDto board) throws Exception;
	BoardDto selectBoardDetail(int board_idx) throws Exception;
	void updateBoard(BoardDto board) throws Exception;
	void deleteBoard(int board_idx) throws Exception;
}