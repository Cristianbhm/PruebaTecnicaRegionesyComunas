using Microsoft.AspNetCore.Mvc;
using DAValueTech;
using System.Linq;
using System.Collections.Generic;
using System.Xml;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ApiValueTech.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RegionyComunasController : ControllerBase
    {
        // GET: api/<RegionyComunasController>
        [HttpGet("GetRegiones")]
        public IEnumerable<RegionEntidades> GetRegiones()
        {
            ConsultaBD consultaBD = new ConsultaBD();
            var resultBd = consultaBD.ObtenerRegiones();
            IEnumerable<RegionEntidades> listRegiones = resultBd.Select(o => new RegionEntidades() { idRegion = o.IdRegion, Region = o.Region });
            return listRegiones;

        }

        // GET: api/<RegionyComunasController>/5
        [HttpGet("GetComunaPorRegion")]
        public IEnumerable<ComunaEntidades> GetComunasPorRegion(int id)
        {
            ConsultaBD consultaBD = new ConsultaBD();
            var resultBD = consultaBD.ObtenerComunasPorRegion(id);

            IEnumerable<ComunaEntidades> listComunasPorRegion = resultBD.Select(o => new ComunaEntidades()
            {
                idComuna = o.IdComuna,
                Comuna = o.Comuna
            });

            return listComunasPorRegion;
        }


        // GET: api/<RegionyComunasController>/5
        [HttpGet("GetInfoComuna")]
        public string GetInfoComuna(int id)
        {
            ConsultaBD consultaBD = new ConsultaBD();
            var resultBD = consultaBD.ObtenerInfoComuna(id);


            return resultBD;
        }

        //POST api/<RegionyComunasController>
        [HttpPost("UpdateInfoComuna")]
        public bool UpdateInfoComuna(ComunaEntidades comunaInfo)
        {
            ConsultaBD consultaBD = new ConsultaBD();
            string comSuperficie = string.IsNullOrEmpty(comunaInfo.comSuperficie) ? "" : comunaInfo.comSuperficie.ToString() ;
            string comDensidad = string.IsNullOrEmpty(comunaInfo.comDensidad) ? "" : comunaInfo.comDensidad.ToString();
            string comPoblacion = string.IsNullOrEmpty(comunaInfo.comPoblacion) ? "" :comunaInfo.comPoblacion.ToString();
            int idComuna = comunaInfo.idComuna;
            string infoAdicional = "<info>" +
                                   "<Superficie>" + comSuperficie + "</Superficie>" +
                                   "<Poblacion Densidad='"  + comDensidad + "'>" + comPoblacion + "</Poblacion>" +
                                   "</info>";
            var resultBD = consultaBD.UpdateInfoAdicional(idComuna, infoAdicional);
            return resultBD;
        }
    }
}
