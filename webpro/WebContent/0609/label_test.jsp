<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/mycss.css">
<style>
   table{
      border : 2px solid blue;
   }
   td{
      width : 200px;
      height : 40px;
      padding : 2px;
      text-align : center;
      font-size : 1.2em;
   }
   span{
      display : inline-block;
      margin : 3px;
      width : 150px;
      height : 40px;
      padding : 5px;
      padding-top : 15px;
   }
</style>
</head>
<body>
<h3>클라이언트 전송시 입력한 데이터 값을 전달 받는다</h3>
<p> reguest.getParameter('name이름')</p>
<%
   //클라이언트 전송시 입력한 데이터 값을 전달 받는다
   request.setCharacterEncoding("UTF-8");
      
   String name = request.getParameter("name");
   String id = request.getParameter("id");
   String pass = request.getParameter("pass");
   String tel = request.getParameter("tel");
   String addr = request.getParameter("addr");
   
   out.print("<span>이름 : </span><span class = 'data'>" + name+"</span><br>");
   out.print("<span>아이디 : </span><span class = 'data'>" + id+"</span><br>");
   out.print("<span>비밀번호 : </span><span class = 'data'>" + pass+"</span><br>");
   out.print("<span>주소 : </span><span class = 'data'>" + addr+"</span><br>");
   out.print("<span>전화번호 : </span><span class = 'data'>" + tel+"</span><br>");
%>


<table border="1">
   <tr>
      <td>이름</td>
      <td><%=name %></td>
   </tr>
   
   <tr>
      <td>아이디</td>
      <td><%=id %></td>
   </tr>
   
   <tr>
      <td>전화번호</td>
      <td><%=tel %></td>
   </tr>
   
   <tr>
      <td>주소</td>
      <td><%=addr %></td>
   </tr>
</table>
</body>
</html>