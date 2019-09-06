package day48.com.filter;

import com.fasterxml.jackson.databind.ObjectMapper;
import day48.com.pojo.User;
import day48.com.service.UserService;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Base64;

/**
 * @author ssr
 * @date 2019/9/3 19:41
 * @param
 * @return
 */
@WebFilter("/*")
public class AutoLoginFilter implements Filter {
    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        /*HttpServletRequest request = (HttpServletRequest) req;
        String uri = request.getRequestURI();

        if((request.getContextPath()+"/").equals(uri)
                ||uri.contains("/login.jsp")
                ||uri.contains("/register")
                ||uri.contains("/sendEmail")
                ||uri.contains("/updatePassword")
                ||uri.contains("/login")
                ||uri.contains("/assets")){
            chain.doFilter(req, resp);
            return;
        }
        HttpSession session = request.getSession();
        Object user = session.getAttribute("user");

        if(user!=null){
            chain.doFilter(req, resp);
            return;
        }else {// 2.未登录用户

            //a.cookie有数据，免密登录
            Cookie[] cookies = request.getCookies();
            for (Cookie cookie : cookies) {
                if("userInfo".equals(cookie.getName())){
                    String value = cookie.getValue();
                    Base64.Decoder decoder = Base64.getDecoder();
                    byte[] bytes = decoder.decode(value);
                    String userJson = new String(bytes, "utf-8");
                    ObjectMapper mapper = new ObjectMapper();
                    User cookieUser = mapper.readValue(userJson, User.class);

                    //登录校验
                    UserService service = new UserService();
                    User userByNameAndPwd = service.getUser(cookieUser.getUsername(), cookieUser.getPassword());
                    if(userByNameAndPwd!=null){
                        //将用户状态保持
                        session.setAttribute("user",userByNameAndPwd);
                        chain.doFilter(req, resp);
                        return;
                    }else{//信息不正确，不能正确登录
                        cookie.setMaxAge(0);
                        request.setAttribute("msg","请登录后访问");
                        request.getRequestDispatcher("/login.jsp").forward(request,resp);
                        return;
                    }
                }
            }

            request.setAttribute("msg","请登录后访问");
            request.getRequestDispatcher("/login.jsp").forward(request,resp);
            return;
        }*/
        chain.doFilter(req, resp);
    }

    @Override
    public void init(FilterConfig config) throws ServletException {

    }

}
