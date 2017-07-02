package com.l.bookCity.util;
import java.io.FileInputStream;
import java.security.Security;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import com.sun.net.ssl.internal.ssl.Provider;



public class EmailUtil {
	public static void sendEmail (String address , String title ,String contents ) throws MessagingException {
		
			String userName = "179209254@qq.com";
			String password = "tvrrtmmmxicfbjed";
			String smtp_server = "smtp.qq.com";
			String from_mail_address = userName;
			Authenticator auth = new PopupAuthenticator(userName, password);
			Properties mailProps = new Properties();
			mailProps.put("mail.smtp.host", smtp_server);
			mailProps.put("mail.smtp.auth", "true");
			mailProps.put("username", userName);
			mailProps.put("password", password);
			Security.addProvider(new Provider()); 
			mailProps.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			mailProps.setProperty("mail.smtp.port", "465");
			mailProps.setProperty("mail.smtp.socketFactory.port", "465");

			Session mailSession = Session.getInstance(mailProps, auth);
			
			//mailSession.setDebug(true);  不现实debug信息
			
			MimeMessage message = new MimeMessage(mailSession);
			message.setFrom(new InternetAddress(from_mail_address));
			
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(address));
			
			if(title==null){
				message.setSubject("来自超级牛逼的12306订票系统");
			}else{
				message.setSubject(title);
			}
			MimeMultipart multi = new MimeMultipart();
			BodyPart textBodyPart = new MimeBodyPart();
			
			if(contents==null){
				textBodyPart.setText("您的验证码为：123456,打死都不能告诉别人哦！！");
			}else{
				textBodyPart.setText("您的验证码为："+contents+",打死都不能告诉别人哦！！");
			}
			
			
			// textBodyPart.setFileName("37af4739a11fc9d6b311c712.jpg");

			multi.addBodyPart(textBodyPart);
			message.setContent(multi);
			message.saveChanges();
			Transport.send(message);
			
	}
	
	//发送四位验证码
	public static boolean sendMailCode(String address , String title){
		Random rd = new Random();
		int code = rd.nextInt(10000)+1000;
		//System.out.println(code);
		try {
			sendEmail(address, title, String.valueOf(code));
		} catch (MessagingException e) {
			e.printStackTrace();
			return false;
		}
		
		return true;
	}  
	
}

class PopupAuthenticator extends Authenticator {
	private String username;
	private String password;

	public PopupAuthenticator(String username, String pwd) {
		this.username = username;
		this.password = pwd;
	}

	public PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(this.username, this.password);
	}
}