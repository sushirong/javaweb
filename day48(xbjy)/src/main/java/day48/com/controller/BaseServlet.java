package day48.com.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * @author ssr
 * @date 2019/9/3 17:01
 * @param
 * @return
 */
public class BaseServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String uri = req.getRequestURI();
        String methodName = uri.substring(uri.lastIndexOf("/") + 1);


        try {
            Method method = this.getClass().getMethod(methodName,HttpServletRequest.class, HttpServletResponse.class);
            method.invoke(this,req,resp);
        } catch (NoSuchMethodException | InvocationTargetException | IllegalAccessException e) {
            e.printStackTrace();
        }

    }

    public void writeResult(HttpServletResponse response,Object obj){

        ObjectMapper mapper = new ObjectMapper();

        try {
            String s = mapper.writeValueAsString(obj);

            response.getWriter().write(s);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
