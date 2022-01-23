package model.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Policy;
import model.Post;

public class PostDAO {

	private JDBCUtil jdbcUtil = null;
	
	public PostDAO() {			
		jdbcUtil = new JDBCUtil();	
	}
	

	public Post insertPost(Post po) throws SQLException {
			
		int generatedKey;
		
		String sql = "INSERT INTO Post VALUES (postNumSeq.nextval, ?, ?, ?, ?, ?)";
		
		Object[] param = new Object[] { po.getTitle(), po.getWriteDate(), po.getContent(), po.getUserId(), po.getPolicyId() };	
		
		jdbcUtil.setSqlAndParameters(sql, param);
		
		String key[] = {"postNum"};
		
		try {
			jdbcUtil.executeUpdate();
			
			ResultSet rs = jdbcUtil.getGeneratedKeys();
			if(rs.next()) {
				generatedKey = rs.getInt(1);
				po.setPostNum(generatedKey);
			}
			return po;
		} catch (Exception e) {
			jdbcUtil.rollback();
			e.printStackTrace();
		} finally {
			jdbcUtil.commit();
			jdbcUtil.close();
		}
		
		return null;
	}
	
	public int updatePost(Post po) throws SQLException{
	
		String sql = "UPDATE Post "
					+ "SET content=? "
					+ "WHERE postNum=?";
		
		String content = po.getContent();
		int postno = po.getPostNum();
		
		if (content.equals("")) content = null;
		
		Object[] param = new Object[] {content, postno};
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
	
	public int deletePost(int postNum) throws SQLException {
		
		String sql = "DELETE Post "
					+ "WHERE postNum=?";
		
		jdbcUtil.setSqlAndParameters(sql, new Object[] {postNum});
		
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
	
	public Post findPost(int postNum) throws SQLException {
        String sql = "SELECT postNum, policyId, user_Id, title, to_char(writeDate, 'YYYY-MM-DD') as writeDate, content "
                 + "FROM Post "
                 + "WHERE postNum=? ";   
        
      jdbcUtil.setSqlAndParameters(sql, new Object[] {postNum});    
      Post post = null;
      
      try {
         ResultSet rs = jdbcUtil.executeQuery();                
  
         if (rs.next()) {
            post = new Post (
            		rs.getInt("postNum"),
            		rs.getInt("policyId"),
            		rs.getString("user_Id"),
            		rs.getString("title"),
            		rs.getString("writeDate"),
            		rs.getString("content")
      		 );  
         }                    
         
      } catch (Exception ex) {
         ex.printStackTrace();
      } finally {
         jdbcUtil.close();      // resource 
      }
      return post;
   }
	

	public List<Post> findPostList() throws SQLException {
		
        String sql = "SELECT postNum, policyId, user_Id, title, to_char(writeDate, 'YYYY-MM-DD') as writeDate, content "
     		   + "FROM Post "
     		   + "ORDER BY postNum";   
        
		jdbcUtil.setSqlAndParameters(sql, null);	
					
		try {
			ResultSet rs = jdbcUtil.executeQuery();					
			List<Post> postList = new ArrayList<Post>();	
			while (rs.next()) {
				Post po = new Post(			
						rs.getInt("postNum"),
						rs.getInt("policyId"),
						rs.getString("user_Id"),
						rs.getString("title"),
						rs.getString("writeDate"),
						rs.getString("content"));
				postList.add(po);				// 
			}		
			return postList;					
			
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			jdbcUtil.close();		// 
		}
		return null;
	}
	
	/* myPost  */
	public List<Post> findMyPostList(String userId) throws SQLException {
		
        String sql = "SELECT postNum, policyId, user_Id, title, to_char(writeDate, 'YYYY-MM-DD') as writeDate, content "
     		   + "FROM Post "
        	   + "WHERE user_Id = ? "
     		   + "ORDER BY postNum";   
        
		jdbcUtil.setSqlAndParameters(sql, new Object[] {userId});	   
					
		try {
			ResultSet rs = jdbcUtil.executeQuery();			
			List<Post> postList = new ArrayList<Post>();	
			while (rs.next()) {
				Post po = new Post(		
						rs.getInt("postNum"),
						rs.getInt("policyId"),
						rs.getString("user_Id"),
						rs.getString("title"),
						rs.getString("writeDate"),
						rs.getString("content"));
				postList.add(po);				
			}		
			return postList;					
			
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			jdbcUtil.close();		// resource 
		}
		return null;
	}
}
