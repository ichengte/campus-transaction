/*
 * Project: campus-transaction
 * File: LoginInterceptor.java
 * Date: 2021/3/23 下午6:29
 * Author: TonyJam
 */

package config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public void afterCompletion(HttpServletRequest arg0,
                                HttpServletResponse arg1, Object arg2, Exception arg3)
            throws Exception {
        // TODO Auto-generated method stub

    }

    @Override
    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
                           Object arg2, ModelAndView arg3) throws Exception {
        // TODO Auto-generated method stub

    }


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
                             Object arg2) throws Exception {
        String url = request.getRequestURI();
        System.out.println(url);
        if (url.indexOf("login.do") > 0) {
            return true;
        }
        if (url.indexOf("register.do") > 0){
            return true;
        }
        if (url.indexOf("loginOut.do") > 0){
            response.sendRedirect("/user-index.jsp");
            return true;
        }
        if (url.indexOf("findAll.do") > 0){
            return true;
        }
        if (url.indexOf("findByPage.do") > 0){
            response.sendRedirect("/user-index.jsp");
            return true;
        }
        response.sendRedirect("/user-login.jsp");
        return false;
    }

}
