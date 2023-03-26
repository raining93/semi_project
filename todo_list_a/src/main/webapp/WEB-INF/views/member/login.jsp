<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>


<head>
    <link href="${context}/resources/css/member/login.css" rel="stylesheet">
    
    <style>
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
 <section class="vh-100" style="background-color: #e2d5de;">
  <div class="container py-5 h-100">

   <c:if test="${not empty msg}">
   <div class="alert alert-danger" role="alert" style="font-family:'KyoboHand';">
       ${msg}
   </div>
   </c:if>   

    <div class="row d-flex align-items-center justify-content-center h-100">
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
      

        <form action="/member/login" method="post">
          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="text" id="userId" name="userId" class="form-control form-control-lg" />
            <label class="form-label" for="form1Example13" style="font-family:'KyoboHand'; font-size: 20px;">user name</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-4">
            <input type="password" id="password" name="password" class="form-control form-control-lg" />
            <label class="form-label" for="form1Example23" style="font-family:'KyoboHand'; font-size: 20px;">Password</label>
          </div>

          <!-- Submit button -->
            <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
           <button type="submit" class="btn btn-primary btn-lg btn-block" style="background-color:#8F9FE9; font-family:'KyoboHand';">Login</button>
        </form>
      </div>
    </div>
  </div>
</section>



<%@ include file="/WEB-INF/views/include/footer.jsp" %>




</body>
</html>