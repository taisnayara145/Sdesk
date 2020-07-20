using System;

namespace S_Desk
{
    public partial class Login : System.Web.UI.Page
    {
        private Database db = new Database();
        String matricula, senha;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btEntrar_Click(object sender, EventArgs e)
        {
            matricula = txtmat.Value;
            senha = txtsenha.Value;
            db.efetuarLogin(matricula, senha);
        }
    }
}

