package controller.policy;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import model.Policy;
import model.service.PolicyManager;

public class SearchPolicyController implements Controller {
	
	private static final int countPerPage = 10;	// 한 화면에 출력할 정책 수

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("in SearchPolicyController\n");
		
		if (request.getMethod().equals("GET")) {	
			PolicyManager polMan = PolicyManager.getInstance();
			List<Policy> findPolList = polMan.findPolicyList();
			
			request.setAttribute("polList", findPolList);
			return "/policy/policySearch.jsp";   
	    }
		
		System.out.println("POST");
		PolicyManager polMan = PolicyManager.getInstance();
		System.out.println("get PolicyManager");
		
		
		String category = request.getParameter("contents");
		int income = Integer.parseInt(request.getParameter("income"));
		String local = request.getParameter("local");
		int startAge = Integer.parseInt(request.getParameter("age"));
//		int endAge = Integer.parseInt(request.getParameter("endAge"));
		int endAge = startAge;
		
		System.out.println("정책유형: " +category+ "\n소득분위: " +income+ "\n거주지역: " +local+ "\n나이: " +startAge+ "\n");
		
    	String currentPageStr = request.getParameter("currentPage");	
		int currentPage = 1;
		if (currentPageStr != null && !currentPageStr.equals("")) {
			currentPage = Integer.parseInt(currentPageStr);
		}		
		
		List<Policy> searchPolList = polMan.searchPolicyList(category, income, local, startAge, endAge, currentPage, countPerPage);
		
		System.out.println("find list: " +searchPolList+ "\n");
		
		request.setAttribute("searchPolList", searchPolList);
		//return "/policy/policySearch.jsp";
		return "/policy/policySearchTest.jsp";
	}

}
