package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.user.LoginController;
import model.Policy;

public class PolicyDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(PolicyDAO.class);

	private JDBCUtil jdbcUtil = null;

	public PolicyDAO() {
		jdbcUtil = new JDBCUtil();
	}

	public Policy insertPolicy(Policy pol) throws SQLException {

		int generatedKey;

		String sql = "INSERT INTO Policy VALUES (policyIdSeq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		Object[] param = new Object[] { pol.getName(), pol.getStartAge(), pol.getContents(), pol.getCategory(),
				pol.getLocal(), pol.getPolicySummary(), pol.getQualificationForApplication(),pol.getHowToApply(),
				pol.getStartDate(), pol.getIncome(), pol.getEndAge(), pol.getEndDate(), 'n' };
		
		jdbcUtil.setSqlAndParameters(sql, param);

		String key[] = { "policyId" };

		try {
			jdbcUtil.executeUpdate();

			ResultSet rs = jdbcUtil.getGeneratedKeys();
			if (rs.next()) {
				generatedKey = rs.getInt(1);
				pol.setPolicyId(generatedKey);
			}

			return pol;
		} catch (Exception e) {
			jdbcUtil.rollback();
			e.printStackTrace();
		} finally {
			jdbcUtil.commit();
			jdbcUtil.close();
		}

		return null;
	}

	/*
	 * �뜝�럥�맶�뜝�럥吏쀥뜝�럩援꿨뜝�럥�맶�뜝�럥吏쀥뜝�럩援� policy �뜝�럥�맶�뜝�럥吏쀥뜝�럩援꿨뜝�럥�맶�뜝�럥吏쀥뜝�럩援�
	 * �뜝�럥�맶�뜝�럥吏쀥뜝�럩援꿨뜝�럥�맶�뜝�럥吏쀥뜝�럩援�
	 */
	public int updatePolicy(Policy pol) throws SQLException {

		String sql = "UPDATE Policy "
				   + "SET name=?, contents=?, category=?, startDate=?, endDate=?, policySummary=?, qualificationForApplication=?, howToApply=?, local=?, startAge=?, endAge=?, income=? "
				   + "WHERE policyId=?";

		String name = pol.getName();
		String contents = pol.getContents();
		String category = pol.getCategory();
		int startAge = pol.getStartAge();
		int endAge = pol.getEndAge();
		String policySummary = pol.getPolicySummary();
		String qualApp = pol.getQualificationForApplication();
		String howToApply = pol.getHowToApply();
		String local = pol.getLocal();
		String startDate = pol.getStartDate();
		String endDate = pol.getEndDate();
		int income = pol.getIncome();

		if (qualApp.equals(""))
			qualApp = null;
		if (startDate.equals(""))
			startDate = null;
		if (endDate.equals(""))
			endDate = null;

		Object[] param = new Object[] { pol.getName(), pol.getContents(), pol.getCategory(), pol.getStartDate(), pol.getEndDate(),  
				pol.getPolicySummary(), pol.getQualificationForApplication(), pol.getHowToApply(), pol.getLocal(), pol.getStartAge(), pol.getEndAge(),
				 pol.getIncome(), pol.getPolicyId() }; //수정함
		jdbcUtil.setSqlAndParameters(sql, param);

		try {
			int result = jdbcUtil.executeUpdate();
			return result;
		} catch (Exception e) {
			jdbcUtil.rollback();
			e.printStackTrace();
		} finally {
			jdbcUtil.commit();
			jdbcUtil.close();
		}
		return 0;

	}

	/* policy �뜝�럥�맶�뜝�럥吏쀥뜝�럩援꿨뜝�럥�맶�뜝�럥吏쀥뜝�럩援� �뜝�럥�맶�뜝�럥吏쀥뜝�럩援꿨뜝�럥�맶�뜝�럥吏쀥뜝�럩援� */
	public int deletePolicy(int policyId) throws SQLException {
		String sql = "DELETE FROM Policy " 
				   + "WHERE policyId=?";

		jdbcUtil.setSqlAndParameters(sql, new Object[] { policyId });

		try {
			int result = jdbcUtil.executeUpdate();
			return result;
		} catch (Exception e) {
			jdbcUtil.rollback();
			e.printStackTrace();
		} finally {
			jdbcUtil.commit();
			jdbcUtil.close();
		}
		return 0;
	}

	public boolean existingPolicy(int policyId) throws SQLException {
		String sql = "SELECT count(*) " 
				   + "FROM Policy " 
				   + "WHERE policyId=?";
		
		jdbcUtil.setSqlAndParameters(sql, new Object[] { policyId });

		try {
			ResultSet rs = jdbcUtil.executeQuery(); // query �뜝�럥�맶�뜝�럥吏쀥뜝�럩援꿨뜝�럥�맶�뜝�럥吏쀥뜝�럩援�
			if (rs.next()) {
				int count = rs.getInt(1);
				return (count == 1 ? true : false);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			jdbcUtil.close(); // resource �뜝�럥�맶�뜝�럥吏쀥뜝�럩援꿨뜝�럩�꼶
		}
		return false;
	}

	public List<Policy> searchPolicyList(String category, int income, String local, int startAge, int endAge,int currentPage, int countPerPage) throws SQLException {
	
		logger.debug("in PolicyDAO, searchPolicyList");
		logger.debug(category+ "," +income+ ", " +local+ ", " +startAge+ ", " + endAge+ ", " + currentPage+ ", " + countPerPage);
		
		String sql = null;
		Object[] param;
		String q = "SELECT policyId, name, category, policySummary " 
			       + "FROM Policy ";
		
		if(local.equals("전국")) {
			sql = q + "WHERE category=? AND income<=? AND startAge<=? AND endAge>=? " 
						   + "ORDER BY policyId";

			param = new Object[] { category, income, startAge, endAge };
		}
		else {
			sql = q + "WHERE category=? AND income<=? AND local=? AND startAge<=? AND endAge>=? " 
			       	   + "ORDER BY policyId";

			param = new Object[] { category, income, local, startAge, endAge };
		
		}
		
		jdbcUtil.setSqlAndParameters(sql, param, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
		
		try {
			ResultSet rs = jdbcUtil.executeQuery();
			
			int start = ((currentPage - 1) * countPerPage) + 1;
			
//			if ((start >= 0) && rs.absolute(start)) {
			if ((start >= 0)) {
				logger.debug("in if");
				List<Policy> polList = new ArrayList<Policy>();
				
//				logger.debug("start: " +start+ ", rs: " +rs);

				 while ((rs.next()) && (--countPerPage > 0)) {
					logger.debug("name: "+ rs.getString("name"));
					
					Policy pol = new Policy(rs.getInt("policyId"), 
							rs.getString("name"), 
							rs.getString("category"),
							rs.getString("policySummary"));
					
					polList.add(pol);
				}
				
				return polList;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			jdbcUtil.close(); // resource �뜝�럥�맶�뜝�럥吏쀥뜝�럩援꿨뜝�럩�꼶
		}
		return null;
	}

	public List<Policy> findPolicyList() throws SQLException {
		String sql = "SELECT policyId, name, category, policySummary " 
				   + "FROM Policy " 
				   + "ORDER BY policyId";

		jdbcUtil.setSqlAndParameters(sql, null);

		try {
			ResultSet rs = jdbcUtil.executeQuery();
			List<Policy> polList = new ArrayList<Policy>();
			while (rs.next()) {
				Policy pol = new Policy(rs.getInt("policyId"), 
						rs.getString("name"), 
						rs.getString("category"),
						rs.getString("policySummary"));
				polList.add(pol);
			}
			return polList;

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			jdbcUtil.close();
		}
		return null;
	}

	public Policy findPolicy(int policyId) throws SQLException {
		String sql = "SELECT name, contents, category, to_char(startDate, 'YYYY-MM-DD') as startDate, to_char(endDate, 'YYYY-MM-DD') as endDate, policySummary, qualificationForApplication, howToApply, local, startAge, endAge, income, scrap "
				   + "FROM Policy " 
				   + "WHERE policyId=? ";

		jdbcUtil.setSqlAndParameters(sql, new Object[] { policyId });
		Policy pol = null;

		try {
			ResultSet rs = jdbcUtil.executeQuery();

			if (rs.next()) {
				pol = new Policy(policyId, 
						rs.getString("name"), 
						rs.getString("contents"),
						rs.getString("category"), 
						rs.getString("startDate"), 
						rs.getString("endDate"),
						rs.getString("policySummary"), 
						rs.getString("qualificationForApplication"),
						rs.getString("howToApply"), 
						rs.getString("local"), 
						rs.getInt("startAge"), 
						rs.getInt("endAge"),
						rs.getInt("income"),
						false);

				return pol;
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			jdbcUtil.close();
		}
		return null;
	}

}