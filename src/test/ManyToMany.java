package test;

import entity.Actor;
import entity.Movie;
import entity.User;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate5.HibernateTemplate;

import javax.transaction.Transactional;
import java.util.List;

/**
 * :
 * Alke
 * 2020-12-15 17:20
 */
public class ManyToMany {

    @Test
   public void test1(){
        ApplicationContext context =
                new ClassPathXmlApplicationContext("applicationContext.xml");
        HibernateTemplate hibernateTemplate = (HibernateTemplate) context.getBean("hibernateTemplate");
        hibernateTemplate.setCheckWriteOperations(false);

        User u1 = new User();
        u1.setUsername("1");
        List<User> list = hibernateTemplate.findByExample(u1);

        User u2 = new User();
        u2.setUsername("2");
        u2.setPassword("3");
        hibernateTemplate.save(u2);
        hibernateTemplate.flush();

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
        //hibernateTemplate.saveOrUpdate(u1);
    }
}
