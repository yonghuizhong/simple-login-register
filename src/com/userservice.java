package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class userservice {
    private Connection conn;
    private PreparedStatement pstmt = null;

    public userservice() {
        conn = new conn().getCon(); // 建立连接
    }

    public boolean checkUser(usertable user) {
        try {
            // 执行查询
            System.out.println(" 实例化PreparedStatement对象...");
            String sql;
            sql = "select * from usertable where username=? and password=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()){
                rs.close();
                pstmt.close();
                conn.close();
                return true;
            }
            else{
                rs.close();
                pstmt.close();
                conn.close();
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}