using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Cliente
{
    public int idCliente;
    public string nombrepelicula;
    public int idSala;
    public string nombre;
    public string apellido;
    public string fechahora;
    public string fila;
    public int asiento;
    public double precio;
    public Cliente()
    {
       
    }
    public Cliente(string nombrepelicula, int idSala, string nombre, string apellido, string fechahora, string fila, int asiento, double precio)
    {
        this.nombrepelicula = nombrepelicula;
        this.idSala = idSala;
        this.nombre = nombre;
        this.apellido = apellido;
        this.fechahora = fechahora;
        this.fila = fila;
        this.asiento = asiento;
        this.precio = precio;
    }
    public int IdCliente
    {
        get { return idCliente; }
        set { idCliente = value; }
    }
    public int Idsala
    {
        get { return idSala; }
        set { idSala = value; }
    }
    public string NombrePelicula
    {
        get { return nombrepelicula; }
        set { nombrepelicula = value; }
    }
    public string Nombre
    {
        get { return nombre; }
        set { nombre = value; }
    }

    public string Apellido
    {
        get { return apellido; }
        set { apellido = value; }
    }
      public string FechaHora
    {
       get { return fechahora; }
       set { fechahora = value; }
    }

    public string Fila
    {
        get { return fila; }
        set { fila = value; }
    }

    public int Asiento
    {
        get { return asiento; }
        set { asiento = value; }
    }
    public double Precio
    {
        get { return 80.00; }
        set { precio = value; }
    }

}