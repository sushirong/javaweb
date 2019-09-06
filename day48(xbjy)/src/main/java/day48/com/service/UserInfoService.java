package day48.com.service;

import day48.com.dao.UserInfoDao;
import day48.com.pojo.PageBean;

import java.util.List;
import java.util.Map;

/**
 * @author ：susr
 * @date ：2019/9/5 17:50
 * @version: 1.0
 * @description：TODO
 */
public class UserInfoService {

    private UserInfoDao dao = new UserInfoDao();
    public PageBean<Map<String,Object>> selectPgae(String realName, int currentPage, int size){
        int total = dao.count(realName);
        PageBean<Map<String, Object>> pageBean = new PageBean<>(size,total,currentPage);
        List<Map<String, Object>> maps = dao.getUserInfo(realName, pageBean.getStartIndex(), size);
        pageBean.setData(maps);
        return pageBean;
    }
}
