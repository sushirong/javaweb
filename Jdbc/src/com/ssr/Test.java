package com.ssr;

import java.sql.*;

/**
 * @author ：susr
 * @date ：2019/8/17 18:10
 * @version: 1.0
 * @description：TODO
 */
public class Test {
    public static void main(String[] args) throws SQLException {

        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ssr","root","root");
        String sql = "update world set name = 'xjp' where id = 1";
        Statement statement = connection.createStatement();
        int i = statement.executeUpdate(sql);
        System.out.println(i);
        statement.close();
        connection.close();

    }
}
