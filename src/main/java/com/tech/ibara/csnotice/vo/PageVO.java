package com.tech.ibara.csnotice.vo;

public class PageVO {
    private Integer displayRowCount = 5;           // μΆλ ₯?  ?°?΄?° κ°μ
    private Integer grpPageCnt=3;                   //// ??΄μ§?κ·Έλ£Ή?? ??΄μ§?κ°?? ?? *
    private Integer rowStart;                       // ???λ²νΈ
    private Integer rowEnd;                         // μ’λ£? λ²νΈ
    private Integer totPage;                        // ? μ²? ??΄?
    private Integer totRow = 0;                     // ? μ²? ?°?΄?° ?
    private Integer page;                           // ??¬ ??΄μ§?
    private Integer pageStart;                      // ????΄μ§?
    private Integer pageEnd;                        // μ’λ£??΄μ§?

    /**
     * ? μ²? ?°?΄?° κ°μ(total)λ₯? ?΄?©??¬ ??΄μ§?? κ³μ°. 
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
     * ??¬ ??΄μ§? λ²νΈ. 
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


