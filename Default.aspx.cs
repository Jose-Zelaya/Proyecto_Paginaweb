using ASP;
using EO.Internal;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Policy;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Gestiondatos objGestiondatos = new Gestiondatos();
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        System.Diagnostics.Process.Start("http://cinecatracho.somee.com");
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        txtprecio.Text = "80.00";
        
    }
    
    
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        

        if (string.IsNullOrEmpty(txtnombre.Text)||txtnombre.Text=="Nombre" )
        {

            Label2.Text = "El Campo Nombre Esta Vacio";

            return;

        }
        else if (string.IsNullOrEmpty(txtapellido.Text)||txtapellido.Text=="Apellido")
        {

            Label2.Text = "El Campo Apellido Esta Vacio";

            return;
                    }
      
        else if (string.IsNullOrEmpty(TextBox2.Text))
        {
           
                Label2.Text = "El Campo Numero de tarjeta Esta Vacio";
                return;
            
        }
        else if (string.IsNullOrEmpty(TextBox3.Text))
        {

            Label2.Text = "El Campo Numero de Seguridad Esta Vacio";

            return;

        }
        else if (string.IsNullOrEmpty(TextBox4.Text))
        {

            Label2.Text = "El Campo Correo Eletronico Esta Vacio";

            return;

        }
        else if (string.IsNullOrEmpty(TextBox5.Text))
        {

            Label2.Text = "El Campo Numero de telefono Esta Vacio";

            return;

        }        
        else 
        {
            Cliente uncliente = new Cliente();

            uncliente.NombrePelicula = cmbpelicula.Text;
            uncliente.Idsala = int.Parse(cmbsala.Text);
            uncliente.Nombre = txtnombre.Text;
            uncliente.Apellido = txtapellido.Text;
            uncliente.FechaHora = txtfecha.Text;
            uncliente.Fila = cmbfila.Text;
            uncliente.Asiento = int.Parse(cmbasiento.Text);
            uncliente.Precio = double.Parse(txtprecio.Text);

            bool agregado = objGestiondatos.Agregarcliente(uncliente);
            string mensaje = "Hola"+" \nGracias por tu compra!\nEste es tu boleto online debes presentarlo en ventanilla del cine. \nRecuerda no compartir este correo ya que aqui se encuentra la informacion de tu boleto"+"\n\nId Sala: "+cmbsala.Text+"\nPelicula: "+cmbpelicula.Text+"\nNombre y Apellido: "+txtnombre.Text+" "+txtapellido.Text+"\nFecha y Hora: "+txtfecha.Text+"\nFila: "+cmbfila.Text+"\nAsiento: "+cmbasiento.Text+"\n\nGracias Esperamos que tu dia sea especial. \nAtt. Cine Catracho 2020";
            string email = Convert.ToString(TextBox4.Text);


            if (agregado)
            {
                Label1.Text = "Compra realizada correctamente \nSe ha enviado el boleto a su correo";
                Label2.Text = "";
                Limpiar();
                Correo enviar = new Correo(email, "Boleto",mensaje);
               
            }
            else
            {
                Label1.Text = objGestiondatos.error;
            }
        }
    }

    private void Limpiar()
    {
       
        txtnombre.Text = "";
        txtapellido.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";

    }
   
}