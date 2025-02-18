package org.big.service;

import java.util.List;

import org.big.dto.BoardDto;
import org.big.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper boardMapper;
	
	@Override
	public List<BoardDto> selectBoarList() throws Exception {
		return boardMapper.selectBoardList();
	}
	
	@Override
	public void insertBoard(BoardDto board) throws Exception {
		boardMapper.insertBoard(board);
	}
	
	@Override
	public BoardDto selectBoardDetail(int board_idx) throws Exception {
		BoardDto board = boardMapper.selectBoardDetail(board_idx);
		return board;
	}
	
	@Override
	public void updateHitCount(int board_idx) throws Exception {
        boardMapper.updateHitCount(board_idx);
    }
	
	@Override
	public void updateBoard(BoardDto board) throws Exception{
		boardMapper.updateBoard(board);
	}
	
	@Override
	public void deleteBoard(int board_idx) throws Exception{
		boardMapper.deleteBoard(board_idx);
	}
}