package com.l.bookCity.bean;

public class Navigation {
	int menuId ;
    String menuName ;
    int fid;
    
    
    @Override
    public boolean equals(Object obj) {
    	// TODO Auto-generated method stub
    	return super.equals(obj);
    }
	public Navigation(int menuId, String menuName, int fid) {
		super();
		this.menuId = menuId;
		this.menuName = menuName;
		this.fid = fid;
	}
	public Navigation() {
	}
	@Override
	public String toString() {
		return "Navigation [menuId=" + menuId + ", menuName=" + menuName + ", fid=" + fid + "]\n";
	}
	public int getMenuId() {
		return menuId;
	}
	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
}
