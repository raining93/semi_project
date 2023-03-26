<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>

<head>
<style>
#lastcheck{
text-align: center;
width:"75%";

}

#checkleft{

 transform: translateX(-15%);
 
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

<div class="form">
   <form:form action="${context}/member/signup" method="post" id="frmJoin"
      modelAttribute="signUpForm" >
      
<section class="vh-100" style="background-color: #e2d5de;">
   <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6"> 
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-lg-1" >

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4" style="font-family:'KyoboHand';">Sign up</p>

                <form class="mx-1 mx-md-4">
                  <div class="d-flex flex-row align-items-center mb-1">
                    <div class="form-outline flex-fill mb-0" id="checkleft">
                      <input style="width:300px;" type="text" name="userId" id="inpId" class="form-control" required/>
                      <i class="fas fa-user fa-lg me-0 fa-fw"></i>
                      <label class="form-label" for="form1Example1c" style="font-family:'KyoboHand';">Your Name</label>
                            <div class="form-check d-flex justify-content-center mb-3">
                            <button type="button" id="btnIdCheck" class="add btn btn-primary font-weight-bold todo-list-add-btn" style="background-color:#8F9FE9; font-family:'KyoboHand';">check</button>
                             <span class="valid_info" id="idCheck"></span>
                           </div>
                      
                      <form:errors path="userId" cssClass="valid_info"/>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <div class="form-outline flex-fill mb-0" id="checkleft">
                      <input style="width:300px;" type="email" name="email" id="form3Example3c" class="form-control" required/>
                        <i class="fas fa-envelope fa-lg me-0 fa-fw"></i>
                        <label class="form-label" for="form3Example3c" style="font-family:'KyoboHand';">Your Email</label>
                      <br>
                      
                      <br>
                      <form:errors path="userId" cssClass="valid_info"/>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-0">
                    <div class="form-outline flex-fill mb-0" id="checkleft">
                      <input  style="width:300px;" type="password" name="password" id="inpPw" class="form-control"  placeholder="영문+숫자+특수기호 8자리 이상" required/>
                       <i class="fas fa-key fa-lg me-0fa-fw"></i>
                      <label class="form-label" for="form3Example4c" style=" font-family:'KyoboHand';">Password</label>
                      <div class="form-check d-flex justify-content-center mb-3">
                       <button type="button" id="btnPwCheck" class="add btn btn-primary font-weight-bold todo-list-add-btn" style="background-color:#8F9FE9; font-family:'KyoboHand';">check</button>
                        <span class="valid_info" id="pwCheck"></span>
                      </div>
                      
                      <form:errors path="userId" cssClass="valid_info"/>
                      
                    
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <div class="form-outline flex-fill mb-0" id="checkleft">
                      <input style="width:300px;" type="tel" name="tell" id="form3Example4cd" class="form-control" required/>
                   <i class="fa-solid fa-phone me-0fa-fw"></i>
                      <label class="form-label" for="form3Example4cd" style="font-family:'KyoboHand';">Your Number</label>
                      
                      <form:errors path="userId" cssClass="valid_info"/>
                    </div>
                  </div>

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-2">
                    <button type="submit" class="btn btn-primary btn-lg" value="가입" style="background-color:#8F9FE9; font-family:'KyoboHand';">Register</button>
                 
                  </div>
                  <br>
                  <div class="d-flex justify-content-center mx-2 mb-4 mb-lg-4" style="font-family:'KyoboHand';">
                  <h3> 가입 버튼을 누르신 후, 
                  <br> &nbsp 메일을 확인하세요</h3>
                  </div>
                    
                  

              </div>
            
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  
</section>

   </form:form>
   
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
   <footer class="mt-auto text-white-50">
    <a href ="/team" class="text-white"> Create TodoList by <a class="text-white">@27.4</a>.</a>
  </footer>


</div>


 <script type="text/javascript">
 
 let idCheckFlg = false;
 
 btnIdCheck.addEventListener("click", ev => {

  let userId = inpId.value;
  
  if(userId){
   
   fetch("/member/checkId?userId=" + userId)
   .then(response => response.json())
   .then(obj => {
      if(obj.exist){
         idCheck.innerHTML = '이미 존재하는 아이디 입니다.';
         idCheckFlg = false;
         return;
      }
      
      idCheck.innerHTML = '사용 가능한 아이디 입니다.';
      idCheckFlg = true;
      
   });
  }
 })
 
 frmJoin.addEventListener('submit', ev => {
  if(!idCheckFlg){
   ev.preventDefault();
   alert("아이디 중복검사에 실패했습니다.");
   inpId.focus();   
  }
  
 })
 
 // pw 유효성 검사 기능
function isUsablePw(userPw){
  const regExpPassword = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
  // 입력받은 pw가 정규식표현과 불일치 시 실행
  if(!(regExpPassword.test(userPw))){
    console.log(userPw);
    pwCheck.innerHTML = "비밀번호를 알맞게 입력하세요";
    return;
  }

  if(regExpPassword.test(userPw)){
    console.log(userPw);
    pwCheck.innerHTML = "사용 가능한 비밀번호입니다.";
    pwCheckFlg = true;

    return;
  }
}
 

// 비밀번호 체크버튼 이벤트 리스너
// 키보드 값이 눌릴 때 마다 검증 로직이 돌아야함
btnPwCheck.addEventListener('click', ev=>{
  let userPw = inpPw.value;
  console.log("현재 입력받은 비밀번호 : " + userPw );
  isUsablePw(userPw);

 });

 // 오류 시 폼데이터 전송 예방 기능
 frmJoin.addEventListener('submit', ev => {
  if(!idCheckFlg){
   ev.preventDefault();
   alert("아이디 중복검사에 실패했습니다.");
   inpId.focus();
  }

  if(!pwCheckFlg){
   ev.preventDefault();
   alert("비밀번호가 조건에 맞지 않습니다.");
   inpPw.focus();
  }
 })
 

 
 
 </script>

</body>

</html>