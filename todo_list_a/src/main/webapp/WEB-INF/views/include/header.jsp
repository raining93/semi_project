<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<header class="p-3 bg-white text-black">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-black text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="/index" class=nav-link px-2 text-black" style="font-family:'KyoboHand';">Home</a></li>
          <li><a href="/team" class="nav-link px-2 text-secondary" style="font-family:'KyoboHand';">About</a></li>
        </ul>
      
      <c:if test="${empty sessionScope.auth}">
         <div class="col-md-3 text-end" >
          <a href="/member/signup" class="btn text-white" style="background-color:#8F9FE9; font-family:'KyoboHand';">SignUp</a>
           <a href="/member/login" class="btn text-white" style="background-color:#8F9FE9; font-family:'KyoboHand';">Login</a>
          
         </div>
       </c:if>
       
       <c:if test="${not empty sessionScope.auth}">
        <div class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
           <a class="col-md-3 text-end" style="color: black; font-family:'KyoboHand';">${sessionScope.auth.userId}</a></div>
            <div class="col-md-3 text-center" >
           <a href="/todo" class="btn text-white" style="background-color:#8F9FE9; font-family:'KyoboHand';">Todo List</a>
           
           <a href="/member/logout" class="btn text-white" style="background-color:#8F9FE9; font-family:'KyoboHand';">Logout</a>
         </div>
       </c:if>
 </div>

 

  </header>