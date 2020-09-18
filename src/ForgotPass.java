import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

@WebServlet("/ForgotPass")
public class ForgotPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ForgotPass() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			String dn=null;
			String uname = req.getParameter("name");
			String pass = req.getParameter("psw");
			String password = req.getParameter("psw1");
			String sql = "update info set password=? where name=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/monil","root","*monil28");
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			
			ps.setString(1, password);
			ps.setString(2,uname);
			ps.executeUpdate();
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				dn = rs.getString(2);
			}
			
			if(pass.equals(password) && uname.equals(dn)){
				RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
				rd.forward(req,res);
			}
			else {
				RequestDispatcher rd = req.getRequestDispatcher("Forgotpass.jsp");
				rd.include(req,res);
			}
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}
}