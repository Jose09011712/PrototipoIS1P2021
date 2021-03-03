
namespace CapaVistaParcial
{
    partial class frmInventario
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.navegador1 = new CapaVistaNavegador.Navegador();
            this.dgvDatos = new System.Windows.Forms.DataGridView();
            this.txtCodigo = new System.Windows.Forms.TextBox();
            this.txtProducto = new System.Windows.Forms.TextBox();
            this.cmbCodigoLinea = new System.Windows.Forms.ComboBox();
            this.cmbCodigoMarca = new System.Windows.Forms.ComboBox();
            this.txtExistencia = new System.Windows.Forms.TextBox();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.cmbLinea = new System.Windows.Forms.ComboBox();
            this.cmbMarca = new System.Windows.Forms.ComboBox();
            this.rdActivo = new System.Windows.Forms.RadioButton();
            this.rdInactivo = new System.Windows.Forms.RadioButton();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDatos)).BeginInit();
            this.SuspendLayout();
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.Transparent;
            this.navegador1.Location = new System.Drawing.Point(13, 13);
            this.navegador1.Margin = new System.Windows.Forms.Padding(4);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1412, 129);
            this.navegador1.TabIndex = 0;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // dgvDatos
            // 
            this.dgvDatos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDatos.Location = new System.Drawing.Point(508, 149);
            this.dgvDatos.Name = "dgvDatos";
            this.dgvDatos.ReadOnly = true;
            this.dgvDatos.RowHeadersWidth = 51;
            this.dgvDatos.RowTemplate.Height = 24;
            this.dgvDatos.Size = new System.Drawing.Size(917, 383);
            this.dgvDatos.TabIndex = 1;
            // 
            // txtCodigo
            // 
            this.txtCodigo.Location = new System.Drawing.Point(144, 149);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(210, 22);
            this.txtCodigo.TabIndex = 2;
            this.txtCodigo.Tag = "codigo_producto";
            // 
            // txtProducto
            // 
            this.txtProducto.Location = new System.Drawing.Point(144, 187);
            this.txtProducto.Multiline = true;
            this.txtProducto.Name = "txtProducto";
            this.txtProducto.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtProducto.Size = new System.Drawing.Size(346, 109);
            this.txtProducto.TabIndex = 3;
            this.txtProducto.Tag = "nombre_producto";
            // 
            // cmbCodigoLinea
            // 
            this.cmbCodigoLinea.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbCodigoLinea.FormattingEnabled = true;
            this.cmbCodigoLinea.Location = new System.Drawing.Point(1556, 290);
            this.cmbCodigoLinea.Name = "cmbCodigoLinea";
            this.cmbCodigoLinea.Size = new System.Drawing.Size(72, 24);
            this.cmbCodigoLinea.TabIndex = 4;
            this.cmbCodigoLinea.Tag = "codigo_linea";
            this.cmbCodigoLinea.SelectedIndexChanged += new System.EventHandler(this.comboBox1_SelectedIndexChanged);
            // 
            // cmbCodigoMarca
            // 
            this.cmbCodigoMarca.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbCodigoMarca.FormattingEnabled = true;
            this.cmbCodigoMarca.Location = new System.Drawing.Point(1556, 320);
            this.cmbCodigoMarca.Name = "cmbCodigoMarca";
            this.cmbCodigoMarca.Size = new System.Drawing.Size(72, 24);
            this.cmbCodigoMarca.TabIndex = 5;
            this.cmbCodigoMarca.Tag = "codigo_marca";
            this.cmbCodigoMarca.SelectedIndexChanged += new System.EventHandler(this.cmbCodigoMarca_SelectedIndexChanged);
            // 
            // txtExistencia
            // 
            this.txtExistencia.Location = new System.Drawing.Point(144, 382);
            this.txtExistencia.Name = "txtExistencia";
            this.txtExistencia.Size = new System.Drawing.Size(346, 22);
            this.txtExistencia.TabIndex = 6;
            this.txtExistencia.Tag = "existencia_producto";
            // 
            // txtEstado
            // 
            this.txtEstado.Location = new System.Drawing.Point(144, 464);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(116, 22);
            this.txtEstado.TabIndex = 7;
            this.txtEstado.Tag = "estatus_producto";
            this.txtEstado.Visible = false;
            this.txtEstado.TextChanged += new System.EventHandler(this.txtEstado_TextChanged);
            // 
            // cmbLinea
            // 
            this.cmbLinea.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbLinea.FormattingEnabled = true;
            this.cmbLinea.Location = new System.Drawing.Point(144, 313);
            this.cmbLinea.Name = "cmbLinea";
            this.cmbLinea.Size = new System.Drawing.Size(346, 24);
            this.cmbLinea.TabIndex = 8;
            this.cmbLinea.SelectedIndexChanged += new System.EventHandler(this.cmbLinea_SelectedIndexChanged);
            // 
            // cmbMarca
            // 
            this.cmbMarca.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbMarca.FormattingEnabled = true;
            this.cmbMarca.Location = new System.Drawing.Point(144, 343);
            this.cmbMarca.Name = "cmbMarca";
            this.cmbMarca.Size = new System.Drawing.Size(346, 24);
            this.cmbMarca.TabIndex = 9;
            this.cmbMarca.SelectedIndexChanged += new System.EventHandler(this.cmbMarca_SelectedIndexChanged);
            // 
            // rdActivo
            // 
            this.rdActivo.AutoSize = true;
            this.rdActivo.Location = new System.Drawing.Point(144, 425);
            this.rdActivo.Name = "rdActivo";
            this.rdActivo.Size = new System.Drawing.Size(67, 21);
            this.rdActivo.TabIndex = 10;
            this.rdActivo.TabStop = true;
            this.rdActivo.Text = "Activo";
            this.rdActivo.UseVisualStyleBackColor = true;
            this.rdActivo.CheckedChanged += new System.EventHandler(this.rdActivo_CheckedChanged);
            // 
            // rdInactivo
            // 
            this.rdInactivo.AutoSize = true;
            this.rdInactivo.Location = new System.Drawing.Point(286, 425);
            this.rdInactivo.Name = "rdInactivo";
            this.rdInactivo.Size = new System.Drawing.Size(77, 21);
            this.rdInactivo.TabIndex = 11;
            this.rdInactivo.TabStop = true;
            this.rdInactivo.Text = "Inactivo";
            this.rdInactivo.UseVisualStyleBackColor = true;
            this.rdInactivo.CheckedChanged += new System.EventHandler(this.rdInactivo_CheckedChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(22, 149);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(52, 17);
            this.label1.TabIndex = 12;
            this.label1.Text = "Codigo";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(22, 206);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(65, 17);
            this.label2.TabIndex = 13;
            this.label2.Text = "Producto";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(22, 316);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(43, 17);
            this.label3.TabIndex = 14;
            this.label3.Text = "Linea";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(22, 350);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(47, 17);
            this.label4.TabIndex = 15;
            this.label4.Text = "Marca";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(22, 387);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(71, 17);
            this.label5.TabIndex = 16;
            this.label5.Text = "Existencia";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(22, 429);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(52, 17);
            this.label6.TabIndex = 17;
            this.label6.Text = "Estado";
            // 
            // frmInventario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1445, 544);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.rdInactivo);
            this.Controls.Add(this.rdActivo);
            this.Controls.Add(this.cmbMarca);
            this.Controls.Add(this.cmbLinea);
            this.Controls.Add(this.txtEstado);
            this.Controls.Add(this.txtExistencia);
            this.Controls.Add(this.cmbCodigoMarca);
            this.Controls.Add(this.cmbCodigoLinea);
            this.Controls.Add(this.txtProducto);
            this.Controls.Add(this.txtCodigo);
            this.Controls.Add(this.dgvDatos);
            this.Controls.Add(this.navegador1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmInventario";
            this.Text = "frmInventario";
            this.Load += new System.EventHandler(this.frmInventario_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDatos)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CapaVistaNavegador.Navegador navegador1;
        private System.Windows.Forms.DataGridView dgvDatos;
        private System.Windows.Forms.TextBox txtCodigo;
        private System.Windows.Forms.TextBox txtProducto;
        private System.Windows.Forms.ComboBox cmbCodigoLinea;
        private System.Windows.Forms.ComboBox cmbCodigoMarca;
        private System.Windows.Forms.TextBox txtExistencia;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.ComboBox cmbLinea;
        private System.Windows.Forms.ComboBox cmbMarca;
        private System.Windows.Forms.RadioButton rdActivo;
        private System.Windows.Forms.RadioButton rdInactivo;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
    }
}