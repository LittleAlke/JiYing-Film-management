package dao.impl;

import dao.BaseDao;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * :
 * Alke
 * 2020-12-15 21:32
 */
@Repository
public class BaseDaoImpl implements BaseDao {
    @Resource(name = "hibernateTemplate")
    private HibernateTemplate hibernateTemplate;
    @Override
    public Object loadById(Class c, Serializable i) {
        return hibernateTemplate.get(c,i);
    }

    @Override
    public List findByExample(Object o) {
        return hibernateTemplate.findByExample(o);
    }

    @Override
    public List query(String hql) {
        return hibernateTemplate.execute(new HibernateCallback<List>() {
            @Override
            public List doInHibernate(Session session) throws HibernateException {
                Query query = session.createQuery(hql);
                return query.list();
            }
        });
    }

    @Override
    public int countQuery(String hql) {
        long count = (Long) hibernateTemplate.execute(new HibernateCallback() {
            @Override
            public Object doInHibernate(Session session) throws HibernateException {
                Query query = session.createQuery(hql);
                query.setMaxResults(1);
                return  query.uniqueResult();
            }
        });
        return 0;
    }

    @Override
    public boolean delete(String hql) {
        int res = hibernateTemplate.execute(new HibernateCallback<Integer>() {
            @Override
            public Integer doInHibernate(Session session) throws HibernateException {
                Query query = session.createQuery(hql);
                return query.executeUpdate();
            }
        });
        if (res>0)return true;
        return false;
    }

    @Override
    public void saveOrUpdate(Object o) {
        hibernateTemplate.setCheckWriteOperations(false);
        hibernateTemplate.saveOrUpdate(o);
    }


}
