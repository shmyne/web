package model;

import com.sun.xml.internal.bind.v2.model.core.ID;

import java.sql.SQLException;
import java.util.ArrayList;

public class Todo {
    public int ID_todo;
    public int ID_user;
    public String title;
    public String content;
    public String date;

    public int getID_user() {
        return ID_user;
    }

    public int getID_todo() {
        return ID_todo;
    }

    public void setID_todo(int ID_todo) {
        this.ID_todo = ID_todo;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDate() {
        return date;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public void setID_user(int ID_user) {
        this.ID_user = ID_user;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public static void create(Todo todo) throws Exception {
        new DatabaseHandler().save(todo);
    }
    public static ArrayList<Todo> getTodoList(int ID_user) throws Exception {
       return new DatabaseHandler().getTodoList(ID_user);
    }
    public static void delete(int id,int user) throws SQLException {
        new DatabaseHandler().deleteTodo(id,user);
    }

}
