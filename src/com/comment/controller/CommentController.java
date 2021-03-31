package com.comment.controller;

import com.comment.entity.Comment;
import com.comment.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/31 8:57
 */
@Controller
@RequestMapping("comment")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @RequestMapping(value = "/add.do")
    @ResponseBody
    public Object add(Comment comment){
        HashMap<String, Object> map = new HashMap<>();
        Date commenttime = new Date(System.currentTimeMillis());
        comment.setCommenttime(commenttime);
        System.out.println(comment);

        if (commentService.add(comment)){
            map.put("success", 1);
            map.put("comment", comment);
        } else {
            map.put("success", 0);
        }
        return map;
    }
    @RequestMapping(value = "/findAll.do")
    @ResponseBody
    public Object findAll(Integer gid){
        List<Comment> commentList = commentService.findAll(gid);
        System.out.println(commentList);
        HashMap<String, Object> map = new HashMap<>();
        if (!commentList.isEmpty()){
            map.put("success", 1);
            map.put("commentList", commentList);
        } else {
            map.put("success", 0);
        }
        return map;
    }
}
