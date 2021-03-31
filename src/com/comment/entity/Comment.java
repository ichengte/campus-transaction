package com.comment.entity;

import com.goods.entity.Goods;
import com.user.entity.User;

import java.sql.Date;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/31 8:45
 */
public class Comment {
    private Integer coid;
    private String commentcontent;
    private User user = new User();
    private Goods goods = new Goods();
    private Date commenttime;

    @Override
    public String toString() {
        return "Comment{" +
                "coid=" + coid +
                ", commentcontent='" + commentcontent + '\'' +
                ", user=" + user +
                ", goods=" + goods +
                ", commenttime=" + commenttime +
                '}';
    }

    public Comment() {
    }

    public Comment(Integer coid, String commentconten, User user, Goods goods, Date commenttime) {
        this.coid = coid;
        this.commentcontent = commentconten;
        this.user = user;
        this.goods = goods;
        this.commenttime = commenttime;
    }

    public Integer getCoid() {
        return coid;
    }

    public void setCoid(Integer coid) {
        this.coid = coid;
    }

    public String getCommentcontent() {
        return commentcontent;
    }

    public void setCommentcontent(String commentconten) {
        this.commentcontent = commentconten;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public Date getCommenttime() {
        return commenttime;
    }

    public void setCommenttime(Date commenttime) {
        this.commenttime = commenttime;
    }
}
