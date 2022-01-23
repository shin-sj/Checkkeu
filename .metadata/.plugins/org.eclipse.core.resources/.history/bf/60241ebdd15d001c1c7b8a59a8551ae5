package model.service;

import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.user.LoginController;
import model.dao.PolicyDAO;
import model.Policy;

public class PolicyManager {
	
	private static final Logger logger = LoggerFactory.getLogger(PolicyManager.class);
	
	private static PolicyManager polMan = new PolicyManager();
	private PolicyDAO polDAO;
	
	private PolicyManager() {
		try {
			polDAO = new PolicyDAO();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static PolicyManager getInstance() {
		return polMan;
	}
	

	/* Á¤Ã¥ µî·Ï */
	public Policy insert(Policy pol) throws SQLException, ExistingPolicyException {
		if (polDAO.existingPolicy(pol.getPolicyId()) == true) {
			throw new ExistingPolicyException(pol.getPolicyId() + "ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½ ï¿½ï¿½Ã¥ï¿½Ô´Ï´ï¿½.");			
		}
		return polDAO.insertPolicy(pol);
	}
	
	
	/* Á¤Ã¥ ¼öÁ¤ */
	public int update(Policy pol) throws SQLException, NoExistingPolicyException {
		
		if (polDAO.existingPolicy(pol.getPolicyId()) == false) {
			throw new NoExistingPolicyException(pol.getPolicyId() + "Á¤Ã¥ÀÌ Á¸ÀçÇÏÁö¾Ê½À´Ï´Ù.");
		}
		
		return polDAO.updatePolicy(pol);
	}
	
	/* Á¤Ã¥ »èÁ¦ */
	public int delete(int policyId) throws SQLException, NoExistingPolicyException {
		
		if (polDAO.existingPolicy(policyId) == false) {
			throw new NoExistingPolicyException(policyId + "Á¤Ã¥ÀÌ Á¸ÀçÇÏÁö ¾Ê½À´Ï´Ù.");
		}
		
		return polDAO.deletePolicy(policyId);
	}
	
	/* Á¤Ã¥ Á¶°Ç °Ë»ö */
	public List<Policy> searchPolicyList(String category, int income, String local, int startAge, int endAge, int currentPage, int countPerPage) throws SQLException {
		logger.debug("in manager, searchPolicyList- " +category+ ", " +endAge);
		return polDAO.searchPolicyList(category, income, local, startAge, endAge, currentPage, countPerPage);
	}
	
	/* Á¤Ã¥ Ã£±â */
	public Policy findPolicy(int policyId) throws SQLException, NoExistingPolicyException {	
		Policy pol = polDAO.findPolicy(policyId);
		
		logger.debug("in manager, findPolicy" +pol);
		
		if(pol == null) {
			throw new NoExistingPolicyException("ID°¡ " +policyId + "ÀÎ Á¤Ã¥ÀÌ Á¸ÀçÇÏÁö ¾Ê½À´Ï´Ù.");
		}
		
		return pol;
	}

	public List<Policy> findPolicyList() throws SQLException {
		return polDAO.findPolicyList();
	}

	

}
