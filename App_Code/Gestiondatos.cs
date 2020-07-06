using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public class Gestiondatos
{
    public SqlConnection conexion;
    public SqlConnection transacion;
    public string error;
    public Gestiondatos()
    {
        this.conexion = Conexion.GetConexion();
    }

    public bool Agregarcliente(Cliente unCliente)
    {
        bool agregar = false;
        SqlCommand comando = new SqlCommand();
        comando.Connection = conexion;
        comando.CommandText = "insert into t_Cliente values(@NombrePelicula, @Idsala, @NombreCliente, @ApellidoCliente, @FechaHora, @Fila, @Asiento, @Precio)";
        comando.Parameters.AddWithValue("@NombrePelicula", unCliente.NombrePelicula);
        comando.Parameters.AddWithValue("@IdSala", unCliente.Idsala);
        comando.Parameters.AddWithValue("@NombreCliente", unCliente.Nombre);
        comando.Parameters.AddWithValue("@ApellidoCliente", unCliente.Apellido);
        comando.Parameters.AddWithValue("@FechaHora", unCliente.FechaHora);
        comando.Parameters.AddWithValue("@Fila", unCliente.Fila);
        comando.Parameters.AddWithValue("@Asiento", unCliente.Asiento);
        comando.Parameters.AddWithValue("@Precio", unCliente.Precio);
        try
        {
            comando.ExecuteNonQuery();
            agregar = true;
        }
        catch (SqlException ex)
        {
            this.error = ex.Message;
           
        }
        return agregar;
    }

   
}