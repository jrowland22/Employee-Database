using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Employee27
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private int mRowsAffected;
        private string[] SQLstatements;
        private SqlConnection mConnection;
        private string mConnectionString;
        private SqlCommand mCommand;
        private DataSet ds;
        private SqlDataAdapter da;
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btn27_executeQuery_Click(object sender, RoutedEventArgs e)
        {
            int i;
            int n;
            string text;
            string message = "";
            bool ok = false;
            text = txt27_query.Text;
            text = text.Replace('\r', ' ');
            text = text.Replace('\n', ' ');
            SQLstatements = text.Split(';');
            n = SQLstatements.GetUpperBound(0);
            for (i = 0; i < n; i++)
            {
                ProcessStatement(SQLstatements[i], ref message, ref ok);
                txt27_message.Text = txt27_message.Text + "#" + i.ToString() + ": " + message + Environment.NewLine;
                SqlConnection nConnection = new SqlConnection();
                if (!ok) break;
            }
        }

        private void btn27_clearQuery_Click(object sender, RoutedEventArgs e)
        {
            txt27_query.Text = "";
        }

        private void btn27_clearMessage_Click(object sender, RoutedEventArgs e)
        {
            txt27_message.Text = "";
        }

        private void btn27_clearResult_Click(object sender, RoutedEventArgs e)
        {
            dg27_result.ItemsSource = null;
            dg27_result.Columns.Clear();
            dg27_result.Items.Clear();
            dg27_result.Items.Refresh();
        }

        private void btn27_done_Click(object sender, RoutedEventArgs e)
        {
            System.Environment.Exit(-1);
        }

        private void winMain27_Activated(object sender, EventArgs e)
        {
            mConnection = new SqlConnection();
        }

        private void ProcessStatement(string s, ref string m, ref bool ok)
        {
            int i;
            string currentStatement;
            string currentCommand;
            string dbName;
            string query;
            try
            {
                currentStatement = s.Trim();
                i = currentStatement.IndexOf(" ");
                if (i < 0)
                {
                    i = currentStatement.Length;
                }
                currentCommand = currentStatement.Substring(0, i).ToUpper();
                if (currentCommand.IndexOf("SP_", 0, 3) >= 0)
                {
                    currentCommand = "SP_";
                }
                ok = true;
                switch (currentCommand)
                {
                    case "USE":
                        {
                            dbName = currentStatement.Substring(4, currentStatement.Length - 4);
                            mConnection.Close();
                            mConnectionString = @"data source=" + txt27_server.Text + ";" +
                                                 "database=" + dbName + ";" +
                                                 "User ID=" + txt27_userName.Text + ";" +
                                                 "Password=" + pwb27_password.Password.Trim();
                            mConnection.ConnectionString = mConnectionString;
                            mConnection.Open();
                            m = "Successful connection to " + dbName;
                            break;
                        }
                    case "SELECT":
                    case "SP_":
                        {
                            query = s.Trim();
                            da = new SqlDataAdapter(query, mConnection);
                            ds = new DataSet();
                            da.Fill(ds, "Result");
                            dg27_result.ItemsSource = ds.Tables["Result"].DefaultView;
                            m = " OK";
                            break;
                        }
                    default:
                        {
                            query = s.Trim();
                            mCommand = mConnection.CreateCommand();
                            mCommand.CommandText = query;
                            mRowsAffected = mCommand.ExecuteNonQuery();
                            m = "Number of rows affected " + mRowsAffected.ToString();
                            break;
                        }
                }
            }
            catch (System.Exception err)
            {
                m = err.Message;
                ok = false;
            }
        }
    }
}
