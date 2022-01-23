package controller;

import java.util.HashMap;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.user.*;
import controller.policy.*;
import controller.scrap.*;
import controller.post.*;
import controller.reply.*;

public class RequestMapping {
    private static final Logger logger = LoggerFactory.getLogger(DispatcherServlet.class);
    
    
    private Map<String, Controller> mappings = new HashMap<String, Controller>();

    public void initMapping() {
    	
    	logger.debug("RequestMaaping");
    	mappings.put("/", null);
    	
    	
        mappings.put("/", new ForwardController("index.jsp"));
    	
    	
        mappings.put("/user/login/form", new ForwardController("/user/loginForm.jsp"));
        mappings.put("/user/login", new LoginController());
        mappings.put("/user/logout", new LogoutController());
        
       
        
        mappings.put("/user/register", new RegisterUserController());
        mappings.put("/user/update", new UpdateUserController());
        
        mappings.put("/user/delete", new DeleteUserController());
        
        //policy
        mappings.put("/policy/insert", new InsertPolicyController());
        mappings.put("/policy/list", new ListPolicyController());
        mappings.put("/policy/view", new ViewPolicyController());
        mappings.put("/policy/search", new SearchPolicyController());
        mappings.put("/policy/delete", new DeletePolicyController());
//        mappings.put("/policy/update/form", new UpdatePolicyController());
        mappings.put("/policy/update", new UpdatePolicyController());
       
        //scrap
        mappings.put("/policy/scrap/add", new AddScrapController());
        mappings.put("/policy/scrap/cancel", new CancelScrapController());
       // mappings.put("/post/scrap/list", new ListScrapController());
        
        //comment
		mappings.put("/post/reply/add", new CreateReplyController());
//		mappings.put("/post/reply/list", new ListReplyController());
		mappings.put("/post/reply/delete", new DeleteReplyController());
		mappings.put("post/agree", new AddAgreeController());
		
        //post
        mappings.put("/post/write", new ForwardController("/post/postWrite.jsp"));
        
        mappings.put("/post/add", new AddPostController());
        mappings.put("/post/list", new ListPostController());
        mappings.put("/post/view", new ViewPostController()); 
        mappings.put("/post/delete", new DeletePostController()); 
        mappings.put("/post/update", new UpdatePostController()); 
        
        //mypage
        mappings.put("/mypage", new ForwardController("/user/mypage.jsp")); 
        mappings.put("/mypage/scrap/view", new ListScrapController());
        mappings.put("/user/view", new ViewUserController());
        mappings.put("/mypage/calendar/view", new CalendarController());     
        
        mappings.put("/mypage/myPost", new UserPostListController());
        
        mappings.put("/mypage/myComment", new ForwardController("/user/myComment.jsp"));
        
        //main page
        mappings.put("/main", new ForwardController("/home/main.jsp"));
        
        logger.info("Initialized Request Mapping!");
    }

    public Controller findController(String uri) {
    	logger.debug("mappings.get" +mappings.get(uri));
    	// 占쎈쐻占쎈솂占쎈섣占쎌굲占쎈쐻占쎈짗占쎌굲 uri占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈뼄占쎈솇占쎌굲 controller 占쎈쐻占쎈짗占쎌굲筌ｋ떣�쐻占쎈짗占쎌굲 筌≪뼃�쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎌넎
        return mappings.get(uri);
    }
}
