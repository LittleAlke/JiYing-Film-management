package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import service.UserService;
import service.impl.UserServiceImpl;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * :
 * Alke
 * 2020-12-15 10:23
 */
public class LoginAction extends ActionSupport {


    private String userName;
    private String passWord;
    private String message = "error";
    private List<User> list;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String execute() throws Exception {
        if (this.getUserName() == null || this.getUserName().length() == 0) {

        } else {
            ApplicationContext context =
                    new ClassPathXmlApplicationContext("applicationContext.xml");
            UserService userService = (UserService) context.getBean("userServiceImpl");
//            Map session = ActionContext.getContext().getSession();
//            session.put("type", userService.loadType());
//            session.put("actor",userService.loadActor());
//            session.put("date",userService.loadDate());
            if (userService.Login(userName,passWord)){
                return SUCCESS;
            }else {
                return ERROR;
            }
        }
        return ERROR;
    }
}
