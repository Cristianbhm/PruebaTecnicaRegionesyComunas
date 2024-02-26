using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAValueTech.Entidades
{
    public  class ComunasEntidades
    {
        public int IdComuna {  get; set; }
        public string Comuna { get; set; }
        public int idRegion { get; set; }
        public string informacionAdicional { get; set; }
        public string comDensidad { get; set; }
        public string comPoblacion { get; set; }
        public string comSuperficie { get; set; }

    }
}
