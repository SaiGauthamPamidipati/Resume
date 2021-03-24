import java.util.*;
import java.io.*;
import javax.activation.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mail")
public class SendMail extends HttpServlet{
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		 String result;
		 PrintWriter out = res.getWriter();
		   // Recipient's email ID needs to be mentioned.
		   String to = "sg.pamidipati@gmail.com";

		   // Sender's email ID needs to be mentioned
		   String from = req.getParameter("email");
		   
		   String subject = req.getParameter("subject");
		   
		   String name = req.getParameter("name");
		   
		   String body = req.getParameter("body");
		   
		   String content = "name:"+name+" , email: "+from+" , body: "+body;

		   // Assuming you are sending email from localhost
		   String host = "smtp.gmail.com";

		   // Get system properties object
		   Properties props = System.getProperties();

		   // Setup mail server
		   props.setProperty("mail.smtp.auth", "true");
		   props.setProperty("mail.smtp.port", "587");
		   props.setProperty("mail.smtp.host", host);
		   props.setProperty("mail.smtp.starttls.enable", "true");
		  
		   Session mailSession = Session.getDefaultInstance(props, 
				    new javax.mail.Authenticator(){
				        protected PasswordAuthentication getPasswordAuthentication() {
				            return new PasswordAuthentication(
				                "gautham9.scale@gmail.com", "Rainaholi");// Specify the Username and the PassWord
				        }
		   });

		
		   
		   try {
			   
			   Transport transport = mailSession.getTransport("smtp");
		        transport.connect(host, "gautham9.scale@gmail.com", "Rainaholi");
		      // Create a default MimeMessage object.
		      MimeMessage message = new MimeMessage(mailSession);
		      
		      // Set From: header field of the header.
		      message.setFrom(new InternetAddress("gautham9.scale@gmail.com"));
		      
		      // Set To: header field of the header.
		      message.addRecipient(Message.RecipientType.TO,
		                               new InternetAddress(to));
		      // Set Subject: header field
		      message.setSubject(subject);
		      
		      // Now set the actual message
		      message.setText(content);
		      
		      // Send message
		      Transport.send(message);
		      result = "mail was sent successfully....";
		      out.print(result);
		      RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
		      req.setAttribute("message", result);
		      rd.forward(req, res);
		   } catch (MessagingException mex) {
		      mex.printStackTrace();
		      result = "Error: unable to send message....";
		      out.print(result);
		   }
		   
		   
		   
		   
	}

}
