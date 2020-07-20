using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace S_Desk
{
    public class Usuario
    {
        private String matricula;
        private String nome;
        private String email;
        private String senha;
        private String cargo;
        private String depto;
        private String grupo;

        public Usuario(string matricula, string nome, string email, string senha, string cargo, string depto, string grupo)
        {
            this.matricula = matricula;
            this.nome = nome;
            this.email = email;
            this.senha = senha;
            this.cargo = cargo;
            this.depto = depto;
            this.grupo = grupo;
        }

        public string Matricula { get => matricula; set => matricula = value; }
        public string Nome { get => nome; set => nome = value; }
        public string Email { get => email; set => email = value; }
        public string Senha { get => senha; set => senha = value; }
        public string Cargo { get => cargo; set => cargo = value; }
        public string Depto { get => depto; set => depto = value; }
        public string Grupo { get => grupo; set => grupo = value; }
    }
}