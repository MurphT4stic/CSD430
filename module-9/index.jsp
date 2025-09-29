<%@ page import="java.util.*, myapp.RecordBean" %>
<html>
<head>
    <title>Project Part 4 - Record Display & Delete</title>
</head>
<body>
    <h2>Record Management System</h2>
    <p>Select a record to delete. Below is the current data table.</p>

    <%
        RecordBean bean = new RecordBean();
        List<RecordBean.Record> records = bean.getRecords();
    %>

    <!-- Display Table -->
    <table border="1" cellpadding="5" cellspacing="0">
        <thead>
            <tr>
                <th>ID (Key)</th>
                <th>Field 1</th>
                <th>Field 2</th>
                <th>Field 3</th>
                <th>Field 4</th>
                <th>Field 5</th>
            </tr>
        </thead>
        <tbody>
        <%
            if (records.isEmpty()) {
        %>
            <tr><td colspan="6">No records available.</td></tr>
        <%
            } else {
                for (RecordBean.Record r : records) {
        %>
            <tr>
                <td><%= r.id %></td>
                <td><%= r.field1 %></td>
                <td><%= r.field2 %></td>
                <td><%= r.field3 %></td>
                <td><%= r.field4 %></td>
                <td><%= r.field5 %></td>
            </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>

    <!-- Dropdown Form -->
    <form method="post" action="deleteRecord.jsp">
        <label for="id">Select Record ID to Delete:</label>
        <select name="id">
        <%
            for (RecordBean.Record r : records) {
        %>
            <option value="<%= r.id %>"><%= r.id %></option>
        <%
            }
        %>
        </select>
        <input type="submit" value="Delete Record">
    </form>

</body>
</html>
