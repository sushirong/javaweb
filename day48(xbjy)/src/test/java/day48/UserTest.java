package day48;

import day48.com.dao.UserDao;
import day48.com.dao.UserInfoDao;
import day48.com.pojo.User;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

/**
 * @author ：susr
 * @date ：2019/9/3 16:55
 * @version: 1.0
 * @description：TODO
 */
public class UserTest {

    @Test
    public void testLogin(){

        UserDao dao = new UserDao();
        User user = dao.getUser("admin", "admin");
        System.out.println(user);
    }

    @Test
    public void addUser(){

        UserDao userDao = new UserDao();
        User user = new User();
        user.setUsername("ssr");
        user.setPassword("123");
        user.setEmail("qq.com");
        Long aLong = userDao.addUser(user);
        System.out.println(aLong);
    }

    @Test
    public void updateUser(){

        UserDao userDao = new UserDao();
        Integer integer = userDao.updatePwd("140602a28w6.cdb@sina.cn", "666");
        System.out.println(integer);
    }
    @Test
    public void getUserinfo(){

        UserInfoDao dao = new UserInfoDao();
        int count = dao.count("小");
        System.out.println(count);

        List<Map<String, Object>> list = dao.getUserInfo("小", 0, 2);
        System.out.println(list);
    }
}
