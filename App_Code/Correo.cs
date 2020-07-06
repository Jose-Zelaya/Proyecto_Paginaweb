using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mail;
using System.Net.Mail;
using MailMessage = System.Net.Mail.MailMessage;
using System.Web.ModelBinding;
using System.Security.Cryptography.X509Certificates;
/// <summary>
/// Descripción breve de Correo
/// </summary>
public class Correo
{
    bool estado;
    string merror;
    public Correo(string destinatario, string asunto,string mensaje)
    {
        MailMessage correo = new MailMessage();
        SmtpClient protocolo = new SmtpClient();

        correo.To.Add(destinatario);
        correo.From = new MailAddress("cinecatracho20@gmail.com", "Cine Catracho",System.Text.Encoding.UTF8);
        correo.Subject = asunto;
        correo.SubjectEncoding = System.Text.Encoding.UTF8;
        correo.Body = mensaje;
        correo.BodyEncoding = System.Text.Encoding.UTF8;
        correo.IsBodyHtml = false;

        protocolo.Credentials = new System.Net.NetworkCredential("cinecatracho20@gmail.com","1993123456");
        protocolo.Port = 587;
        protocolo.Host = "smtp.gmail.com";
        protocolo.EnableSsl = true;

        try
        {
            protocolo.Send(correo);
        }
        catch (SmtpException error)
        {
            estado = false;
            merror = error.Message.ToString();
            
        }

        
    }
    public Boolean Estado
    {
        get { return estado; }
    }
    public string Error
    {
        get { return merror; }
    }
}