using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAValueTech.DA
{
    class ValueTechDA
    {
        private static string _conn = "Data Source=LAPTOP-8MQGM7KE; Initial Catalog=PruebaValueTech; User ID=ValueTechUser; Password=PassValueTech;";
        public DataSet ObtenerRegiones()
        {
            DataSet ds = new DataSet();

            try
            {

                using (SqlConnection cn = new SqlConnection(_conn))
                {
                    SqlDataAdapter sda = new SqlDataAdapter();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = cn;
                    cmd.CommandTimeout = 10000;
                    cmd.CommandText = "SP_Obtener_Regiones";
                    cmd.CommandType = CommandType.StoredProcedure;
                    sda.SelectCommand = cmd;
                    sda.Fill(ds);
                } 
            } catch (Exception ex)
            {
                throw new Exception("Error en capa de datos: " + ex.Message, ex);
            }

            return ds;

        }

        public DataSet ObtenerComunasPorRegion(int idRegion)
        {
            DataSet ds = new DataSet();
            try
            {
                using (SqlConnection cn = new SqlConnection(_conn))
                {
                    SqlDataAdapter sda = new SqlDataAdapter();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = cn;
                    cmd.CommandTimeout = 10000;
                    cmd.CommandText = "SP_Obtener_Comuna_Por_Region";
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("IdRegion", SqlDbType.Int).Value = idRegion;
                    sda.SelectCommand = cmd;
                    sda.Fill(ds);
                   
                }
                return ds;
            }

            catch (Exception ex)
            {
                throw new Exception("Error en la capa de datos: " + ex.Message, ex);
            }
        }

        public string ObtenerInfoComuna(int idComuna)
        {
            string infoAdicional = string.Empty;
            try
            {
                using (SqlConnection cn = new SqlConnection(_conn))
                {
                    SqlCommand cmd = new SqlCommand();
                    cn.Open();
                    cmd.Connection = cn;
                    cmd.CommandTimeout = 10000;
                    cmd.CommandText = "SP_Obtener_Info_Comuna";
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("IdComuna", SqlDbType.Int).Value = idComuna;
                    infoAdicional = cmd.ExecuteScalar().ToString();
                    cn.Close();
                }
                return infoAdicional;
            }
            catch (Exception ex)
            {
                throw new Exception("Error en la capa de datos: " + ex.Message, ex);
            }

        }

        public bool UpdateInfoComuna(int idComuna, string infoAdicional)
        {
            bool result = false;
            try
            {
                using (SqlConnection cn = new SqlConnection(_conn))
                {
                    SqlCommand cmd = new SqlCommand();
                    cn.Open();
                    cmd.Connection = cn;
                    cmd.CommandTimeout = 10000;
                    cmd.CommandText = "SP_Update_Info_Comuna";
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("IdComuna", SqlDbType.Int).Value = idComuna;
                    cmd.Parameters.Add("infoAdicional", SqlDbType.VarChar).Value = infoAdicional;

                     
                    if (cmd.ExecuteNonQuery() == 1)
                    {
                        result = true;
                    };
                    cn.Close();
                }
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error en la capa de datos: " + ex.Message, ex);
            }

        }

    }
}
