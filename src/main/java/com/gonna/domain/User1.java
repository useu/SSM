package com.gonna.domain;

public class User1 {
    private Integer sid;

    private String susername;

    private String spassword;

    private Integer saddress;

    private Integer cid;

    private Integer sage;

    private String ssex;

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getSusername() {
        return susername;
    }

    public void setSusername(String susername) {
        this.susername = susername == null ? null : susername.trim();
    }

    public String getSpassword() {
        return spassword;
    }

    public void setSpassword(String spassword) {
        this.spassword = spassword == null ? null : spassword.trim();
    }

    public Integer getSaddress() {
        return saddress;
    }

    public void setSaddress(Integer saddress) {
        this.saddress = saddress;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getSage() {
        return sage;
    }

    public void setSage(Integer sage) {
        this.sage = sage;
    }

    public String getSsex() {
        return ssex;
    }

    public void setSsex(String ssex) {
        this.ssex = ssex == null ? null : ssex.trim();
    }
}