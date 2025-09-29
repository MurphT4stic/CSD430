<%@ page import="java.util.*, myapp.RecordBean" %>
<html>
<head>
    <title>Delete Record</title>
</head>
<body>
    <h2>Record Deleted (if exists)</h2>

    <%
        String idParam = request.getParameter("id");
        if (idParam != null) {
            int id = Integer.parseInt(idParam);
            RecordBean bean = new RecordBean();
            bean.deleteRecord(id);
        }
        response.sendRedirect("index.jsp"); // reload index after deletion
    %>
</body>
</html>
