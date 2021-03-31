package com.comment.service.impl;

import com.comment.entity.Comment;
import com.comment.mapper.CommentMapper;
import com.comment.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/31 8:58
 */
@Service("commentService")
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentMapper commentMapper;

    @Override
    public Boolean add(Comment comment) {
        return commentMapper.add(comment);
    }

    @Override
    public List<Comment> findAll(Integer gid) {
        return commentMapper.findAll(gid);
    }
}
