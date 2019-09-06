package day48.com.utils;

import com.alibaba.druid.pool.DruidDataSource;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/**
 * @author ：susr
 * @date ：2019/8/27 16:34
 * @version: 1.0
 * @description：TODO
 */
public class DruidUtil {

    public  static Properties props;
    private static DruidDataSource datasource;

    /**
     * 设置静态块  ，随着类加载而加载    优化Properties读取文件，只需要读取一次
     */
    static{
        props = new Properties();
        datasource = new DruidDataSource();
        //从类路径下加载资源文件，变成输入流
        /*
        DruidUtil.class.getClassLoader()
        DruidUtil.class：得到当前类的字节码文件对象
        getClassLoader()：获取当前字节码文件对象的类加载器
        类加载器对象.getResourceAsStream(): 从类路径下加载资源
        类路径：class文件的根目录
         */
        InputStream in =
                DruidUtil.class.getClassLoader().getResourceAsStream("db.properties");
        try {
            props.load(in);
            datasource.configFromPropety(props);
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("资源加载失败,请检查文件路径配置");
        }

    }
    /**
     * 1.创建数据源对象
     * 2.读取配置文件，从配置文件中获取配置参数信息，设置到数据源对象属性
     * 由于druid数据源提供了一个configFromPropety（Properties）方法，该方法会自动按照约定key格式(druid.xxx)
     * 读取druid属性需要用的数据,所以只需要提供一个符合key规则properties文件，并且读入到Properties对象中
     * 3.返回数据源
     * @return
     */
    public static DruidDataSource getDataSource(){

        return datasource;
    }

    public static Connection getConnection(){
        try {
            return getDataSource().getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static  void close(Connection connection){
        try {
            if(connection!=null&&!connection.isClosed()){
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void close(DruidDataSource dataSource){
        if(dataSource!=null&&!dataSource.isClosed()){
            dataSource.close();
        }
    }

    public static void main(String[] args) throws SQLException {
        System.out.println(getDataSource().getConnection());
    }
}
