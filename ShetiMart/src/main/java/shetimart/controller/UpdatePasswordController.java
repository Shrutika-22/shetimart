package shetimart.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shetimart.dao.ProductCrud;
import shetimart.dao.UserCrud;
import shetimart.dto.User;

@WebServlet("/updatepassword")
public class UpdatePasswordController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String confirmPassword = req.getParameter("confirmpassword");

		try {
			RequestDispatcher dispatcher = null;
			if (password.equals(confirmPassword)) {
				User user = new User();
				ProductCrud productCURD = new ProductCrud();
				UserCrud curd = new UserCrud();
				user.setPassword(password);
				User UserRole = curd.getAllUserInfo(email);
				
				int result = curd.updatePassword(email, password);
				if (result != 0 &&  UserRole.getRole().equalsIgnoreCase("Buyer")) {
//					List<Product> list = productCURD.getAllProduct();
//					req.setAttribute("listOfProduct", list);
//					req.setAttribute("bmessage", "Password Changed!");
					req.setAttribute("message", "Password Changed!Please Login!");
					dispatcher = req.getRequestDispatcher("krushi_Login.jsp");
				}
				else if(result != 0 &&  UserRole.getRole().equalsIgnoreCase("Farmer")) {
//					List<Product> list = productCURD.getAllProduct();
//					req.setAttribute("listOfProduct", list);
//					req.setAttribute("fmessage", "Password Changed!");
					req.setAttribute("message", "Password Changed!Please Login!");
					dispatcher = req.getRequestDispatcher("krushi_Login.jsp");
				}
				else {
					req.setAttribute("usermessage", "Enter Registered mail id !!");
					dispatcher = req.getRequestDispatcher("changePassword.jsp");
				}
			}
			else {
				req.setAttribute("usermessage", "Password and Confirm Password not same !!");
				dispatcher = req.getRequestDispatcher("changePassword.jsp");
			}
			dispatcher.forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
