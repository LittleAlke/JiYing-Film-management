package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import service.impl.MovieServiceImpl;

import javax.servlet.http.HttpServletRequest;

/**
 * :
 * Alke
 * 2020-12-21 10:17
 */
public class DeleteAction extends ActionSupport {

    public String execute(){
        ApplicationContext context =
                new ClassPathXmlApplicationContext("applicationContext.xml");
        MovieServiceImpl movieService = (MovieServiceImpl) context.getBean("movieServiceImpl");
        //获取所点击的链接的值type
        HttpServletRequest request = ServletActionContext.getRequest();
        String movieName = request.getParameter("selectOne");
        movieService.delete(movieName);
       return SUCCESS;
    }
}
