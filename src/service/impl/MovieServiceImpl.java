package service.impl;

import dao.impl.BaseDaoImpl;
import entity.Actor;
import entity.Movie;
import org.springframework.stereotype.Service;
import service.MovieService;

import javax.annotation.Resource;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * :
 * Alke
 * 2020-12-16 14:18
 */
@Service
public class MovieServiceImpl implements MovieService {
    @Resource(name = "baseDaoImpl")
    BaseDaoImpl baseDao;
    @Override
    public Set getPicturePath(Object value) throws FileNotFoundException {
        //存放图片名称的Set
        Set<String> set = new HashSet<>();
        List<Movie> list = baseDao.query("from Movie");
        for (Movie movie:list){
            if (movie.getType().equals(value)||(movie.getDate().toString()).equals(value.toString())) {
                set.add(movie.getPicture_path());
            }
        }
        if (set.size()==0){
            List<Actor> actor = baseDao.query("from Actor a where a.name="+value);
            Set<Movie> setByActor = actor.get(0).getMovies();
            for (Movie movie:setByActor){
                    set.add(movie.getPicture_path());
            }
        }
        System.setOut(new PrintStream(new BufferedOutputStream(
                new FileOutputStream("d:/test/Service.txt")),true));
        System.out.println(set.toString());
        return set;
    }



    @Override
    public Set getMovieName(Object value) {
        Set<String> set = new HashSet<>();
        List<Movie> list = baseDao.query("from Movie");
        for (Movie movie:list){
            if (movie.getType().equals(value)||(movie.getDate().toString()).equals(value.toString())) {
                set.add(movie.getName());
            }
        }
        if (set.size()==0){
            List<Actor> listActor = baseDao.query("from Actor a where a.name="+value);
            Set<Movie> setByActor = listActor.get(0).getMovies();
            for (Movie movie:setByActor){
                set.add(movie.getName());
            }
        }
        return set;
    }

    @Override
    public void saveOrUpdate(Object o) {
        baseDao.saveOrUpdate(o);
    }

    @Override
    public Movie load(String movieName) {
       List<Movie> list =  baseDao.query("from Movie");
        System.out.println(list.size());
        for(Movie s:list){
            if ((s.getName().equals(movieName)))
                return s;
        }
        return null;
    }

    @Override
    public boolean delete(String name) {
        return baseDao.delete("delete from Movie m where m.name="+name);
    }
}
