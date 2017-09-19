function []=gmail(address,subject,message)
% Define these variables appropriately:
mail = ''; %Your GMail email address
password = ''; %Your GMail password

% Then this code will set up the preferences properly:
setpref('Internet','E_mail',mail);
setpref('Internet','SMTP_Server','smtp.gmail.com');
setpref('Internet','SMTP_Username',mail);
setpref('Internet','SMTP_Password',password);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
props.setProperty('mail.smtp.socketFactory.port','465');

% Send the email
% sendmail(address,subject,message,strcat(cd,'/testimage.jpg'))
% % sendmail(address,subject,message,strcat(cd,'/f1.png'))
sendmail(address,subject,message,strcat(cd,'/testimage.jpg'))
end