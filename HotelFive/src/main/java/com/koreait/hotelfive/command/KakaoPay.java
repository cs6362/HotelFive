package com.koreait.hotelfive.command;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public class KakaoPay implements Command {
	
	@Override
	public void execute(SqlSession sqlSession, Model model) {
/*
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpServletResponse response = (HttpServletResponse) map.get("response");
		HttpSession session = request.getSession();
		String command = request.getParameter("command");
		
		if ( command == "pay") {
			
			String string_params = request.getParameter("string_params");
			
			try {
				
				URL url = new URL("https://Kapi.kakao.com/v1/payment/ready");
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("POST");
				conn.setRequestProperty("Autorization", "KaKaoAk 247d7866a02bfad3351e76235bc0f663");
				conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
				conn.setDoInput(true);
				conn.setDoOutput(true);
				
				
				OutputStream out = conn.getOutputStream();
				out.write(string_params.getBytes());
				out.flush();
				out.close();
				
				BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
				String successUrl = null;
				
				
		        try { // 응답받은 json 파싱작업
					JSONParser parser = new JSONParser();
					JSONObject obj = (JSONObject)parser.parse(in);
					
					successUrl = (String)obj.get("next_redirect_pc_url");
					
					map.put("payObject", obj);
					
				} catch (ParseException e) {
					e.printStackTrace();
				} finally {
					in.close(); // 응답 스트림 닫기
				}
				
		        response.sendRedirect(successUrl);
		        
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}else if( command =="approval"){
			
			
			
			
			System.out.println("approval");
		
		
		
		
		
		}else if ( command == "cancle") {
			System.out.println("cancle");
		}
		
		
		
	*/
	}
}
