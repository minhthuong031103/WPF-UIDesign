using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace WPF_LoginForm.Respositories
{
    public abstract class RespositoryBase
    {
        private readonly string _connectionString;
        public RespositoryBase()
        {
            _connectionString = "Server=(local); Database=MVVMLoginDB; Integrated Security=true";
        }
        protected SqlConnection GetConnection()
        {
            return new SqlConnection(_connectionString);
        }

    }
}
