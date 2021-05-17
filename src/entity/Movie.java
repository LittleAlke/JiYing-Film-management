package entity;

import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.sql.Date;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/**
 * :
 * Alke
 * 2020-12-15 16:05
 */
@Repository
public class Movie implements Serializable {
    private int id;
    private String name;
    private String type;
    private Date date;
    private String picture_path;
    private String video_path;
    private Set<Actor> actors = new HashSet<Actor>();
    private Set<News> news = new HashSet<News>();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPicture_path() {
        return picture_path;
    }

    public void setPicture_path(String picture_path) {
        this.picture_path = picture_path;
    }

    public String getVideo_path() {
        return video_path;
    }

    public void setVideo_path(String video_path) {
        this.video_path = video_path;
    }

    public Set<Actor> getActors() {
        return actors;
    }

    public void setActors(Set<Actor> actors) {
        this.actors = actors;
    }

    public Set<News> getNews() {
        return news;
    }

    public void setNews(Set<News> news) {
        this.news = news;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Movie movie = (Movie) o;
        return id == movie.id &&
                Objects.equals(name, movie.name) &&
                Objects.equals(date, movie.date);
    }

    @Override
    public String toString() {
        return "Movie{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", date=" + date +
                ", picture_path='" + picture_path + '\'' +
                ", video_path='" + video_path + '\'' +
                ", actors=" + actors +
                ", news=" + news +
                '}';
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, date);
    }
}
