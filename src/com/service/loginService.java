package com.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;

import com.dao.TAdminDAO;
import com.dao.TBankuaiDAO;
import com.dao.TUserDAO;
import com.model.TAdmin;
import com.model.TUser;
import com.util.Cart;

public class loginService {
	private TAdminDAO adminDAO;
	private TUserDAO userDAO;
	private TBankuaiDAO bankuaiDAO;

	public TAdminDAO getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(TAdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}

	public TUserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(TUserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public String login(String userName, String userPw, int userType) {
		System.out.println("userType" + userType);
		String result = "no";
		try {
			if (userType == 0){// 系统管理员登陆
				String sql = "from TAdmin where userName=? and userPw=?";
				Object[] con = { userName, userPw };
				List adminList = adminDAO.getHibernateTemplate().find(sql, con);
				if (adminList.size() == 0) {
					result = "no";
				} else {
					WebContext ctx = WebContextFactory.get();
					HttpSession session = ctx.getSession();
					TAdmin admin = (TAdmin) adminList.get(0);
					session.setAttribute("userType", 0);
					session.setAttribute("admin", admin);
					result = "admin_yes";
				}
			}else if (userType == 1) {
				String sql = "from TUser where loginname=? and userPw=? and userDel='no'";
				Object[] con = { userName, userPw };
				List userList = userDAO.getHibernateTemplate().find(sql, con);

				if (userList.size() == 0) {
					result = "no";
				} else {
					WebContext ctx = WebContextFactory.get();
					HttpSession session = ctx.getSession();
					TUser user = (TUser) userList.get(0);

					session.setAttribute("userType", 1);
					session.setAttribute("user", user);

					Cart cart = new Cart();
					session.setAttribute("cart", cart);
					result = "user_yes";
				}
			}else {
				//do something
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	/**
	 * 
	 * @Title: userLogout 
	 * @Description:  退出登录
	 * @author ts 
	 * @date 2019-3-28 上午09:02:28 
	 * @return
	 */
	public String userLogout() {
		try {
			WebContext ctx = WebContextFactory.get();
			HttpSession session = ctx.getSession();
			//销毁session
			session.setAttribute("userType", null);
			session.setAttribute("user", null);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "yes";
	}
	/**
	 * 
	 * @Title: adminPwEdit 
	 * @Description:  密码修改
	 * @author ts 
	 * @date 2019-3-28 上午09:03:51 
	 * @param userPwNew
	 * @return
	 */
	public String adminPwEdit(String userPwNew) {
		try {
			WebContext ctx = WebContextFactory.get();
			HttpSession session = ctx.getSession();

			TAdmin admin = (TAdmin) session.getAttribute("admin");
			admin.setUserPw(userPwNew);

			adminDAO.getHibernateTemplate().update(admin);
			session.setAttribute("admin", admin);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "yes";
	}

	public TBankuaiDAO getBankuaiDAO() {
		return bankuaiDAO;
	}

	public void setBankuaiDAO(TBankuaiDAO bankuaiDAO) {
		this.bankuaiDAO = bankuaiDAO;
	}

	public List catelogSelect() {
		String sql = "from TBankuai where del='no'";
		List cateLogList = bankuaiDAO.getHibernateTemplate().find(sql);
		return cateLogList;
	}

}
