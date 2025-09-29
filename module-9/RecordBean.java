// RecordBean.java
// Tabari Harvey - Project Part 4
// Handles database operations for record display and deletion

package myapp;

import java.sql.*;
import java.util.*;

public class RecordBean {
    private String url = "jdbc:mysql://localhost:3306/db"; // adjust if needed
    private String username = "root"; // change if needed
    private String password = "";     // change if needed

    // Record class to hold a row of data
    public static class Record {
        public int id;          // assuming key is int
        public String field1;
        public String field2;
        public String field3;
        public String field4;
        public String field5;

        public Record(int id, String f1, String f2, String f3, String f4, String f5) {
            this.id = id;
            this.field1 = f1;
            this.field2 = f2;
            this.field3 = f3;
            this.field4 = f4;
            this.field5 = f5;
        }
    }

    // Get all records
    public List<Record> getRecords() throws Exception {
        List<Record> list = new ArrayList<>();
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DriverManager.getConnection(url, username, password);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT id, field1, field2, field3, field4, field5 FROM mytable")) {

            while (rs.next()) {
                list.add(new Record(
                        rs.getInt("id"),
                        rs.getString("field1"),
                        rs.getString("field2"),
                        rs.getString("field3"),
                        rs.getString("field4"),
                        rs.getString("field5")
                ));
            }
        }
        return list;
    }

    // Delete a record by ID
    public void deleteRecord(int id) throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DriverManager.getConnection(url, username, password);
             PreparedStatement ps = conn.prepareStatement("DELETE FROM mytable WHERE id=?")) {
            ps.setInt(1, id);
            ps.executeUpdate();
        }
    }
}
