package com.tech.ibara.csnotice.vo;


public class SearchVO extends  PageVO  {

    private String bgno;                       // κ²μ? κ·Έλ£Ή
    private String searchKeyword = "";         // κ²?? ?€??
    private String searchType = "";            // κ²?? ??: ? λͺ?, ?΄?©  
    private String[] searchTypeArr;            // κ²?? ??λ₯? λ°°μ΄λ‘? λ³??
    
    public String getBgno() {
        return bgno;
    }

    public void setBgno(String bgno) {
        this.bgno = bgno;
    }

    public String getSearchKeyword() {
        return searchKeyword;
    }
    
    public void setSearchKeyword(String searchKeyword) {
        this.searchKeyword = searchKeyword;
    }
    
    public String getSearchType() {
        return searchType;
    }
    
    public void setSearchType(String searchType) {
        this.searchType = searchType;
    }
    
    public String[] getSearchTypeArr() {
        return searchType.split(",");
    }
    
}
 