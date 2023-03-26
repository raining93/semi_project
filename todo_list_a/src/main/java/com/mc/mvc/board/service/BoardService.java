package com.mc.mvc.board.service;

import java.util.Map;

import com.mc.mvc.board.dto.Board;
import com.mc.mvc.common.file.FileInfo;

public interface BoardService {

   void insertBoard(Board board);

   FileInfo selectFileInfo(String fIdx);

   Map<String, Object> selectBoardList(int page, String string);

   Map<String, Object> selectBoardContentByBdIdx(int bdIdx);

   void deleteBoardByBdIdx(int bdIdx);

   void updateBoard(Board board);
   
  

   }


