package controller.policy;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.Controller;
import controller.user.LoginController;
import model.Policy;
import model.service.PolicyManager;

public class ViewPolicyController implements Controller {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		logger.debug("in ViewPolicyController");
		 
		Policy pol = null;
		
		PolicyManager polMan = PolicyManager.getInstance();
		logger.debug("polMan in ViewPolicyController: " +polMan); //¿©±â±îÁö µÊ
		
		int policyId = Integer.parseInt(request.getParameter("policyId"));
		logger.debug("policyId in ViewPolicyController: " +policyId);
		
		pol = polMan.findPolicy(policyId);
		logger.debug("pol in ViewPolicyController: " +pol);
		
		request.setAttribute("policy", pol);
		
		return "/policy/policyDetail.jsp";
	}

}
