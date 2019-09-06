package day48.com.pojo;

import java.util.List;

public class PageBean<T> {

    /**起始查询索引*/
    private int startIndex;
    /**每页显示条数*/
    private int size;
    /**开始页码*/
    private int start;
    /**结束页码*/
    private int end;
    /**总记录数*/
    private int total;
    /**总页数*/
    private int totalPage;
    /**页面数据集合*/
    private List<T> data ;
    /**当前页*/
    private int currentPage;

    public PageBean() {
    }

    /**
     * 根据传入3个属性，计算其他属性
     * @param size
     * @param total
     * @param currentPage
     */
    public PageBean(int size, int total, int currentPage) {
        this.size = size;
        this.total = total;
        this.currentPage = currentPage;
        //获取起始查询索引值
        this.startIndex = (currentPage-1)*size;
        //获取总页数
        this.totalPage =  total%size==0?total/size:total/size+1;
        //默认显示5页信息    currentPage在中间
        start = 1;
        end = 5;
        //1.总页数大于5
        if(totalPage>5){
           start =  currentPage-2;
           end = currentPage+2;

           //越界情况
           //start小于1
            if(start<1){
                start = 1;
                end = 5;
            }
            //结束页越界
            if(end>totalPage){
                end = totalPage;
                start = end - 4;
            }
        }else{//2.总页数小于5
            start = 1;
            end = totalPage;
        }
    }

    @Override
    public String toString() {
        return "PageBean{" +
                "startIndex=" + startIndex +
                ", size=" + size +
                ", start=" + start +
                ", end=" + end +
                ", total=" + total +
                ", totalPage=" + totalPage +
                ", data=" + data +
                ", currentPage=" + currentPage +
                '}';
    }

    public int getStartIndex() {
        return startIndex;
    }

    public void setStartIndex(int startIndex) {
        this.startIndex = startIndex;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
}
