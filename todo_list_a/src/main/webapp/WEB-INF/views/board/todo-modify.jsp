<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>


<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
 <div class="content container">
   <div class="desc_board">
      <form action="${context}/board/modify" id="todoModify" class="todo_modify" method="post" >
         <input type="hidden" value="${board.bdIdx}" name="bdIdx"> 
         <div >
            <div class="content_board">
               <textarea name="content" required="required"  class="form-control" id="textAreaExample1" ows="4"><c:out value="${board.content}"/></textarea>
            </div>
            <div class="btn_section">
               <button style="background-color:red; color:white; width:100%">전송</button>
            </div>
         </div>

      </form>
   </div>
</div>
   <%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>