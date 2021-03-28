package com.goods.entity;

import org.springframework.web.multipart.MultipartFile;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/28 13:42
 */
public class GoodsDto {
    private Goods goods;
    private MultipartFile picture;

    @Override
    public String toString() {
        return "GoodsDto{" +
                "goods=" + goods +
                ", picture=" + picture +
                '}';
    }

    public GoodsDto() {
    }

    public GoodsDto(Goods goods, MultipartFile picture) {
        this.goods = goods;
        this.picture = picture;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public MultipartFile getPicture() {
        return picture;
    }

    public void setPicture(MultipartFile picture) {
        this.picture = picture;
    }
}
