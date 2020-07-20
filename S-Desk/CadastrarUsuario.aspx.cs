using System;
using System.Web.Services.Description;
using System.Web.UI;
using System.Windows;

namespace S_Desk
{
    public partial class CadastrarUsuario : System.Web.UI.Page
    {
        private Database db = new Database();
        private Usuario usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindSelectDepto();
                this.BindSelectGrupo();
            }
        }
        private void BindSelectGrupo()
        {
    
            sGrupo.DataSource = db.returnGrupo();
            sGrupo.DataTextField = "grpnome";
            sGrupo.DataValueField = "grpnome";
            sGrupo.DataBind();
        }

        private void BindSelectDepto()
        {
            sDepto.DataSource = db.returnDepto();
            sDepto.DataTextField = "depnome";
            sDepto.DataValueField = "depnome";
            sDepto.DataBind();
        }

        protected void btCadastrar_Click(object sender, EventArgs e)
        {
            String matricula, nome, email, senha, cargo, depto, grupo;

            matricula = txtmat.Value;
            nome = txtnome.Value;
            email = txtemail.Value;
            senha = txtsenha.Value;
            cargo = txtcargo.Value;
            depto = sDepto.Value;
            grupo = sGrupo.Value;

            usuario = new Usuario(matricula,nome,email,senha,cargo,depto,grupo);
            db.cadastrarUsuario(usuario);
            mostrarMensagem();
        }
        protected void mostrarMensagem()
        {
                string script = "alert(\"Dados cadastrados com sucesso.\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                txtmat.Value = String.Empty;
                txtnome.Value = String.Empty;
                txtemail.Value = String.Empty;
                txtsenha.Value = String.Empty;
                txtcargo.Value = String.Empty;
        }
    }
}