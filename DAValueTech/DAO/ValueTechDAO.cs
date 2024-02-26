using DAValueTech.DA;
using DAValueTech.Entidades;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAValueTech.DAO
{
    public class ValueTechDAO
    {
        public List<RegionEntidades> ObtenerRegiones()
        {
            List<RegionEntidades> result = new List<RegionEntidades>();
            ValueTechDA valueTechDA = new ValueTechDA();
            DataSet ds = valueTechDA.ObtenerRegiones();
            
            foreach (DataRow r in ds.Tables[0].Rows)
            {
                RegionEntidades reg = new RegionEntidades();
                reg.IdRegion = Int32.Parse(r["IdRegion"].ToString());
                reg.Region = r["Region"].ToString();
                result.Add(reg);
            }
            return result;
        }

        public List<ComunasEntidades> ObtenerComunasPorRegion(int idRegion)
        {
            List<ComunasEntidades> result = new List<ComunasEntidades>();
            ValueTechDA valueTechDA = new ValueTechDA();
            DataSet ds = valueTechDA.ObtenerComunasPorRegion(idRegion);
            
            foreach (DataRow r in ds.Tables[0].Rows)
            {
                ComunasEntidades com = new ComunasEntidades();
                com.IdComuna = Int32.Parse(r["IdComuna"].ToString());
                com.Comuna = r["Comuna"].ToString();
                result.Add(com);
            }
            return result;
        }


        public string ObtenerInfoComunas(int idComuna)
        {
            ValueTechDA valueTechDA = new ValueTechDA();
            string infoAdicional = valueTechDA.ObtenerInfoComuna(idComuna);
            return infoAdicional;
        }

        public bool UpdateInfoComuna(int idComuna, string infoAdicional)
        {
            ValueTechDA valueTechDA = new ValueTechDA();
            bool result = valueTechDA.UpdateInfoComuna(idComuna, infoAdicional);
            return result;
        }
    }
}
