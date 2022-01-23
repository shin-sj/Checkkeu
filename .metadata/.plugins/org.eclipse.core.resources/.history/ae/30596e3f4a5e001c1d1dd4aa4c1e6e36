package controller.policy;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.Controller;
import controller.user.LoginController;
import model.Policy;
import model.Scrap;
import model.service.PolicyManager;
import model.service.ScrapManager;

public class ViewPolicyController implements Controller {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		logger.debug("in ViewPolicyController");
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		
		Policy pol = null;
		List<Scrap> scrapList = null;
		
		PolicyManager polMan = PolicyManager.getInstance();
		ScrapManager scMan = ScrapManager.getInstance();
		
		logger.debug("polMan in ViewPolicyController: " +polMan); //¿©±â±îÁö µÊ
		
		int policyId = Integer.parseInt(request.getParameter("policyId"));
		logger.debug("policyId in ViewPolicyController: " +policyId);
		
		pol = polMan.findPolicy(policyId);
		logger.debug("pol in ViewPolicyController: " +pol);
		scrapList = scMan.getScrapList(userId);
		
		request.setAttribute("policy", pol);
		request.setAttribute("scrapDateList", scrapList);
		
		return "/policy/policyDetail.jsp";
	}

}
