using System;
using System.Net;
using System.Net.Mail;

namespace MaryHelp.Util
{
    public static class Email
    {
        static string _signature = "<br /><br />Hugs,<br />Clean Me Now team";

        public static void SendEmailForApproval(string to, string jobId)
        {
            try
            {
                using (MailMessage mail = new MailMessage())
                {
                    mail.From = new MailAddress("c1eanm3n0w@gmail.com", "Clean Me Now");
                    mail.To.Add(to);
                    mail.Subject = "You have a candidate to your job posting!";
                    mail.Body = "Hi there!<br /><br />Your job post has one candidate! Click on the link below to review and approve the application.<br /> http://www.cleanmenow.somee.com/approve.aspx?jobId=" + jobId + _signature;
                    mail.IsBodyHtml = true;
                    // Can set to false, if you are sending pure text.

                    using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                    {
                        smtp.Credentials = new NetworkCredential("c1eanm3n0w@gmail.com", "Aapezzatto3803"); //later must be encrypted
                        smtp.EnableSsl = true;
                        smtp.Send(mail);
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error sending Email: " + ex.Message);
            }
        }

        public static void SendApprovedEmail(string to, string who, string where, string when, string time, string duration, string price)
        {
            try
            {
                using (MailMessage mail = new MailMessage())
                {
                    mail.From = new MailAddress("c1eanm3n0w@gmail.com", "Clean Me Now");
                    mail.To.Add(to);
                    mail.Subject = "Your application has been accepted!";
                    mail.Body = "Congratulations!<br /><br />Your job application has been accepted. See below the detais:<br /><br /><b>Client Name:</b> " + who + "<br /><b>Where:</b> " + where + "<br /><b>When:</b> " + when + "<br /><b>Time:</b> " + time + "<br /><b>Duration:</b> " + duration + " hours <br /><b>Earnings:</b> CAD$" + price + _signature;
                    mail.IsBodyHtml = true;
                    // Can set to false, if you are sending pure text.

                    using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                    {
                        smtp.Credentials = new NetworkCredential("c1eanm3n0w@gmail.com", "Aapezzatto3803"); //later must be encrypted
                        smtp.EnableSsl = true;
                        smtp.Send(mail);
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error sending Email: " + ex.Message);
            }
        }

        public static void SendReprovedEmail(string to, string who, string when, string time, string duration)
        {
            try
            {
                using (MailMessage mail = new MailMessage())
                {
                    mail.From = new MailAddress("c1eanm3n0w@gmail.com", "Clean Me Now");
                    mail.To.Add(to);
                    mail.Subject = "Your application has been rejected!";
                    mail.Body = "Hi there!<br /><br />Your job application has been rejected. See below the detais:<br /><br /><b>Client Name:</b> " + who + "<br /><b>When:</b> " + when + "<br /><b>Time:</b> " + time + "<br /><b>Duration:</b> " + duration + " hours " + _signature;
                    mail.IsBodyHtml = true;
                    // Can set to false, if you are sending pure text.

                    using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                    {
                        smtp.Credentials = new NetworkCredential("c1eanm3n0w@gmail.com", "Aapezzatto3803"); //later must be encrypted
                        smtp.EnableSsl = true;
                        smtp.Send(mail);
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error sending Email: " + ex.Message);
            }
        }
    }
}
