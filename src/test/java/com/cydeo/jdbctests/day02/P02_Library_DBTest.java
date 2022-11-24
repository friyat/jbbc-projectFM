package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Test;

public class P02_Library_DBTest {

    // Create connection to MySQL Database
    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username =  "library2_client";
    String password =  "6s2LQQTjBcGFfDhY" ;

    @Test
    public void task1(){

        //create a connection
        DB_Util.createConnection(url,username,password);

        //Run Query
        DB_Util.runQuery("select count(*) from books");

        //get data from DB
        String expectedBookCount=DB_Util.getFirstRowFirstColumn();

    }

}
