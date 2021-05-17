package service.impl;

import dao.impl.BaseDaoImpl;
import entity.Actor;
import entity.Movie;
import entity.User;
import org.springframework.stereotype.Service;
import service.UserService;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * :
 * Alke
 * 2020-12-15 10:36
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource(name = "baseDaoImpl")
    BaseDaoImpl baseDao;
    @Override
    public boolean Login(String username,String password) {
        List<User> list = baseDao.query("from User u where u.username="+username);
        for(User user : list){
            if (user.getPassword().equals(password)){
                return true;
            }
        }
        return false;
    }

    @Override
    public Set loadType() throws Exception{
        Set<String> set = new HashSet<>();
        List<Movie> list = baseDao.query("from Movie");
        for (Movie movie:list){
            set.add(movie.getType());
        }
        return set;
    }

    @Override
    public Set loadActor() {
        Set<String> set = new HashSet<>();
        List<Actor> list = baseDao.query("from Actor");
        for (Actor actor:list){
            set.add(actor.getName());
        }
        return set;
    }

    @Override
    public Set loadDate() {
        Set<Date> set = new HashSet<>();
        List<Movie> list = baseDao.query("from Movie");
        for (Movie movie:list){
            set.add(movie.getDate());
        }
        return set;
    }
}
