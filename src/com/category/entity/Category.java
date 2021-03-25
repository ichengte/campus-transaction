package com.category.entity;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/24 17:20
 */
public class Category {
    private int cid;
    private String name;

    public Category(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Category{" +
                "cid=" + cid +
                ", name='" + name + '\'' +
                '}';
    }

    public Category() {
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Category(int cid, String name) {
        this.cid = cid;
        this.name = name;
    }
}
