package www.express.action.login;

import org.apache.struts2.ServletActionContext;

import www.express.factory.UsersFactory;
import www.express.pojo.Users;

public class UsersLoginAction {
	public String execute() {
		String sId = ServletActionContext.getRequest().getParameter("id");
		long lId = Long.parseLong(sId);
		String sPassword = ServletActionContext.getRequest().getParameter(
				"password");
		Users user = UsersFactory.getMethod().findById(lId);
		if (null == user) {
			return "noThisUser"; // û�и��û�
		} else if (user.getPermission() == 1) { // �жϹ���Ա���
			if (sPassword.equals(user.getPassword())) {
				ServletActionContext.getRequest().getSession()
						.setAttribute("admin", user);
				return "adminLoginSuccess";
			} else {
				return "adminLoginFailure";
			}
		} else { // �ж���ͨ�û����
			if (sPassword.equals(user.getPassword())) {
				ServletActionContext.getRequest().getSession()
						.setAttribute("student", user);
				return "studentLoginSuccess";
			} else {
				return "studentLoginFailure";
			}
		}
	}
}
