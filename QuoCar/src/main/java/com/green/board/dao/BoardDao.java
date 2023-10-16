package com.green.board.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.green.board.vo.BoardVo;

@Repository("boardDao")
public interface BoardDao {

	List<BoardVo> getBoardList(String menu_id);

	void insertBoard(BoardVo vo);

	BoardVo getBoard(int idx);

	void deleteBoard(BoardVo vo);

	void incrementReadCount(int idx);

	void updateBoard(BoardVo vo);

}
