package project.test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

@WebServlet(urlPatterns = "/page")
public class TestDBServlet extends javax.servlet.http.HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = "administrator";
        String password = "administrator";
        String url = "jdbc:mysql://localhost:3306/web_customer_tracker?useSSL=false&serverTimezone=UTC";
        String driver = "com.mysql.cj.jdbc.Driver";
        try {
            PrintWriter printWriter = response.getWriter();
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(url, username, password);
            printWriter.write("Connection successful");
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
