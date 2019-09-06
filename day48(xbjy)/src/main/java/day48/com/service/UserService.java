package day48.com.service;

import day48.com.dao.UserDao;
import day48.com.dao.UserInfoDao;
import day48.com.pojo.User;
import day48.com.pojo.UserInfo;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Map;

/**
 * @author ：susr
 * @date ：2019/9/3 16:58
 * @version: 1.0
 * @description：TODO
 */
public class UserService {

    private UserDao dao = new UserDao();
    private UserInfoDao infodao = new UserInfoDao();

    public User getUser(String username, String password) {
        return dao.getUser(username, password);
    }

    public Integer insUser(User user,String src) {
        long userid = dao.addUser(user);

        Integer result = 0;
        if (userid > 0) {
            String path = "E:\\upload\\"+user;
            File dir = new File(path);
            if (!dir.exists()){
                dir.mkdirs();
            }
            File srcFile = new File(src) ;

            String img = "head.png";
            File target = new File(dir,img);
            try {
                FileUtils.copyFile(srcFile,target);
            } catch (IOException e) {
                e.printStackTrace();
            }
            UserInfo info = new UserInfo();
            info.setUserId(Math.toIntExact(userid));
            info.setRegisterTime(new Date());
            info.setPic(img);
            result = infodao.addUserInfo(info);
        }

        return result;
    }

    public User getUserByEmail(String email) {

        return dao.getUserByEmail(email);
    }

    public Integer updatePwd(String email,String pwd){

        return dao.updatePwd(email,pwd);
    }

    public Map<String,Object> selectDetailById(int userId){
        Map<String, Object> map = dao.selectDetailById(userId);
        if(map!=null) {
            int focus = dao.selectCountFocus(userId);
            map.put("focus", focus);
        }
        return map;
    }

}
