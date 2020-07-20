using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Windows;

namespace S_Desk
{
    public class Database
    {
        private string strcon = ConfigurationManager.ConnectionStrings["sdeskConnectionString"].ConnectionString, str;
        private MySqlCommand com;
        private object obj;
        
        public void efetuarLogin(string matricula, string senha)
        {
            MySqlConnection con = new MySqlConnection(strcon);
            con.Open();
            str = "select count(*) from usuarios where usumatricula= @Matricula and ususenha = @Senha";
            com = new MySqlCommand(str, con);
            com.CommandType = CommandType.Text;
            com.Parameters.AddWithValue("@Matricula", matricula);
            com.Parameters.AddWithValue("@Senha", senha);
            obj = com.ExecuteScalar();
           
            try
            {
                if (Convert.ToInt32(obj) != 0)
                {
                    MessageBox.Show("Bem Vindo!");
                }
                else
                {
                    MessageBox.Show("Usuário ou senha incorretos");
                }
            }catch(Exception ex)
            {
                MessageBox.Show("Erro"+ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        public void cadastrarUsuario(Usuario usuario)
        {
            using (MySqlConnection con = new MySqlConnection(strcon))
            {
                using (MySqlCommand cmd = new MySqlCommand("INSERT INTO usuarios VALUES (@matricula,@nome,@email,@senha,@cargo,@depto,@grupo)"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Parameters.AddWithValue("@matricula",usuario.Matricula);
                        cmd.Parameters.AddWithValue("@nome",usuario.Nome);
                        cmd.Parameters.AddWithValue("@email", usuario.Email);
                        cmd.Parameters.AddWithValue("@senha", usuario.Senha) ;
                        cmd.Parameters.AddWithValue("@cargo", usuario.Cargo);
                        cmd.Parameters.AddWithValue("@depto", usuario.Depto);
                        cmd.Parameters.AddWithValue("@grupo", usuario.Grupo);
                        cmd.Connection = con;
                      
                        try
                        {
                            con.Open();
                            cmd.ExecuteNonQuery();
                        }
                        catch (MySqlException ex)
                        {
                            throw new ApplicationException(ex.ToString());
                        }
                        finally
                        {
                            //fechar conexão cmo banco de dados
                            con.Close();
                        }
                    }
                }
            }
        }

        public DataSet returnDepto()
        {
            DataSet ds = new DataSet();
            using (MySqlConnection con = new MySqlConnection(strcon))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT depnome FROM depto"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        try
                        {
                            cmd.Connection = con; con.Open();
                            sda.SelectCommand = cmd;
                            sda.Fill(ds);
                           
                        }
                        catch (Exception ex)
                        {

                        }
                        finally
                        {
                            con.Close();
                        }
                    }
                }
            }
            return ds;
        }
        public DataSet returnGrupo()
        {
            DataSet ds = new DataSet();
            using (MySqlConnection con = new MySqlConnection(strcon))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT grpnome FROM grupos"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        try
                        {
                            cmd.Connection = con; 
                            con.Open();
                           
                            sda.SelectCommand = cmd;
                            sda.Fill(ds);

                        }
                        catch (Exception ex)
                        {

                        }
                        finally
                        {
                            con.Close();
                        }
                    }
                }
            }
            return ds;
        }
    }
}