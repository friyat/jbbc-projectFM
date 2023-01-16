package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class Homework {

    // Create connection to MySQL Database
    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username =  "library2_client";
    String password =  "6s2LQQTjBcGFfDhY" ;

    @Test
    public void users(){
        DB_Util.createConnection(url,username,password);

        DB_Util.runQuery("select count(*) from users");

        String expectedUsersCount=DB_Util.getFirstRowFirstColumn();

        String actualUsersCount="1417";

        Assertions.assertEquals(expectedUsersCount,actualUsersCount);

        DB_Util.destroy();
    }
    @Test
    public void borrowedBooks(){
        DB_Util.createConnection(url,username,password);
        DB_Util.runQuery("select count(*) from book_borrow");
        String expectedBorrowedCount=DB_Util.getFirstRowFirstColumn();
        String actualBorrowedCount="529";
        Assertions.assertEquals(expectedBorrowedCount,actualBorrowedCount);

        DB_Util.destroy();
    }



}
