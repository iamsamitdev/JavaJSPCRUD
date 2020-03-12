<%@page contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
	//อ่านข้อมูล cookie
	Cookie[] theCookies = request.getCookies();
	if(theCookies != null){
		for(Cookie ck: theCookies){
			ck.setMaxAge(0);
			response.addCookie(ck);
		}
		// ส่งกลับไปหน้า login
		response.sendRedirect("login.jsp");
	}
%>