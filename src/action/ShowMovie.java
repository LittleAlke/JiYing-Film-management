package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import service.UserService;
import service.impl.MovieServiceImpl;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * :
 * Alke
 * 2020-12-16 13:28
 */
public class ShowMovie extends ActionSupport {
    private String message = ERROR;
    public String execute()throws Exception{
        //获取所点击的链接的值type
        HttpServletRequest request = ServletActionContext.getRequest();
        String value = request.getParameter("select");



        //加载context获取movieService对象
        ApplicationContext context =
                new ClassPathXmlApplicationContext("applicationContext.xml");
        MovieServiceImpl movieService = (MovieServiceImpl) context.getBean("movieServiceImpl");

        //向session中添加查找到的电影封面路径和电影名字路径
        List<String> listPicture = new ArrayList<>();
        List<String> listName = new ArrayList<>();
        for (Object pic: movieService.getPicturePath(value))
            listPicture.add((String) pic);
        for (Object name: movieService.getMovieName(value))
            listName.add((String) name);
        Map session = ActionContext.getContext().getSession();
        session.put("picturePath",listPicture);
        session.put("movieName",listName);

        message = SUCCESS;
        return SUCCESS;
    }

}
