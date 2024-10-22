using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using MimeKit;
using Google.Apis.Auth.OAuth2;
using Google.Apis.Gmail.v1;
using Google.Apis.Gmail.v1.Data;
using Google.Apis.Services;
using System.Threading;
using Google.Apis.Util.Store;

namespace EduTrack.CommonClasses
{
    public class Common
    {
        //Pass 9ejYRgXKOV21rl488jJlidfazeDqA5UP

        private static readonly byte[] Key = Encoding.UTF8.GetBytes("Xy9hG3vPzT4kL1sM2nQ8jR6d");  
        private static readonly byte[] IV = Encoding.UTF8.GetBytes("7bT5vH2x");  
        public static string ComputeSha256Hash(string rawData)
        {
            // Create a SHA256
            using (SHA256 sha256Hash = SHA256.Create())
            {
                // ComputeHash - returns byte array
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(rawData));

                // Convert byte array to a string
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }

        public static string TripleDESEncrypt(string plainText)
        {
            using (TripleDES tripleDES = TripleDES.Create())
            {
                tripleDES.Key = Key;
                tripleDES.IV = IV;

                ICryptoTransform encryptor = tripleDES.CreateEncryptor(tripleDES.Key, tripleDES.IV);

                using (MemoryStream msEncrypt = new MemoryStream())
                {
                    using (CryptoStream csEncrypt = new CryptoStream(msEncrypt, encryptor, CryptoStreamMode.Write))
                    {
                        using (StreamWriter swEncrypt = new StreamWriter(csEncrypt))
                        {
                            // Write the plain text to the stream to encrypt
                            swEncrypt.Write(plainText);
                        }
                    }

                    byte[] encryptedBytes = msEncrypt.ToArray();
                    return Convert.ToBase64String(encryptedBytes);
                }
            }
        }

        public static string TripleDESDecrypt(string cipherText)
        {
            byte[] cipherBytes = Convert.FromBase64String(cipherText);

            using (TripleDES tripleDES = TripleDES.Create())
            {
                tripleDES.Key = Key;
                tripleDES.IV = IV;

                // Create a decryptor
                ICryptoTransform decryptor = tripleDES.CreateDecryptor(tripleDES.Key, tripleDES.IV);

                using (MemoryStream msDecrypt = new MemoryStream(cipherBytes))
                {
                    using (CryptoStream csDecrypt = new CryptoStream(msDecrypt, decryptor, CryptoStreamMode.Read))
                    {
                        using (StreamReader srDecrypt = new StreamReader(csDecrypt))
                        {
                            // Return the decrypted string
                            return srDecrypt.ReadToEnd();
                        }
                    }
                }
            }
        }

        public static string GenerateRandomString(int length)
        {
            char[] chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".ToCharArray();
            StringBuilder result = new StringBuilder(length);
            Random random = new Random();

            for (int i = 0; i < length; i++)
            {
                result.Append(chars[random.Next(chars.Length)]);
            }

            return result.ToString();
        }
        //sssy uvby ngyg tnzm


        public static bool SendEmail(string emailContent, string emailSubject, string toEmail, string fromEmail, string password)
         {
             try
            {
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress(toEmail); // Sender's email
                mail.To.Add(toEmail); // Recipient's email
                mail.Subject = emailSubject; // Subject
                mail.Body = emailContent; // Body
                mail.IsBodyHtml = false; // Set to true if you are sending HTML content

                using (SmtpClient smtp = new SmtpClient())
                {
                    smtp.Host = "smtp.gmail.com"; // SMTP server for Gmail
                    smtp.Port = 587; // SMTP port
                    smtp.Credentials = new System.Net.NetworkCredential("edutrack4@gmail.com", "sssy uvby ngyg tnzm");
                    smtp.EnableSsl = true; // Enable SSL

                    smtp.Send(mail); // Send the email
                }

                Console.Write("Email sent successfully!");
                return true;
            }
            catch (Exception ex)
            {
                Console.Write("Error sending email: " + ex.Message);
                return false;
            }
         }
        private static string Base64UrlEncode(string input)
        {
            return Convert.ToBase64String(System.Text.Encoding.UTF8.GetBytes(input))
                .Replace("+", "-").Replace("/", "_").Replace("=", "");
        }
    }
}