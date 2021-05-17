package service;

import entity.Movie;

import java.io.FileNotFoundException;
import java.util.Set;

public interface MovieService {
    public Set getPicturePath(Object value) throws FileNotFoundException;
    public Set getMovieName(Object value);
    public void saveOrUpdate(Object o);
    public Movie load(String movieName);
    public boolean delete(String name);
}
