package day48.com.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import day48.com.pojo.PageBean;
import day48.com.pojo.ResultInfo;
import day48.com.pojo.User;
import day48.com.service.UserInfoService;
import day48.com.service.UserService;
import day48.com.utils.MailUtil;
import org.apache.commons.beanutils.BeanUtils;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.Base64;
import java.util.Map;
import java.util.UUID;

/**
 * @param
 * @author ssr
 * @date 2019/9/3 17:07
 * @return
 */
@WebServlet("/user/*")
@MultipartConfig
public class UserServlet extends BaseServlet {

    private UserService service = new UserService();

    public void login(HttpServletRequest request, HttpServletResponse response) {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Object remember = request.getParameter("remember");
        System.out.println(remember);
        ResultInfo resultInfo = new ResultInfo();

        if (username != null && password != null) {


            User user = service.getUser(username, password);

            if (user != null) {

                if (remember != null) {

                    ObjectMapper mapper = new ObjectMapper();
                    try {
                        String s = mapper.writeValueAsString(user);
                        Base64.Encoder encoder = Base64.getEncoder();
                        String text = encoder.encodeToString(s.getBytes());
                        Cookie cookie = new Cookie("user", text);
                        cookie.setMaxAge(60 * 60 * 24 * 7);
                        cookie.setPath("/");
                        response.addCookie(cookie);
                    } catch (JsonProcessingException e) {
                        e.printStackTrace();
                    }
                }

                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                resultInfo.setFlag(true);

            } else {

                resultInfo.setFlag(false);
                resultInfo.setMsg("登录失败，请重试");
            }

        } else {

            resultInfo.setFlag(false);
            resultInfo.setMsg("用户名或密码不可为空");
        }

        writeResult(response, resultInfo);

    }

    public void register(HttpServletRequest request, HttpServletResponse response) {

        Map<String, String[]> parameterMap = request.getParameterMap();
        User user = new User();
        ResultInfo info = new ResultInfo();
        try {
            BeanUtils.populate(user, parameterMap);
            String realPath = request.getServletContext().getRealPath("assets/images/avatars");
            System.out.println(realPath + "/profile-pic.jpg");
            Integer result = service.insUser(user, realPath + "/profile-pic.jpg");
            if (result > 0) {

                info.setFlag(true);
                info.setMsg("注册成功");
            } else {
                info.setFlag(false);
                info.setMsg("注册失败");
            }

        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }
        writeResult(response, info);
    }

    public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {

        HttpSession session = request.getSession();
        session.invalidate();
        Cookie user = new Cookie("user", null);
        user.setMaxAge(0);
        user.setPath("/");

        response.sendRedirect(request.getContextPath()+"/login.jsp");

    }

    public void sendMail(HttpServletRequest request, HttpServletResponse response) {

        String email = request.getParameter("email");
        User user = service.getUserByEmail(email);
        ResultInfo resultInfo = new ResultInfo();
        if (user != null) {
            String uuid = UUID.randomUUID().toString().replace("-", "");
            try {
                MailUtil.send(email, "小标交友找回密码", uuid, "utf-8");

                resultInfo.setFlag(true);
                resultInfo.setMsg("发送成功，请查收");
                resultInfo.setData(uuid);

            } catch (MessagingException | UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        } else {

            resultInfo.setFlag(false);
            resultInfo.setMsg("该邮箱还未注册");
        }

        writeResult(response, resultInfo);

    }

    public void changePwd(HttpServletRequest request, HttpServletResponse response) {

        String email = request.getParameter("email");
        String pwd = request.getParameter("newpwd");


        ResultInfo info = new ResultInfo();
        Integer integer = service.updatePwd(email, pwd);

        if (integer > 0) {
            info.setFlag(true);
            info.setMsg("修改成功");
        } else {
            info.setFlag(false);
            info.setMsg("修改失败");
        }

        writeResult(response, info);
    }

    public void userlist(HttpServletRequest request, HttpServletResponse response) {

        UserInfoService info = new UserInfoService();
        String realName = request.getParameter("realName");
        String pageParam = request.getParameter("currentPage");
        int currentPage = 0;
        if (pageParam != null) {
            currentPage = Integer.valueOf(pageParam);
        }
        int size = 5;
        PageBean<Map<String, Object>> pageBean = info.selectPgae(realName, currentPage, size);

        writeResult(response, pageBean);
    }

    public void selectDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userId = request.getParameter("userId");

        if (userId != null) {

            Map<String, Object> map = service.selectDetailById(Integer.valueOf(userId));
            request.setAttribute("map", map);
            request.getRequestDispatcher("/html/user_detail.jsp").forward(request, response);
        }

    }

    public void uploadImg(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        Part img = request.getPart("img");
        String idParam = request.getParameter("userId");
        int id = 0;
        if (idParam != null) {
            id = Integer.valueOf(idParam);
        }
        System.out.println(img.getSubmittedFileName());

        img.write("E:\\upload" + File.separator + id + File.separator + "head.png");

        request.getRequestDispatcher("/user/selectDetail").forward(request, response);

    }

}
