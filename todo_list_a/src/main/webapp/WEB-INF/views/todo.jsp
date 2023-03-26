<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>

<head>
   
    <link href="${context}/resources/css/todo/todo.css" rel="stylesheet">
<style>

.card-title{
font-size: 35px;
}

#btnModify, #modify ,#btnDel, #delete{
transform: translateX(50%);
}

#regDate{

transform: translateX(30%);
}

#todolistfontsize{
font-size:17px;
}

     @font-face {
    font-family: 'KyoboHand';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@1.0/KyoboHand.woff') format('woff');
    font-weight: normal;
    font-style: normal;
    }
    
    * {
     font-family: 'KyoboHand';
    }
 




</style>
    
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

   <form action="${context}/board/upload" method="post" enctype="multipart/form-data">
      <section class="vh-100" style="background-color: #e2d5de;">
      
      <div class="page-content page-container" id="page-content" >
           <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">

        <div class="card" style="border-radius: 15px;">

                     <div class="card-body">
                        <h2 class="card-title" style="font-family:'KyoboHand';">${sessionScope.auth.userId} Todo list 
                       <a href="/dday" class="btn text-white" style="background-color:#8F9FE9; font-family:'KyoboHand';">D-day</a></h2> 
                       
                        <div class="add-items d-flex">
                           <input type="text" name="content"
                              class="form-control todo-list-input"
                              placeholder="Enter what to do today.">
                           <button
                               class="add btn btn-primary font-weight-bold todo-list-add-btn" style="background-color:#8F9FE9; font-family:'KyoboHand';">Add</button>
                        </div>
                        </form>
                        <div class="list-wrapper">
                        
<br>

                              <ul class="d-flex flex-column todo-list" id="todolistfontsize" style="font-family:'KyoboHand';">
                              <c:forEach items="${boardList}" var="board">
                              <c:if test="${ not empty sessionScope.auth and board.userId == sessionScope.auth.userId }">
                                <li>
                                
                                    <div class="d-flex flex-row " >
                                       <label class="form-check-label"> <input
                                          class="checkbox my_checked" type="checkbox"  >
                                             ${board.content}
                                          <i class="input-helper"></i></label>
                                          
                                  
                                    <form action="/board/modify?bdIdx=${board.bdIdx}"method="get">
                                      <input type="hidden" value="${board.bdIdx}" name="bdIdx"/>
                                        <button class="btnModify"id="btnModify"><i class="fa-solid fa-pencil" id="modify" ></i></button>   
                                      
                                          </form>
                              
                                    <form action="/board/remove" method="post">
                                        <input type="hidden" value="${board.bdIdx}" name="bdIdx"/> 
                                       <button class="btnDel" id="btnDel"><i class="remove fa-solid fa-trash" id="delete"></i></button>
                                    </form>
                                   
                                  
                                    <label id="regDate" style="font-family:'KyoboHand';">${board.regDateAsDate}</label>
                                     </div>
                                    
                                      </li>
                                 </c:if>
                              </c:forEach>
                              
                               
                              
                              </ul>
                           

                           <div class="row mt-3">
                              <nav aria-label="Page navigation example">
                                 <ul class="pagination justify-content-center" style= "font-color: #8F9FE9; font-family:'KyoboHand';" >

                                    <li class="page-item"><a class="page-link" 
                                       href="/board/list?page=${paging.prevPage}">Previous</a></li>

                                    <c:forEach begin="${paging.blockStart}"
                                       end="${paging.blockEnd}" var="page">
                                       <li class="page-item"><a class="page-link"
                                          href="/board/list?page=${page}">${page}</a></li>
                                    </c:forEach>

                                    <li class="page-item"><a class="page-link"
                                       href="/board/list?page=${paging.nextPage}">Next</a></li>

                                 </ul>
                              </nav>
                           </div>


                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
         
      
      </div>

      
</section>
      <%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>

<script type="text/javascript">

document.querySelectorAll('.my_checked').forEach(ev => {
	   ev.addEventListener('click', ev => {
	      console.dir(ev.target.checked);
	   })
	})
	
	

</script>
