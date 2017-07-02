package com.l.bookCity.util;

import java.util.List;

/**
 * 
 * @author Administrator
 *还需要查找结果的scores
 */
public class QueryResult { 
	
    private int count;  
    private List list;  
  
    @Override
	public String toString() {
		return "QueryResult [count=" + count + ", list=" + list + "]";
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public QueryResult() {  
        super();  
    }  
  
    public QueryResult(int count, List list) {  
        super();  
        this.count = count;  
        this.list = list;  
    }  
}  