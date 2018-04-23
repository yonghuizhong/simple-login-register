package com;

import java.sql.Connection;
import java.sql.DriverManager;

public class conn {
    // JDBC 驱动名及数据库 URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/userdb?autoReconnect=true&useSSL=false";    //数据库名为userdb

    // 数据库的用户名与密码
    static final String USER = "root";
    static final String PASS = "root";

    public Connection getCon() {
        Connection conn;
        try {
            // 注册 JDBC 驱动
            Class.forName(JDBC_DRIVER);
            // 打开链接
            System.out.println("连接数据库...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            if (!conn.isClosed()) {
                System.out.println("数据库连接成功");
            } else
                System.out.println("连接数据库失败");
            return conn;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}