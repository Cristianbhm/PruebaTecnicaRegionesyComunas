using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using System.Net;
using ValueTechPruebaTecnica.Models;
using Newtonsoft.Json;
using System.Xml.Linq;



namespace ValueTechPruebaTecnica.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private static string urlBase = Environment.GetEnvironmentVariable("urlBaseApiValueTech");
        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        [HttpPost]
        public JsonResult ObtenerRegiones()
        {
       
            
            string url = urlBase + "GetRegiones";
            try
            {
                HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create(url);
                request.Method = "GET";
                string _data = String.Empty;
                using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
                {
                    Stream dataStream = response.GetResponseStream();
                    StreamReader reader = new StreamReader(dataStream);
                    _data = reader.ReadToEnd();
                    reader.Close();
                    dataStream.Close();

                }

                object obj = JsonConvert.DeserializeObject(_data);
                string data = JsonConvert.SerializeObject(obj, Formatting.Indented);
   
                return Json(data);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        [HttpPost]
        public JsonResult ObtenerComunasPorRegion(int idRegion)
        {
            string url = urlBase +"GetComunaPorRegion?id=" + idRegion;
            try
            {
                HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create(url);
                request.Method = "GET";
                string _data = String.Empty;
                using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
                {
                    Stream dataStream = response.GetResponseStream();
                    StreamReader reader = new StreamReader(dataStream);
                    _data = reader.ReadToEnd();
                    reader.Close();
                    dataStream.Close();

                }

                object obj = JsonConvert.DeserializeObject(_data);
                string data = JsonConvert.SerializeObject(obj, Formatting.Indented);
                
           

                return Json(data);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        [HttpPost]
        public JsonResult ObtenerInfoComuna(int idComuna)
        {

            string url = urlBase + "GetInfoComuna?id=" + idComuna ;
            try
            {
                HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create(url);
                request.Method = "GET";
                string _data = String.Empty;
                using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
                {
                    Stream dataStream = response.GetResponseStream();
                    StreamReader reader = new StreamReader(dataStream);
                    _data = reader.ReadToEnd();
                    reader.Close();
                    dataStream.Close();

                }

                System.Xml.XmlDocument doc = new System.Xml.XmlDocument();
                doc.LoadXml(_data);
                string jsonText = JsonConvert.SerializeXmlNode(doc);
                object obj = JsonConvert.DeserializeObject(jsonText);
                string data = JsonConvert.SerializeObject(obj, Formatting.Indented);
                data = data.Replace("@", "").Replace("#","").Replace("text","result");
                return Json(data);
            }

            catch (Exception ex)
            {
                throw ex;
            }

        }

        [HttpPost]
        public JsonResult ActualizaInfoComuna(ComunaModel comunaInfo)
        {

            string url = urlBase + "UpdateInfoComuna";
            string result = string.Empty;
            try
            {
                var httpWebRequest = (HttpWebRequest)WebRequest.Create(url);
                httpWebRequest.ContentType = "application/json";
                httpWebRequest.Method = "POST";

                using (var streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
                {

                    string json = JsonConvert.SerializeObject(comunaInfo);
                    streamWriter.Write(json);
                }

                var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
                using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
                {
                    result = streamReader.ReadToEnd();
                }
                return Json(result);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
