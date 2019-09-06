package day48.com.dao;

import day48.com.pojo.User;
import day48.com.utils.DruidUtil;
import day48.com.utils.RowUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

/**
 * @author ：susr
 * @date ：2019/9/3 12:40
 * @version: 1.0
 * @description：TODO
 */
public class UserDao {


    public User getUser(String username,String password){

        Connection connection = DruidUtil.getConnection();
        String sql = "select id,username,password,is_secret,email,dept_id from user where username = ? and password = ?";
        QueryRunner queryRunner = new QueryRunner();

        Object[] params = new Object[]{username,password};
        User user = null;
        try {
            user = queryRunner.query(connection, sql, new BeanHandler<>(User.class, RowUtil.getRowprocessor()), params);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.close(connection);
        }
        return user;
    }

    public Long addUser(User user){
        Connection connection = DruidUtil.getConnection();
        String sql = "insert into user(username,password,is_secret,email,dept_id) values(?,?,?,?,?)";

        Object[] params = new Object[]{user.getUsername(),user.getPassword(),user.getIsSecret(),user.getEmail(), user.getDeptId()};

        QueryRunner queryRunner = new QueryRunner();
        Long result = null;
        try {
            result = queryRunner.insert(connection, sql, new ScalarHandler<Long>(), params);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.close(connection);
        }
        return result;
    }

    public User getUserByEmail(String email){

        Connection connection = DruidUtil.getConnection();
        String sql = "select id,username,password,is_secret,email,dept_id from user where email = ?";
        QueryRunner queryRunner = new QueryRunner();

        User user = null;
        try {
            user = queryRunner.query(connection, sql, new BeanHandler<>(User.class, RowUtil.getRowprocessor()), email);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.close(connection);
        }
        return user;
    }

    public Integer updatePwd(String email,String pwd){

        Connection connection = DruidUtil.getConnection();
        String sql = "update user set password = ? where email = ?";
        QueryRunner queryRunner = new QueryRunner();

        Integer result = 0;
        try {
            result = queryRunner.update(connection, sql, new Object[]{pwd, email});

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.close(connection);
        }

        return result;
    }

    public Map<String, Object> selectDetailById(int userId) {
        String sql = "select u.id,u.is_secret,u.dept_id,ui.real_name,ui.age,ui.phone,ui.gender,ui.`desc`,ui.register_time,ui.login_time,ui.pic,ui.look,d.`name` " +
                "from  " +
                " user u left join dept d  " +
                "on( " +
                " u.dept_id=d.id " +
                ") " +
                "left join userinfo ui  " +
                "on( " +
                " u.id=ui.user_id " +
                ") " +
                "where " +
                "u.id = ?";
        Connection connection = DruidUtil.getConnection();
        QueryRunner queryRunner = new QueryRunner();
        Map<String, Object> map = null;
        try {
            map = queryRunner.query(connection, sql, new MapHandler(), userId);
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DruidUtil.close(connection);
        }
        return map;
    }
    public int selectCountFocus(int userId){
        String sql = "select count(1) focus from userfocus where user_focus_id=?";
        Connection connection = DruidUtil.getConnection();
        QueryRunner queryRunner = new QueryRunner();
        long result = 0;
        try {
            result = queryRunner.query(connection, sql, new ScalarHandler<Long>(), userId);
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DruidUtil.close(connection);
        }
        return (int)result;
    }
}
