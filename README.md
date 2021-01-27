# HotelFive ( 호텔 예약 홈페이지 ) 
-----------
## 개요
+ 프로젝트 명 : HotelFive( 호텔 예약 홈페이지 )

+ 일정 : 2020.07.03 ~ 2020.07.21 / 유지보수 : 2020.07.21 ~

+ 팀구성 : 박용운, 박예림, 신시명, 이병한, 정태형 

+ 목적 : JAVA를 활용한 풀스택 개발자 양성과정을 통해 배운 기술을 최대한 활용할 수 있는 호텔 예약 홈페이지 제작

+ 사용 기술 및 개발 환경

  - O/S : Windows 10 (개발환경)
  - Server : Tomcat8.5
  - DB : Oracle 11g
  - Framework/flatform : Spring, bootstrap, jQuery, mybatis
  - Programing Language : JAVA, HTML, JavaScript
  - Tool : STS, Github, Aquerytool, SQL Developer
  - API : captcha, Kakao Developer
  
## 내용 

+ 구현 기능 
 
  - 회원관리 ( 회원가입, 로그인, 아이디/비밀번호 찾기 )
  - 마이 페이지 ( 정보 수정, 회원 탈퇴, 마이예약 확인, QNA 조회 )
  - 관리자 페이지 ( 회원 정보 수정, 예약 관리 )
  - 게시판 ( 공지사항, QNA, REIVEW, 댓글, 검색기능 ) 
  - 상품 관리 ( 객실 목록, 객실 상세정보 )
  - 예약 ( 캘린더 구현, 회원 예약, 비회원 예약, 날짜별 가능한 객실조회 )
  - 메인화면 ( 간편 객실 조회, 주요 기능 네비게이션 ) 
  - 보안 ( JavaMail, captcha ) 
  
+ 담당파트 
  
  - <h5>박용운 : 회원가입, 로그인, 보안, 캘린더 구현, 회원 예약, 비회원 예약, 날짜별 가능한 객실조회, 코드통합, QA </h5>
  - 박예림 : 게시판 ( 공지사항 ), 상품 관리 구현 ( 객실 목록, 객실 상세 정보 ), 비회원 예약 
  - 신시명 : 게시판 ( REVIEW, 댓글, 검색 )
  - 이병한 : 마이페이지, 관리자 페이지
  - 정태형 : 게시판 ( QNA, 댓글 ), 마이페이지 ( QNA 조회 )
  - 공통 작업 : DB 설계, CSS, 퍼블리싱 
  
+ 설계의 주안점
   
  - JAVA를 활용한 풀스택 개발자 양성과정을 통해 배운 기술을 최대한 활용한다.
  - 회원과 비회원간의 편의성의 차이를 둔다
  - 관리자는 회원 및 사이트 전반의 기능 관리가 가능하게 제작한다.
  - api 활용 
   
-----------
## 핵심코드 - 박용운
+ 회원가입

   ![회원가입1](https://user-images.githubusercontent.com/67767127/105963025-d4340400-60c3-11eb-96fb-f76083812681.PNG)
   ajax통신을 통해 정규식에 맞게 아이디를 썻는지 idCheck 메소드를 통해 확인해 준다. ( 각각의 항목에 다른 정규식 적용 )
   
   ![회원가입2](https://user-images.githubusercontent.com/67767127/105963716-ad2a0200-60c4-11eb-85eb-4659ef50edfa.PNG)
   본인 인증을 위해 이메일 검증을 실시. 랜덤 메소드를 이용하여 인증 번호를 생성한 후 SimpleMailMessage 클래스 사용하여 이메일을 보낸다. 
   인증 번호는 request에 저장, 회원 가입 페이지에서 사용자가 입력한 인증 번호 값과 비교하여 같을 경우에만 회원 가입을 진행한다.
   
  ![회원가입3](https://user-images.githubusercontent.com/67767127/105966870-8c63ab80-60c8-11eb-835a-7f5204fbc66e.PNG)
   우편번호 찾기 버튼을 클릭하면 다음에서 지원하는 우편번호 찾기 팝업창이 실행. 팝업창에서 주소를 입력 검색결과를 클릭했을때 도로명 주소와 지번주소, 우편번호가 각각 mAddr1, mAddr2, mZipcode 변수에 저장된다. 그 후 상세주소를 입력받아 mAddr3 변수에 저장한다. 
   
  ![회원가입4](https://user-images.githubusercontent.com/67767127/105966878-8e2d6f00-60c8-11eb-96bb-4e1f5ac4fdac.PNG)
  모든 정보를 입력 한 뒤 정규화와 이메일 인증이 정상적으로 진행되었다면, 회원 가입을 진행한다.
  Input 의 모든 데이터를 파라미터 값으로 넘긴 뒤 member테이블에 insert해주는 과정을 거쳐 회원을 등록한다. 회원 가입이 완료되면 회원의 이름을 request에 저장해 회원 가입이 완료되었다는 페이지에서 보여준다.

+ 로그인

  ![로그인1](https://user-images.githubusercontent.com/67767127/105966890-8f5e9c00-60c8-11eb-9092-71bcc498e9ce.PNG)
  설명
  ![로그인2](https://user-images.githubusercontent.com/67767127/105966893-908fc900-60c8-11eb-862a-09f757595675.PNG)
  설명
  ![로그인3](https://user-images.githubusercontent.com/67767127/105966899-92598c80-60c8-11eb-9108-4851e93813d2.PNG)
  설명
  ![로그인4](https://user-images.githubusercontent.com/67767127/105966901-92f22300-60c8-11eb-9fe0-c37b5f56febe.PNG)
  설명

+ 예약 

  설명
  
