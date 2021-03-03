using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaModeloParcial;
namespace CapaControladorParcial
{
    public class ClsControlador
    {
        ClsSentencias Sn = new ClsSentencias();
        //Codigo Reutilizado de proyectos anteriores
    
        public string[] funcItems(string Tabla,string estado, string Campo)
        {
            string[] Items = Sn.funcLlenarCmb(Tabla,estado,Campo);
            return Items;
        }

    }
}
