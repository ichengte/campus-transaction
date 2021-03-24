package com.user.entity;

import org.springframework.web.multipart.MultipartFile;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/24 9:09
 */
public class UserDto {
    private User user;

    public UserDto(User user, MultipartFile file) {
        this.user = user;
        this.file = file;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

    public UserDto() {
    }

    private MultipartFile file;
}
