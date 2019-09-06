package day48.com.dao;

import day48.com.pojo.UserInfo;
import day48.com.utils.DruidUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author ：susr
 * @date ：2019/9/3 20:11
 * @version: 1.0
 * @description：TODO
 */
public class UserInfoDao {



    public Integer addUserInfo(UserInfo userInfo){

        Connection connection = DruidUtil.getConnection();

        QueryRunner queryRunner = new QueryRunner();
        String sql = "INSERT INTO `xbjy`.`userinfo`" +
                "(`user_id`, `real_name`, `age`, `phone`, `gender`, `desc`, `register_time`, `login_time`, `pic`, `look`) " +
                "VALUES (?, ?, ?, ?, ?, ?,?,?,?,?)";
        Object[] params = new Object[]{userInfo.getUserId(),userInfo.getRealName(),userInfo.getAge(),userInfo.getPhone(),userInfo.getGender(),
                userInfo.getDesc(),userInfo.getRegisterTime(),userInfo.getLoginTime(),userInfo.getPic(),userInfo.getLook()};

        int result = 0;
        try {
            if (connection != null) {
                result = queryRunner.update(connection, sql, params);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.close(connection);
        }

        return result;
    }

    public List<Map<String,Object>> getUserInfo(String realName,int startIndex, int size ){
        StringBuilder sb = new StringBuilder("select `user_id`, `real_name`, `age`, `phone`, `gender`, `desc`, `register_time`, `login_time`, `pic`, `look` from userinfo ");

        ArrayList<Object> objects = new ArrayList<>();
        if(realName!=null&&realName.length()>0){
            sb.append(" where real_name like concat('%',?,'%') ");
            objects.add(realName);
        }
        sb.append(" limit ?,?");
        objects.add(startIndex);
        objects.add(size);

        String sql = sb.toString();

        Connection connection = DruidUtil.getConnection();
        QueryRunner queryRunner = new QueryRunner();

        List<Map<String, Object>> maps = null;
        try {
            if (connection != null) {
                maps = queryRunner.query(connection, sql, new MapListHandler(), objects.toArray());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DruidUtil.close(connection);
        }
        return maps;
    }
    public int count(String realName){
        StringBuilder sb = new StringBuilder("select count(1) from userinfo ");

        Object[] params = null;
        if(realName!=null&&realName.length()>0){
            sb.append(" where real_name like concat('%',?,'%') ");
            params = new Object[]{realName};
        }
        Connection connection = DruidUtil.getConnection();
        QueryRunner queryRunner = new QueryRunner();
        String sql = sb.toString();
        long result = 0;
        if(params!=null) {
            try {
                if (connection != null) {
                    result = queryRunner.query(connection, sql, new ScalarHandler<Long>(), params);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                DruidUtil.close(connection);
            }
        }else{
            try {
                if (connection != null) {
                    result = queryRunner.query(connection, sql, new ScalarHandler<Long>());
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                DruidUtil.close(connection);
            }
        }
        return (int)result;
    }
}
