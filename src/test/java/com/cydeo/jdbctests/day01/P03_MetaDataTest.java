package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P03_MetaDataTest {

    String dbUrl="jdbc:oracle:thin:@44.211.155.58:1521:XE";
    String dbUsername="hr";
    String dbPassword="hr";



    @Test
    public void task1() throws SQLException {


        // DriverManager Class getCOnnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement();

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select FIRST_NAME,LAST_NAME,SALARY*12 from EMPLOYEES");

        //DatabaseMeaData --> It is information about database itself
        DatabaseMetaData dbMetaData = conn.getMetaData();

        System.out.println(dbMetaData.getUserName());
        System.out.println(dbMetaData.getDatabaseProductName());
        System.out.println(dbMetaData.getDatabaseProductVersion());
        System.out.println(dbMetaData.getDriverName());
        System.out.println(dbMetaData.getDriverVersion());

        // ResultSetMetaData --> it provides information about table upper side (columnNames, columnCount)
        ResultSetMetaData rsmd = rs.getMetaData();

        // How man column we have
        int columnCount = rsmd.getColumnCount();
        System.out.println(columnCount);


        // get me column name from index 3
        System.out.println(rsmd.getColumnName(3));
        // it will return provided columnIndex name

        //print all column names dynamicly
        System.out.println("-----COLUMNS NAMES -----");
        for (int i = 1; i <= columnCount; i++){
            System.out.println(rsmd.getColumnName(i));
        }
        /*
        HOW TO GET DATA DYNAMICLY FOR QUERIES?
        Resultset  --> it holds table data
        rs.next() --> to iterate each row dynamicly

        rs.getString(index) --> to get data from specified column
        rs.getString(ColumnName)

        ResultSetMetaData --> it holds table infor (columnNames - ColumnCount)
                   rsmd.getColumnCount() ---> will give how many column we have
                   rsmd.getColumnName()  ---> it will give spesified columnName

         */

        // PRINT TABLE CONTENT DYNAMICLY


        System.out.println("----- PRINT ALL DATA DYNAMIC ----- ");
        // EMPLOYEE_ID - 1
        // FIRST_NAME  - Steven
        // iterate each row
        while(rs.next()){

            // iterate each column
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                System.out.print(rsmd.getColumnName(i)+"-"+rs.getString(i)+" ");
            }
            System.out.println();
        }

        // close connections
        rs.close();
        statement.close();
        conn.close();




    }}
