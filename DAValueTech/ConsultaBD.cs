using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAValueTech.Entidades;
using DAValueTech.DAO;
using System.Xml.Schema;

namespace DAValueTech
{
    public class ConsultaBD
    {
        public List<RegionEntidades> ObtenerRegiones()
        {
            List<RegionEntidades> regionEntidades = new List<RegionEntidades>();
            ValueTechDAO valueTechDAO = new ValueTechDAO(); 
            regionEntidades = valueTechDAO.ObtenerRegiones();
            return regionEntidades;
        }

        public List<ComunasEntidades> ObtenerComunasPorRegion(int idRegion)
        {
            List<ComunasEntidades> comunaEntidades = new List<ComunasEntidades>();
            ValueTechDAO vTechDAO = new ValueTechDAO();
            comunaEntidades = vTechDAO.ObtenerComunasPorRegion(idRegion);
            return comunaEntidades;
        }

        public string ObtenerInfoComuna(int idComuna)
        {
            ValueTechDAO valueTechDAO   = new ValueTechDAO();
            string infoAdicional = valueTechDAO.ObtenerInfoComunas(idComuna);
            return infoAdicional;
        }

        public bool UpdateInfoAdicional(int idComuna, string infoAdicional)
        {
            ValueTechDAO valueTechDAO = new ValueTechDAO();
            bool result = valueTechDAO.UpdateInfoComuna(idComuna, infoAdicional);
            return result;
        }

    }
}
