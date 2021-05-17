package test;

import dao.BaseDao;
import dao.impl.BaseDaoImpl;
import entity.Actor;
import entity.Movie;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.HibernateTemplate;

import javax.annotation.Resource;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * :
 * Alke
 * 2020-12-15 16:54
 */
public class Main {

    public static void main(String[] args) {
        ApplicationContext context = new
                ClassPathXmlApplicationContext("applicationContext.xml");
        HibernateTemplate hibernateTemplate = (HibernateTemplate) context.getBean("hibernateTemplate");
        List list = hibernateTemplate.execute(new HibernateCallback<List>() {
            @Override
            public List doInHibernate(Session session) throws HibernateException {
                Query query = session.createQuery("from Actor ");
                return query.list();
            }
        });
        Actor actor = (Actor) list.get(0);
        Set set = actor.getMovies();
        System.out.println(set);
    }

    void print() throws FileNotFoundException {



    }

//    @Test
//    public void test1(){
//        manytomany m = new manytomany();
//        HibernateTemplate hibernateTemplate = new HibernateTemplate(m.getS());
//        Movie m1 = new Movie();
//        m1.setName("钢铁侠");
//        Movie m2 = new Movie();
//        m2.setName("钢铁侠2");
//
//        Actor a1 = new Actor();
//        a1.setName("Tony");
//        Actor a2 = new Actor();
//        a2.setName("Small");
//
//        m1.getActors().add(a1);
//        a1.getMovies().add(m1);
//        m2.getActors().add(a2);
//        a2.getMovies().add(m2);
//
//        hibernateTemplate.save(m1);
//        hibernateTemplate.save(m2);
//        hibernateTemplate.save(a1);
//        hibernateTemplate.save(a2);
//    }


}
