package day48;

import day48.com.dao.UserDao;
import day48.com.pojo.User;
import day48.com.utils.MailUtil;
import org.junit.jupiter.api.Test;

import javax.mail.MessagingException;
import java.io.UnsupportedEncodingException;
import java.util.UUID;

/**
 * @author ：susr
 * @date ：2019/9/4 12:20
 * @version: 1.0
 * @description：TODO
 */
public class MailTest {

    @Test
    public void mailTest() {

        try {
            MailUtil.send("ssr1282185158@gmail.com","小标交友", UUID.randomUUID().toString().replace("-",""),"utf-8");
        } catch (MessagingException | UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void userTest(){

        UserDao dao = new UserDao();

        User userByEmail = dao.getUserByEmail("zijun1024@aliyun.com");
        System.out.println(userByEmail);
    }
}
