package com.wanted.entity;

import com.user.entity.User;

import java.sql.Date;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/28 18:41
 */
public class Wanted {
    private Integer wid;
    private String title;
    private String content;
    private String area;
    private float price;
    private Date createtime;
    private User user = new User();

    @Override
    public String toString() {
        return "Wanted{" +
                "wid=" + wid +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", area='" + area + '\'' +
                ", price=" + price +
                ", createtime=" + createtime +
                ", user=" + user +
                '}';
    }

    public Wanted(Integer wid, String title, String content, String area, float price, Date createtime, User user) {
        this.wid = wid;
        this.title = title;
        this.content = content;
        this.area = area;
        this.price = price;
        this.createtime = createtime;
        this.user = user;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getWid() {
        return wid;
    }

    public void setWid(Integer wid) {
        this.wid = wid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Wanted() {
    }

    public Wanted(String title, String content, String area, float price, User user) {
        this.title = title;
        this.content = content;
        this.area = area;
        this.price = price;
        this.user = user;
    }

    public Wanted(Integer wid, String title, String content, String area, float price, User user) {
        this.wid = wid;
        this.title = title;
        this.content = content;
        this.area = area;
        this.price = price;
        this.user = user;
    }
}
