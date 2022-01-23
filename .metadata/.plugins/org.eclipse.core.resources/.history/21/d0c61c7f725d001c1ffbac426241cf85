package model.service;

import java.sql.SQLException;
import java.util.List;

import model.Policy;
import model.Scrap;
import model.User;
import model.dao.PolicyDAO;
import model.dao.ScrapDAO;

public class ScrapManager {
	
	private static ScrapManager scMan = new ScrapManager();
	private ScrapDAO scrapDAO;
	
	private ScrapManager() {
		try {
			scrapDAO = new ScrapDAO();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static ScrapManager getInstance() {
		return scMan;
	}

	// Ω∫≈©∑¶ √ﬂ∞°
	public Scrap add(Scrap scrap) throws SQLException {
		return scrapDAO.addScrap(scrap);
	}
	
	// Ω∫≈©∑¶ √Îº“
	public int cancel(String userId) throws SQLException {
		return scrapDAO.cancelScrap(userId);
	}
	

}