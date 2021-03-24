package com.utils;

import com.user.entity.User;
import org.codehaus.jackson.map.ObjectMapper;
import org.junit.Test;

import java.io.IOException;
import java.util.HashMap;

/**
 * Author: TonyJam
 * Blog: https://www.tonyjam.cn/
 * Date: 2021/3/23 21:30
 */
public class Tools {
    public static String user2json(Object o) throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(o);
    }

    @Test
    public void main() throws IOException {
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("success", 1);
        System.out.println(user2json(map));
    }
}
