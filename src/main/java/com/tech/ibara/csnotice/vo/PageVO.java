package com.tech.ibara.csnotice.vo;

public class PageVO {
    private Integer displayRowCount = 5;           // 출력?�� ?��?��?�� 개수
    private Integer grpPageCnt=3;                   //// ?��?���?그룹?��?�� ?��?���?�??�� ?��?��*
    private Integer rowStart;                       // ?��?��?��번호
    private Integer rowEnd;                         // 종료?�� 번호
    private Integer totPage;                        // ?���? ?��?��?��
    private Integer totRow = 0;                     // ?���? ?��?��?�� ?��
    private Integer page;                           // ?��?�� ?��?���?
    private Integer pageStart;                      // ?��?��?��?���?
    private Integer pageEnd;                        // 종료?��?���?

    /**
     * ?���? ?��?��?�� 개수(total)�? ?��?��?��?�� ?��?���??�� 계산. 
     */
    public void pageCalculate(Integer total) {
        getPage();
        totRow  = total;
        totPage    = (int) ( total / displayRowCount );
        
        if ( total % displayRowCount > 0 ) {
            totPage++;
        }

        pageStart = (page - (page - 1) % grpPageCnt) ;
        pageEnd = pageStart + (grpPageCnt-1);
        if (pageEnd > totPage) {
            pageEnd = totPage;
        }
        
        rowStart = ((page - 1) * displayRowCount) + 1 ;
        rowEnd   = rowStart + displayRowCount - 1;
    } 
    

    /**
     * ?��?�� ?��?���? 번호. 
     */
    public Integer getPage() {
        if (page == null || page == 0) {
            page = 1;
        }
        
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getRowStart() {
        return rowStart;
    }

    public void setRowStart(Integer rowStart) {
        this.rowStart = rowStart;
    }

    public Integer getRowEnd() {
        return rowEnd;
    }

    public void setRowEnd(Integer rowEnd) {
        this.rowEnd = rowEnd;
    }

    public Integer getDisplayRowCount() {
        return displayRowCount;
    }

    public void setDisplayRowCount(Integer displayRowCount) {
        this.displayRowCount = displayRowCount;
    }

    public Integer getTotPage() {
        return totPage;
    }

    public void setTotPage(Integer totPage) {
        this.totPage = totPage;
    }

    public Integer getTotRow() {
        return totRow;
    }

    public void setTotRow(Integer totRow) {
        this.totRow = totRow;
    }

    public Integer getPageStart() {
        return pageStart;
    }

    public void setPageStart(Integer pageStart) {
        this.pageStart = pageStart;
    }

    public Integer getPageEnd() {
        return pageEnd;
    }

    public void setPageEnd(Integer pageEnd) {
        this.pageEnd = pageEnd;
    }
  
}

