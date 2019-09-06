package day48.com.controller;

import day48.com.pojo.Dept;
import day48.com.service.DeptService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author ssr
 * @date 2019/9/5 20:45
 * @param
 * @return
 */
@WebServlet("/dept/*")
public class DeptServlet extends BaseServlet{

    DeptService service = new DeptService();

    public void selectAll(HttpServletRequest request, HttpServletResponse response){

        List<Dept> depts = service.selectAll();
        writeResult(response,depts);

    }
}
