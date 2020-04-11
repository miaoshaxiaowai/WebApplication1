using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public static class DBhelper
    {
        static string connstr = "server=DESKTOP-JSKN6AB\\SQLEXPRESS;database=db_news;uid=sa;pwd=love819099119";
        static SqlConnection conn;
        /// <summary>
        /// 初始化链接
        /// </summary>
        public static void initConn() {
            conn = new SqlConnection(connstr);
            conn.Open();
        }
        /// <summary>
        /// 查询
        /// </summary>
        /// <param name="sqlstr">sql语句</param>
        /// <returns></returns>
        public static DataSet GetDataSet(string sqlstr) {
            initConn();
            SqlDataAdapter dat = new SqlDataAdapter(sqlstr, conn);//数据库适配器
            DataSet ds = new DataSet();
            dat.Fill(ds);
            conn.Close();
            return ds;
        }
        /// <summary>
        /// 添加、删除、修改
        /// </summary>
        /// <param name="sqlstr">sql语句</param>
        /// <returns></returns>
        public static bool InsertUpdateDel(string sqlstr) {
            initConn();
            SqlCommand comm = new SqlCommand(sqlstr, conn);
            int n=comm.ExecuteNonQuery();
            conn.Close();
            if (n == 1)
            {
                return true;
            }
            else {
                return false;
            }
        }
    }
}