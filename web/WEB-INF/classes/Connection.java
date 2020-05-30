package model;


import java.sql.*;


public class Connection {

    private static java.sql.Connection conn=null;



    public static java.sql.Connection  getInstance(){
        if (conn==null){
            String myDriver = "com.mysql.jdbc.Driver";

            System.out.println("Connection sql");

            try {
                Class.forName(myDriver);
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_formulaire?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return conn;
    }
}
