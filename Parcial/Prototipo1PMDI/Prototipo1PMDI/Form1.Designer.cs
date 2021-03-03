
namespace Prototipo1PMDI
{
    partial class Form1
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.inicioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cerrarSesionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.catalogosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.lineaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.marcaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.procesosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.invetariosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.informesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.herramientasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ayudasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.txtUsuario = new System.Windows.Forms.TextBox();
            this.seguridadToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cambioDeContraseñaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mantenimientoDeUsuariosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mantenimientoDeAplicacionesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.asignacionPerfilYAplicacionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mantenimientoModuloToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.perflToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mantenimientoPerfilToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.asignacionDeAplicacionesAPerfilToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.inicioToolStripMenuItem,
            this.catalogosToolStripMenuItem,
            this.procesosToolStripMenuItem,
            this.informesToolStripMenuItem,
            this.herramientasToolStripMenuItem,
            this.ayudasToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1392, 28);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // inicioToolStripMenuItem
            // 
            this.inicioToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cerrarSesionToolStripMenuItem});
            this.inicioToolStripMenuItem.Name = "inicioToolStripMenuItem";
            this.inicioToolStripMenuItem.Size = new System.Drawing.Size(56, 24);
            this.inicioToolStripMenuItem.Text = "Abrir";
            // 
            // cerrarSesionToolStripMenuItem
            // 
            this.cerrarSesionToolStripMenuItem.Name = "cerrarSesionToolStripMenuItem";
            this.cerrarSesionToolStripMenuItem.Size = new System.Drawing.Size(179, 26);
            this.cerrarSesionToolStripMenuItem.Text = "Cerrar Sesion";
            this.cerrarSesionToolStripMenuItem.Click += new System.EventHandler(this.cerrarSesionToolStripMenuItem_Click);
            // 
            // catalogosToolStripMenuItem
            // 
            this.catalogosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.lineaToolStripMenuItem,
            this.marcaToolStripMenuItem});
            this.catalogosToolStripMenuItem.Name = "catalogosToolStripMenuItem";
            this.catalogosToolStripMenuItem.Size = new System.Drawing.Size(90, 24);
            this.catalogosToolStripMenuItem.Text = "Catalogos";
            // 
            // lineaToolStripMenuItem
            // 
            this.lineaToolStripMenuItem.Name = "lineaToolStripMenuItem";
            this.lineaToolStripMenuItem.Size = new System.Drawing.Size(133, 26);
            this.lineaToolStripMenuItem.Text = "Linea";
            this.lineaToolStripMenuItem.Click += new System.EventHandler(this.lineaToolStripMenuItem_Click);
            // 
            // marcaToolStripMenuItem
            // 
            this.marcaToolStripMenuItem.Name = "marcaToolStripMenuItem";
            this.marcaToolStripMenuItem.Size = new System.Drawing.Size(133, 26);
            this.marcaToolStripMenuItem.Text = "Marca";
            this.marcaToolStripMenuItem.Click += new System.EventHandler(this.marcaToolStripMenuItem_Click);
            // 
            // procesosToolStripMenuItem
            // 
            this.procesosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.invetariosToolStripMenuItem});
            this.procesosToolStripMenuItem.Name = "procesosToolStripMenuItem";
            this.procesosToolStripMenuItem.Size = new System.Drawing.Size(81, 24);
            this.procesosToolStripMenuItem.Text = "Procesos";
            // 
            // invetariosToolStripMenuItem
            // 
            this.invetariosToolStripMenuItem.Name = "invetariosToolStripMenuItem";
            this.invetariosToolStripMenuItem.Size = new System.Drawing.Size(156, 26);
            this.invetariosToolStripMenuItem.Text = "Invetarios";
            this.invetariosToolStripMenuItem.Click += new System.EventHandler(this.invetariosToolStripMenuItem_Click);
            // 
            // informesToolStripMenuItem
            // 
            this.informesToolStripMenuItem.Name = "informesToolStripMenuItem";
            this.informesToolStripMenuItem.Size = new System.Drawing.Size(81, 24);
            this.informesToolStripMenuItem.Text = "Informes";
            // 
            // herramientasToolStripMenuItem
            // 
            this.herramientasToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.seguridadToolStripMenuItem});
            this.herramientasToolStripMenuItem.Name = "herramientasToolStripMenuItem";
            this.herramientasToolStripMenuItem.Size = new System.Drawing.Size(112, 24);
            this.herramientasToolStripMenuItem.Text = "Herramientas";
            // 
            // ayudasToolStripMenuItem
            // 
            this.ayudasToolStripMenuItem.Name = "ayudasToolStripMenuItem";
            this.ayudasToolStripMenuItem.Size = new System.Drawing.Size(71, 24);
            this.ayudasToolStripMenuItem.Text = "Ayudas";
            // 
            // txtUsuario
            // 
            this.txtUsuario.Location = new System.Drawing.Point(12, 677);
            this.txtUsuario.Name = "txtUsuario";
            this.txtUsuario.Size = new System.Drawing.Size(580, 22);
            this.txtUsuario.TabIndex = 3;
            this.txtUsuario.Visible = false;
            // 
            // seguridadToolStripMenuItem
            // 
            this.seguridadToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cambioDeContraseñaToolStripMenuItem,
            this.mantenimientoDeUsuariosToolStripMenuItem,
            this.mantenimientoDeAplicacionesToolStripMenuItem,
            this.asignacionPerfilYAplicacionToolStripMenuItem,
            this.mantenimientoModuloToolStripMenuItem,
            this.perflToolStripMenuItem});
            this.seguridadToolStripMenuItem.Name = "seguridadToolStripMenuItem";
            this.seguridadToolStripMenuItem.Size = new System.Drawing.Size(224, 26);
            this.seguridadToolStripMenuItem.Text = "Seguridad";
            // 
            // cambioDeContraseñaToolStripMenuItem
            // 
            this.cambioDeContraseñaToolStripMenuItem.Name = "cambioDeContraseñaToolStripMenuItem";
            this.cambioDeContraseñaToolStripMenuItem.Size = new System.Drawing.Size(300, 26);
            this.cambioDeContraseñaToolStripMenuItem.Text = "Cambio de contraseña";
            this.cambioDeContraseñaToolStripMenuItem.Click += new System.EventHandler(this.cambioDeContraseñaToolStripMenuItem_Click);
            // 
            // mantenimientoDeUsuariosToolStripMenuItem
            // 
            this.mantenimientoDeUsuariosToolStripMenuItem.Name = "mantenimientoDeUsuariosToolStripMenuItem";
            this.mantenimientoDeUsuariosToolStripMenuItem.Size = new System.Drawing.Size(300, 26);
            this.mantenimientoDeUsuariosToolStripMenuItem.Text = "Mantenimiento de usuarios";
            this.mantenimientoDeUsuariosToolStripMenuItem.Click += new System.EventHandler(this.mantenimientoDeUsuariosToolStripMenuItem_Click);
            // 
            // mantenimientoDeAplicacionesToolStripMenuItem
            // 
            this.mantenimientoDeAplicacionesToolStripMenuItem.Name = "mantenimientoDeAplicacionesToolStripMenuItem";
            this.mantenimientoDeAplicacionesToolStripMenuItem.Size = new System.Drawing.Size(300, 26);
            this.mantenimientoDeAplicacionesToolStripMenuItem.Text = "Mantenimiento de aplicaciones";
            this.mantenimientoDeAplicacionesToolStripMenuItem.Click += new System.EventHandler(this.mantenimientoDeAplicacionesToolStripMenuItem_Click);
            // 
            // asignacionPerfilYAplicacionToolStripMenuItem
            // 
            this.asignacionPerfilYAplicacionToolStripMenuItem.Name = "asignacionPerfilYAplicacionToolStripMenuItem";
            this.asignacionPerfilYAplicacionToolStripMenuItem.Size = new System.Drawing.Size(300, 26);
            this.asignacionPerfilYAplicacionToolStripMenuItem.Text = "Asignacion perfil y aplicacion";
            this.asignacionPerfilYAplicacionToolStripMenuItem.Click += new System.EventHandler(this.asignacionPerfilYAplicacionToolStripMenuItem_Click);
            // 
            // mantenimientoModuloToolStripMenuItem
            // 
            this.mantenimientoModuloToolStripMenuItem.Name = "mantenimientoModuloToolStripMenuItem";
            this.mantenimientoModuloToolStripMenuItem.Size = new System.Drawing.Size(300, 26);
            this.mantenimientoModuloToolStripMenuItem.Text = "Mantenimiento Modulo";
            this.mantenimientoModuloToolStripMenuItem.Click += new System.EventHandler(this.mantenimientoModuloToolStripMenuItem_Click);
            // 
            // perflToolStripMenuItem
            // 
            this.perflToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mantenimientoPerfilToolStripMenuItem,
            this.asignacionDeAplicacionesAPerfilToolStripMenuItem});
            this.perflToolStripMenuItem.Name = "perflToolStripMenuItem";
            this.perflToolStripMenuItem.Size = new System.Drawing.Size(300, 26);
            this.perflToolStripMenuItem.Text = "Perfl";
            // 
            // mantenimientoPerfilToolStripMenuItem
            // 
            this.mantenimientoPerfilToolStripMenuItem.Name = "mantenimientoPerfilToolStripMenuItem";
            this.mantenimientoPerfilToolStripMenuItem.Size = new System.Drawing.Size(323, 26);
            this.mantenimientoPerfilToolStripMenuItem.Text = "Mantenimiento Perfil";
            this.mantenimientoPerfilToolStripMenuItem.Click += new System.EventHandler(this.mantenimientoPerfilToolStripMenuItem_Click);
            // 
            // asignacionDeAplicacionesAPerfilToolStripMenuItem
            // 
            this.asignacionDeAplicacionesAPerfilToolStripMenuItem.Name = "asignacionDeAplicacionesAPerfilToolStripMenuItem";
            this.asignacionDeAplicacionesAPerfilToolStripMenuItem.Size = new System.Drawing.Size(323, 26);
            this.asignacionDeAplicacionesAPerfilToolStripMenuItem.Text = "Asignacion de aplicaciones a perfil";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1392, 727);
            this.Controls.Add(this.txtUsuario);
            this.Controls.Add(this.menuStrip1);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Form1";
            this.Text = "0901-17-12 José López";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.Form1_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem inicioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem catalogosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem procesosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem informesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem herramientasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ayudasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem lineaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem marcaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem invetariosToolStripMenuItem;
        private System.Windows.Forms.TextBox txtUsuario;
        private System.Windows.Forms.ToolStripMenuItem cerrarSesionToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem seguridadToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cambioDeContraseñaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mantenimientoDeUsuariosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mantenimientoDeAplicacionesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem asignacionPerfilYAplicacionToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mantenimientoModuloToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem perflToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mantenimientoPerfilToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem asignacionDeAplicacionesAPerfilToolStripMenuItem;
    }
}

