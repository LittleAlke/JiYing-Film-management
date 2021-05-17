package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.Movie;
import org.apache.commons.io.FileUtils;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import service.impl.MovieServiceImpl;

import java.io.*;

import java.util.Map;

/**
 * :
 * Alke
 * 2020-12-17 11:02
 */
public class AddMovie extends ActionSupport {
    private String movieName;
    private String type;
    private java.sql.Date date;
    private File uploadPic;
    private String uploadPicFileName;

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public java.sql.Date getDate() {
        return date;
    }

    public void setDate(java.sql.Date date) {
        this.date = date;
    }

    public File getUploadPic() {
        return uploadPic;
    }

    public void setUploadPic(File uploadPic) {
        this.uploadPic = uploadPic;
    }

    public String getUploadPicFileName() {
        return uploadPicFileName;
    }

    public void setUploadPicFileName(String uploadPicFileName) {
        this.uploadPicFileName = uploadPicFileName;
    }

    public String execute() throws IOException {
        System.setOut(new PrintStream(new BufferedOutputStream(
                new FileOutputStream("d:/test/print.txt")),true));
        System.out.println(movieName);
        System.out.println(type);
        System.out.println(date);
        System.out.println(uploadPicFileName);
        System.out.println("this: "+this.getMovieName());
        System.out.println("this: "+this.getType());
        System.out.println("this: "+this.getDate());
        System.out.println("this: "+this.uploadPicFileName);

        String path = "D:\\JetBrains\\IntelliJ_IDEA\\JiYing\\web\\cloud";
        File file = new File(path);
        if(!file.exists()){
            file.mkdir();
        }
        //将页面传过来的数据通过FileUtils 拷贝到我们刚刚定义的路径下
        FileUtils.copyFile(uploadPic, new File(file,uploadPicFileName));
        Map session = ActionContext.getContext().getSession();
        session.put("upSuccess",1);

        //获取路径名+文件名的字符串：自己做测试用的可写可不写根据需求了

        String file2 = new File(file,uploadPicFileName).toString();

        System.out.println("文件名："+uploadPicFileName);
        System.out.println("file2:"+file2);

//加载context获取movieService对象
        ApplicationContext context =
                new ClassPathXmlApplicationContext("applicationContext.xml");
        MovieServiceImpl movieService = (MovieServiceImpl) context.getBean("movieServiceImpl");
        Movie movie = (Movie)context.getBean("movie");

        movie.setName(movieName);
        movie.setType(type);
        movie.setDate(date);
        movie.setPicture_path(uploadPicFileName);


        System.out.println(movie);

        movieService.saveOrUpdate(movie);

        return SUCCESS;
    }

}
