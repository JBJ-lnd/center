<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<table border="1">
	<tr>
		<td>학생 ID</td>
		<td>점수 총합</td>
		<td>점수 평균</td>
		<td>순위</td>
	</tr>
<%
try {
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//122.128.169.32:1521/xe", "smc_user_19", "1234");

    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT " + 
            "student_id, sum(point), avg(point) " +
            "FROM  " +
            "    POINT " +
            "GROUP BY student_id");

    int rank = 0;
    while (rs.next()) {
        rank += 1;
        %>
            <tr>
                <td><%=rs.getInt(1) %></td>
                <td><%=rs.getInt(2) %></td>
                <td><%=rs.getInt(3) %></td>
                <td><%=rank %></td>
            </tr>
        <%
    }

    stmt.close();
    conn.close();
}
catch (Exception e) {
    e.printStackTrace();
}
%>

</table>