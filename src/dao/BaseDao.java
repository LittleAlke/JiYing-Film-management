package dao;

import java.io.Serializable;
import java.util.List;

public interface BaseDao{
    //加载指定id的持久化对象
    public Object loadById(Class c, Serializable i);
    //找到一个
    public List findByExample(Object o);
    //根据指定条件查询集合
    public List query(String hql);
    //根据指定条件查询数据量
    public int countQuery(String hql);
    //根据指定条件删除内容
    public boolean delete(String hql);
    //保存或更新指定的持久化对象
    public void saveOrUpdate(Object o);

}
