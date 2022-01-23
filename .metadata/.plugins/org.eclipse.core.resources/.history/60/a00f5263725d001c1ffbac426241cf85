package controller.scrap;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.Controller;
import controller.DispatcherServlet;
import model.Scrap;
import model.service.ScrapManager;

public class ListScrapController implements Controller {
	 private static final Logger logger = LoggerFactory.getLogger(DispatcherServlet.class);

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		logger.debug("ListScrap controller");
		
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		
		ScrapManager scMan = ScrapManager.getInstance();
		//List<Scrap> scrapList = scMan.getScrapList(request.getParameter("userId"));
		List<Scrap> scrapList = null;
		scrapList = scMan.getScrapList(userId);
		
		request.setAttribute("scrapList", scrapList);
		return "/user/scrap.jsp"; // scrap/list
		
	//	return "/mypage/scrap/view?userId=" +userId;
	//	return "redirect:/mypage/scrap/view";
		
	}
	

}
