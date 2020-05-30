package model;


import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class DatabaseHandler {

    public int save(User user) throws Exception{

        String query = "INSERT INTO users ( name, email, password, phone_number, birthday) VALUES(?, ?, ?,?, ?)";

        PreparedStatement prepStmt = Connection.getInstance().prepareStatement(query);
        prepStmt.setString(1,user.name);
        prepStmt.setString(2,user.email);
        prepStmt.setString(3,user.getPassword());
        prepStmt.setString(4,user.phone_number);
        prepStmt.setString(5,user.birthday);

        return prepStmt.executeUpdate();

    }
    public int save(Todo todo) throws Exception{

        String query = "INSERT INTO todo ( ID_user, title, content) VALUES(?, ?, ?)";

        PreparedStatement prepStmt = Connection.getInstance().prepareStatement(query);
        prepStmt.setInt(1,todo.ID_user);
        prepStmt.setString(2,todo.title);
        prepStmt.setString(3,todo.content);

        return prepStmt.executeUpdate();

    }
    public User checkLogin(User user) throws NoSuchAlgorithmException, SQLException {
        String query = "SELECT * FROM users WHERE email=? AND password = ? ";

        PreparedStatement prepStmt = Connection.getInstance().prepareStatement(query);
        prepStmt.setString(1,user.email);
        prepStmt.setString(2,user.getPassword());
        ResultSet resultat=prepStmt.executeQuery();
        if( resultat.next() ){
            User _user = new User();
            _user.setEmail(resultat.getString("email"));
            _user.setName(resultat.getString("name"));
            _user.setBirthday(resultat.getString("birthday"));
            _user.setPhone_number(resultat.getString("phone_number"));
            _user.setID_user(resultat.getInt("ID_user"));
            return _user;
        }else return null;

    }
    public ArrayList<Todo> getTodoList(int ID_user) throws SQLException {
        String query = "SELECT * FROM todo WHERE ID_user=?  ";

        PreparedStatement prepStmt = Connection.getInstance().prepareStatement(query);
        prepStmt.setInt(1,ID_user);
        ResultSet resultat=prepStmt.executeQuery();
        ArrayList<Todo> todoList=new ArrayList<>();
        while( resultat.next() ){
            Todo todo=new Todo();
            todo.setID_todo(resultat.getInt("ID_todo"));
            todo.setID_user(resultat.getInt("ID_user"));
            todo.setTitle(resultat.getString("title"));
            todo.setContent(resultat.getString("content"));
            todo.setDate(resultat.getString("date"));
            todoList.add(todo);
        }
        return todoList;
    }
    public int deleteTodo(int id,int user) throws SQLException {
        String query = "DELETE FROM todo WHERE ID_todo=? and ID_user=?";

        PreparedStatement prepStmt = Connection.getInstance().prepareStatement(query);
        prepStmt.setInt(1,id);
        prepStmt.setInt(2,user);


        return prepStmt.executeUpdate();

    }

}
