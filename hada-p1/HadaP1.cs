
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace hada_p1
{
    /// <summary>
    /// Esta clase contiene métodos para convertir de
    /// segundos a minutos y viceversa
    /// </summary>
    class HadaP1
    {
        public static double Seconds2Minutes(double s)
        {
            if (s == 0)
            {
                return 0;
            }
            else 
            {
                return s / 60;
            }
        }

        public static double Minutes2Seconds (double m)
        {
            if (m == 0)
            {
                return 0;
            }
            else
            {
                return 60 * m;
            }
        }
    }
}
