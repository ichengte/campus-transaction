package com.comment.mapper;

import com.comment.entity.Comment;

import java.util.List;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/31 8:45
 */

public interface CommentMapper {
    Boolean add(Comment comment);
    List<Comment> findAll(Integer gid);
}
