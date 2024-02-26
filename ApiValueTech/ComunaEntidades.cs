using System.Security.Cryptography.X509Certificates;

namespace ApiValueTech
{
    public class ComunaEntidades
    {
        public int idComuna {  get; set; }
        public int idRegion { get; set; }
        public string? Comuna {  get; set; }
        public string? informacionAdicional { get; set; }
        public string? comDensidad { get; set; }
        public string? comPoblacion { get; set; }
        public string? comSuperficie { get; set; }

    }
}
