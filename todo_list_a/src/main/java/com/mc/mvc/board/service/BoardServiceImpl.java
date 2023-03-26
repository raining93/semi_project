package com.mc.mvc.board.service;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.mc.mvc.board.dto.Board;
import com.mc.mvc.board.repository.BoardRepository;
import com.mc.mvc.common.code.ErrorCode;
import com.mc.mvc.common.exception.AuthException;
import com.mc.mvc.common.file.FileInfo;
import com.mc.mvc.common.file.FileRepository;
import com.mc.mvc.common.file.FileUtil;
import com.mc.mvc.common.paging.Paging;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService{

   Logger logger =  LoggerFactory.getLogger(this.getClass());
   
   private final BoardRepository boardRepository;
   private final FileRepository fileRepository;
   private final FileUtil fileUtil;

   @Override
   public void insertBoard(Board board) {
      
      // 1. 게시글 내용을 board테이블에 insert
      boardRepository.insertBoard(board);   
   }

   @Override
   public FileInfo selectFileInfo(String flIdx) {
      FileInfo fileInfo = fileRepository.selectFileInfo(flIdx);
      return fileInfo;
   }

   @Override
   public Map<String,Object> selectBoardList(int page, String userId) {
      
	   // 해당 아이디가 작성한 전체 게시글 수 =total
      int total = boardRepository.countUserBoard(userId);
      
      Paging paging = Paging.builder()
                  .cntPerPage(10)
                  .currentPage(page)
                  .total(total)
                  .blockCnt(10)
                  .build();
      
      return Map.of("boardList", boardRepository.selectBoardList(paging),"paging", paging);
   }

   @Override
   public Map<String, Object> selectBoardContentByBdIdx(int bdIdx) {
      Board board = boardRepository.selectBoardByBdIdx(bdIdx);

      return Map.of("board", board);
   }

   @Override
   public void deleteBoardByBdIdx(int bdIdx) {
      
      // 1. 게시글 삭제
      boardRepository.deleteBoardByBdIdx(bdIdx);
   }

   @Override
   public void updateBoard(Board board) {
      
      int res = boardRepository.updateBoard(board);
      
      logger.info("{}", board);
      logger.info("result : {}", res);
      if(res == 0) throw new AuthException(ErrorCode.UNAUTHORIZED_REQUEST);
      
   }   
   
  
   
   
}