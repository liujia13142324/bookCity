package com.l.bookCity.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class HtmlUtil {
	
	static String path="D:\\test\\result.html";
	static File input = new File(path);
	static Document doc = null;
	static String code="UTF-8";
	static {
		try {
			doc = Jsoup.parse(input, code);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void main(String[] args) throws IOException {

		File outFile = new File("D:\\test\\result2.html");
		
		//修改所有a元素的href为#
		Elements aas = doc.getElementsByTag("a");
		for (Element element : aas) {
			element.attr("href", "#");
		}
		
		printFile(doc.outerHtml(), outFile);
		
		
	
		
		
		
	}
	
	

	public static void removeAllScript(File outFile) throws IOException{
		Elements scripts = doc.getElementsByTag("script");
		scripts.remove();
		printFile(doc.outerHtml(), outFile);
	}
	
	
	// type 只取得元素的方式，可以是根据标签、根据class、、等等
	public static void removeAttr(String type,String value , String attrName, File outFile) throws IOException{
		
		Elements aas = null;
		
		if(type.equals("tag")){
			aas = doc.getElementsByTag(value);
		}else if(type.equals("class")){
			aas = doc.getElementsByClass(value);
		}
		
		for (Element element : aas) {
			if(element.hasAttr(attrName)){
				element.removeAttr(attrName);
			}
		}
		
		printFile(doc.outerHtml(), outFile);
	}
	
	public static void removeAllAttr(){
		
	}
	
	public static void printFile(String content,File outFile) throws IOException{

		if (!outFile.exists()) {
			outFile.createNewFile();
		}
		FileOutputStream fout = new FileOutputStream(outFile);
		fout.write(content.getBytes("utf-8"));
		System.out.println("输出成功，请见"+outFile.getPath());
		fout.flush();
		fout.close();
	}
	
	public static void removeById(String TagId, File outFile) throws IOException {

		doc.getElementById(TagId).remove();
		
		String newHtml = doc.outerHtml();
		
		printFile(newHtml,outFile);
		
	}
	
	public static void getPartHtml(String TagId , File outFile) throws IOException{
		Element div = doc.getElementById(TagId);
	
		//Document document = Jsoup.parse(div.outerHtml());
		String newHtml = div.outerHtml();
		if (!outFile.exists()) {
			outFile.createNewFile();
		}
		printFile(newHtml, outFile) ;
	}
	
	public static void getModelById( String TagId , File outFile) throws UnsupportedEncodingException, IOException{
		Element div = doc.getElementById(TagId);
		String meta = getHtmlUtf8();
		String style = getStyle();
		Document document = Jsoup.parse(meta+ style + div.outerHtml());
		String newHtml = document.outerHtml();

		
		if (!outFile.exists()) {
			outFile.createNewFile();
		}
		FileOutputStream fout = new FileOutputStream(outFile);
		fout.write(newHtml.getBytes("utf-8"));
		System.out.println("导入成功，请见"+outFile.getPath());
	}

	private static String getHtmlUtf8() {
		return "<meta http-equiv='Content-Type' content='text/html'; charset=UTF-8>";
		
	}

	public static String getStyle() {
		// 获得所有stylesheet样式文件链接
		Elements csses = doc.getElementsByAttributeValue("rel", "stylesheet");
		// 获得页面里面 <style>标签
		Elements styles = doc.getElementsByTag("style");

		return csses.outerHtml() + styles.outerHtml();
	}

}
