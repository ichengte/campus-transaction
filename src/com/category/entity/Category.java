package com.category.entity;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/24 17:20
 */
public class Category {
    private Integer cid;
    private String name;

    public Category(Integer cid, String name) {
        this.cid = cid;
        this.name = name;
    }

    @Override
    public String toString() {
        return "Category{" +
                "cid=" + cid +
                ", name='" + name + '\'' +
                '}';
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Category() {
    }
}
