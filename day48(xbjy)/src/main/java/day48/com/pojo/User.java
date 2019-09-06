package day48.com.pojo;

/**
 * @author ：susr
 * @date ：2019/9/3 12:31
 * @version: 1.0
 * @description：TODO
 */
public class User {
    private Integer id;
    private String username;
    private String password;
    private String isSecret;
    private String email;
    private Integer deptId;

    public User() {
    }

    public User(Integer id, String username, String password, String isSecret, String email, Integer deptId) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.isSecret = isSecret;
        this.email = email;
        this.deptId = deptId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIsSecret() {
        return isSecret;
    }

    public void setIsSecret(String isSecret) {
        this.isSecret = isSecret;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", isSecret='" + isSecret + '\'' +
                ", email='" + email + '\'' +
                ", deptId=" + deptId +
                '}';
    }
}
