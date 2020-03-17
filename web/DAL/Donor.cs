using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Donor
    {
        private int _merchRef;
        public int MerchRef
        {
            get { return _merchRef; }
            set { _merchRef = value; }
        }

        private string _merchName;
        public string MerchName
        {
            get { return _merchName; }
            set { _merchName = value; }
        }

        private string _merchAddress;
        public string MerchAddress
        {
            get { return _merchAddress; }
            set { _merchAddress = value; }
        }

        private string _merchCountry;
        public string MerchCountry
        {
            get { return _merchCountry; }
            set { _merchCountry = value; }
        }

        private string _merchState;
        public string MerchState
        {
            get { return _merchState; }
            set { _merchState = value; }
        }

        private string _merchPostCode;
        public string MerchPostCode
        {
            get { return _merchPostCode; }
            set { _merchPostCode = value; }
        }

        private string _merchPhone;
        public string MerchPhone
        {
            get { return _merchPhone; }
            set { _merchPhone = value; }
        }

        private string _merchEmail;
        public string MerchEmail
        {
            get { return _merchEmail; }
            set { _merchEmail = value; }
        }

        private decimal _amount;
        public decimal Amount
        {
            get { return _amount; }
            set { _amount = value; }
        }

        private bool _isApproved;
        public bool IsApproved
        {
            get { return _isApproved; }
            set { _isApproved = value; }
        }

        public bool Insert()
        {
            string connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            bool result = false;
            SqlConnection cnn = new SqlConnection(connStr);
            cnn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "tbl_DonorData_Insert";
            cmd.Parameters.Add("MerchRef", SqlDbType.Int).Value = MerchRef;
            cmd.Parameters.Add("MerchName", SqlDbType.NVarChar).Value = MerchName;
            cmd.Parameters.Add("MerchAddress", SqlDbType.NVarChar).Value = MerchAddress;
            cmd.Parameters.Add("MerchEmail", SqlDbType.NVarChar).Value = MerchEmail;
            cmd.Parameters.Add("MerchPhone", SqlDbType.NVarChar).Value = MerchPhone;
            cmd.Parameters.Add("MerchState", SqlDbType.NVarChar).Value = MerchState;
            cmd.Parameters.Add("MerchCountry", SqlDbType.NVarChar).Value = MerchCountry;
            cmd.Parameters.Add("MerchPostCode", SqlDbType.NVarChar).Value = MerchPostCode;
            cmd.Parameters.Add("Amount", SqlDbType.Decimal).Value = Amount;
            cmd.Parameters.Add("IsApproved", SqlDbType.Bit).Value = IsApproved;

            int rowsAff = cmd.ExecuteNonQuery();
            if (rowsAff > 0)
                result = true;

            cnn.Close();
            return result;
        }

        public static int GetMaxId()
        {
            string connStr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            int result = 0;
            SqlConnection cnn = new SqlConnection(connStr);
            cnn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "tbl_DonorData_GetMaxId";
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
                if (!(dr["MerchRef"] is DBNull))
                result = (int) dr["MerchRef"];
            cnn.Close();
            return result;
        }

    }
}
