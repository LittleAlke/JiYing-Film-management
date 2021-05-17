package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import service.UserService;

import java.util.Map;

/**
 * :
 * Alke
 * 2020-12-19 11:23
 */
public class MainAction extends ActionSupport {
    public String execute() throws Exception {
        ApplicationContext context =
                new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userService = (UserService) context.getBean("userServiceImpl");
        Map session = ActionContext.getContext().getSession();
        session.put("type", userService.loadType());
        session.put("actor",userService.loadActor());
        session.put("date",userService.loadDate());
        return SUCCESS;
    }
}
