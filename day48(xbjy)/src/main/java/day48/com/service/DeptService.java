package day48.com.service;

import day48.com.dao.DeptDao;
import day48.com.pojo.Dept;

import java.util.List;

/**
 * @author ：susr
 * @date ：2019/9/5 20:43
 * @version: 1.0
 * @description：TODO
 */
public class DeptService {

    DeptDao dao = new DeptDao();

    public List<Dept> selectAll(){
        return dao.getDept();
    }
}
