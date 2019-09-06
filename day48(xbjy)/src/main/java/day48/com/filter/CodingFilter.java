package day48.com.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
/**
 * @author ssr
 * @date 2019/9/3 19:35
 * @param
 * @return
 */
@WebFilter("/*")
public class CodingFilter implements Filter {

    private String encoding ;
    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        req.setCharacterEncoding(encoding);
        resp.setCharacterEncoding(encoding);
        chain.doFilter(req, resp);
    }

    @Override
    public void init(FilterConfig config) throws ServletException {

        encoding = "utf-8";
    }

}
