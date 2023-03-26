<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>

<style>
#dday{

transform: translateX(0%);

}
  .card {
  
    width: 35rem;
    border-radius: 0.9rem;
    overflow: hidden;
    text-align: center;
    transform: translateX(18%);
    
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

<head>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
 <section class="vh-100"  style="background-color: #e2d5de;">
   <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-5 col-lg-7 col-xl-7"> 
          <div class="card" style="border-radius: 17px;">
            <div class="card-body p-5" >
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 ">
    <h3 style="font-size: 28px; font-family:'KyoboHand';">버튼을 눌러주세요.</h3> 
    <br>
     <br>
   <div>
       
         <button type="button" id="dday" class="add btn btn-primary" style="background-color:#8F9FE9; font-family:'KyoboHand';"
                  onclick="dday_click();" >D-day Check</button>
     </div>
     
           
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  
</section>
   
     
   
</head>


<body>

<script type="text/javascript">
function dday_click() {
   
var setDate = new Date(prompt('YYYY-MM-DD와 같은 형태로 입력해주세요.'))
var now = new Date();
var interval;
interval = setDate.getTime() - now.getTime();
alert('오늘부터' + Math.floor(interval / (1000 * 60 * 60 * 24) + 1)
      + '일 남았습니다.');
}
</script>


     
</body>
</html>