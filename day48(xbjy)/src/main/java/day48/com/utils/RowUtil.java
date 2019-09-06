package day48.com.utils;

import org.apache.commons.dbutils.BasicRowProcessor;
import org.apache.commons.dbutils.GenerousBeanProcessor;
import org.apache.commons.dbutils.RowProcessor;

/**
 * @author ：susr
 * @date ：2019/8/29 16:17
 * @version: 1.0
 * @description：TODO
 */
public class RowUtil {

    public static RowProcessor getRowprocessor(){
        GenerousBeanProcessor generousBeanProcessor = new GenerousBeanProcessor();
        BasicRowProcessor basicRowProcessor = new BasicRowProcessor(generousBeanProcessor);

        return basicRowProcessor;
    }
}
