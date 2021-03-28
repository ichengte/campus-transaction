package com.goods.entity;

import com.category.entity.Category;
import com.user.entity.User;

import java.sql.Date;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/24 17:12
 */
public class Goods {
    private Integer gid;
    private String title;
    private Date publish_time;
    private String content;
    private String picture;
    private String views;
    private String status;
    private float buy_price;
    private float sell_price;
    private User user = new User();
    private Category category = new Category();
    private Integer recommendation;
    private String area;

    @Override
    public String toString() {
        return "Goods{" +
                "gid=" + gid +
                ", title='" + title + '\'' +
                ", publish_time=" + publish_time +
                ", content='" + content + '\'' +
                ", picture='" + picture + '\'' +
                ", views='" + views + '\'' +
                ", status='" + status + '\'' +
                ", buy_price=" + buy_price +
                ", sell_price=" + sell_price +
                ", user=" + user +
                ", category=" + category +
                ", recommendation=" + recommendation +
                ", area='" + area + '\'' +
                '}';
    }

    public Goods(String title, Date publish_time, String content, String picture, String views, String status, float buy_price, float sell_price, User user, Category category, Integer recommendation, String area) {
        this.title = title;
        this.publish_time = publish_time;
        this.content = content;
        this.picture = picture;
        this.views = views;
        this.status = status;
        this.buy_price = buy_price;
        this.sell_price = sell_price;
        this.user = user;
        this.category = category;
        this.recommendation = recommendation;
        this.area = area;
    }


    public Goods(Integer gid, String title, Date publish_time, String content, String picture, String views, String status, float buy_price, float sell_price, User user, Category category, Integer recommendation, String area) {
        this.gid = gid;
        this.title = title;
        this.publish_time = publish_time;
        this.content = content;
        this.picture = picture;
        this.views = views;
        this.status = status;
        this.buy_price = buy_price;
        this.sell_price = sell_price;
        this.user = user;
        this.category = category;
        this.recommendation = recommendation;
        this.area = area;
    }

    public Goods() {
    }

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getPublish_time() {
        return publish_time;
    }

    public void setPublish_time(Date publish_time) {
        this.publish_time = publish_time;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getViews() {
        return views;
    }

    public void setViews(String views) {
        this.views = views;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public float getBuy_price() {
        return buy_price;
    }

    public void setBuy_price(float buy_price) {
        this.buy_price = buy_price;
    }

    public float getSell_price() {
        return sell_price;
    }

    public void setSell_price(float sell_price) {
        this.sell_price = sell_price;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Integer getRecommendation() {
        return recommendation;
    }

    public void setRecommendation(Integer recommendation) {
        this.recommendation = recommendation;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }
}
