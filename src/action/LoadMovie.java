package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.Movie;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import service.MovieService;
import service.UserService;
import service.impl.MovieServiceImpl;

import javax.servlet.http.HttpServletRequest;

/**
 * :
 * Alke
 * 2020-12-18 9:51
 */
public class LoadMovie extends ActionSupport {
    private String message = SUCCESS;


    public String execute(){
        ApplicationContext context =
                new ClassPathXmlApplicationContext("applicationContext.xml");
        MovieServiceImpl movieService = (MovieServiceImpl) context.getBean("movieServiceImpl");
        //获取所点击的链接的值type
        HttpServletRequest request = ServletActionContext.getRequest();
        String movieName = request.getParameter("selectOne");
        Movie movie = movieService.load(movieName);
        ActionContext.getContext().getSession().put("oneMovie", movie);
        return message;
    }


}
