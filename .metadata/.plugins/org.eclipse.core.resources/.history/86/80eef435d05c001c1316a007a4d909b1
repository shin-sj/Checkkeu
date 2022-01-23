package model.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.post.ViewPostController;
import model.Post;
import model.Reply;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

	public class ReplyDAO {
		
		private static final Logger logger = LoggerFactory.getLogger(ReplyDAO.class);
		
		private JDBCUtil jdbcUtil = null;
	
		public ReplyDAO() {	
			jdbcUtil = new JDBCUtil();	
		}

	public Reply createReply(Reply re) throws SQLException {
		
		logger.debug("in ReplyDAO");
		
		int generatedKey;
		
		String sql = "INSERT INTO Reply VALUES ( ?, ?, ?, ?, replyNumSeq.nextval)";		
		Object[] param = new Object[] {'n', re.getReplyContent(), re.getPostNum(), 'n'};		
	
		jdbcUtil.setSqlAndParameters(sql, param);
		
		String key[] = {"replyNum"};
		
		logger.debug("ReplyDAO re: " +re);
					
		try {				
			jdbcUtil.executeUpdate();
			
			ResultSet rs = jdbcUtil.getGeneratedKeys();
			if(rs.next()) {
				generatedKey = rs.getInt(5);
				re.setReplyNum(generatedKey);
				logger.debug("generatedKey: " +generatedKey);
			}
			
			return re;
		
		} catch (Exception ex) {
			jdbcUtil.rollback();
			ex.printStackTrace();
		} finally {		
			jdbcUtil.commit();
			jdbcUtil.close();	
		}		
		return null;			
	}
	
	public List<Reply> findReplyList(int postNum) throws SQLException {
		
		logger.debug("in ReplyDAO");
		
		String sql = "SELECT * "
				+ "FROM Reply "
				+ "WHERE postNum=?"
				+ "ORDER BY replyNum";
		
		Object[] param = new Object[] {postNum};
				
		jdbcUtil.setSqlAndParameters(sql, param);
		
		try {
			ResultSet rs = jdbcUtil.executeQuery();				
			List<Reply> replyList = new ArrayList<Reply>();	
			while (rs.next()) {
				Reply re = new Reply(			
						rs.getInt("postNum"),
						rs.getString("agree"),
						rs.getString("replyContent"),
						rs.getInt("replyNum"),
						rs.getString("disagree"));
				replyList.add(re);				
			}		
			logger.debug("in ReplyDAO, find ReplyList");
			
			return replyList;					
			
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			jdbcUtil.close();		
		}
		
		return null;
		
	}

}
