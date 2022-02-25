
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace hada_p1
{
    class Program
    {
        static void Main(string[] args)
        {
            string unidad, cantidad, respuesta;
            bool vuelve;
            do
            {
                vuelve = false;
                Console.WriteLine("¿Que quiere convertir? ¿segundos o minutos?");
                unidad = Console.ReadLine();
                switch (unidad)
                {
                    case "segundos":
                    case "Segundos":
                        Console.WriteLine($"Introduzca la cantidad de {unidad} que quieres convertir");
                        cantidad = Console.ReadLine();
                        Console.WriteLine(HadaP1.Seconds2Minutes(double.Parse(cantidad)));
                        break;
                    case "Minutos":
                    case "minutos":
                        Console.WriteLine($"Introduzca la cantidad de {unidad} que quieres convertir");
                        cantidad = Console.ReadLine();
                        Console.WriteLine(HadaP1.Minutes2Seconds(double.Parse(cantidad)));
                        break;
                    case "Horas":
                    case "horas":
                        Console.WriteLine($"Introduzca la cantidad de {unidad} que quieres convertir");
                        cantidad = Console.ReadLine();
                        Console.WriteLine(HadaP1.Hours2minutes(double.Parse(cantidad)));
                        break;
                    default:
                        Console.WriteLine("Lo siento no te he entendido");
                        break;
                }
                    do
                    {
                        Console.WriteLine("¿Quieres convertir otra cosa [s/n]?");
                        respuesta = Console.ReadLine();
                        if (respuesta == "s") { vuelve = true; }
                    } while (respuesta != "s" && respuesta != "n");
            } while (vuelve);
        }
    }
}
