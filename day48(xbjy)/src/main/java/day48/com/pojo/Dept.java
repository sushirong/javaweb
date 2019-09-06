package day48.com.pojo;

/**
 * @author ：susr
 * @date ：2019/9/5 20:39
 * @version: 1.0
 * @description：TODO
 */
public class Dept {

    private Integer id;
    private String name;

    public Dept(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public Dept() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "dept{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
