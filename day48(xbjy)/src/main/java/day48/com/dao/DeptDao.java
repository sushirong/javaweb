package day48.com.dao;

import day48.com.pojo.Dept;
import day48.com.utils.DruidUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 * @author ：susr
 * @date ：2019/9/5 20:40
 * @version: 1.0
 * @description：TODO
 */
public class DeptDao {

    public List<Dept> getDept() {
        Connection connection = DruidUtil.getConnection();
        QueryRunner queryRunner = new QueryRunner();
        List<Dept> list = null;
        try {
            list = queryRunner.query(connection, "select id,name from dept", new BeanListHandler<Dept>(Dept.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            DruidUtil.close(connection);
        }
        return list;
    }
}
