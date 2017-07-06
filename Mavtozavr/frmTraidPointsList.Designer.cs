namespace Mavtozavr
{
    partial class frmTraidPointsList
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
            this.components = new System.ComponentModel.Container();
            this.dgvTraidPoints = new System.Windows.Forms.DataGridView();
            this.traidPointsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.columnNum = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.orgIdDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.kppDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cityIdDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.addressDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.traidPointTypeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.egaisDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.uTMVersionDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.gOSTDateDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pKIDateDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.syncTimeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTraidPoints)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.traidPointsBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvTraidPoints
            // 
            this.dgvTraidPoints.AutoGenerateColumns = false;
            this.dgvTraidPoints.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTraidPoints.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.columnNum,
            this.orgIdDataGridViewTextBoxColumn,
            this.kppDataGridViewTextBoxColumn,
            this.cityIdDataGridViewTextBoxColumn,
            this.addressDataGridViewTextBoxColumn,
            this.traidPointTypeDataGridViewTextBoxColumn,
            this.egaisDataGridViewTextBoxColumn,
            this.uTMVersionDataGridViewTextBoxColumn,
            this.gOSTDateDataGridViewTextBoxColumn,
            this.pKIDateDataGridViewTextBoxColumn,
            this.syncTimeDataGridViewTextBoxColumn});
            this.dgvTraidPoints.DataSource = this.traidPointsBindingSource;
            this.dgvTraidPoints.Location = new System.Drawing.Point(12, 37);
            this.dgvTraidPoints.Name = "dgvTraidPoints";
            this.dgvTraidPoints.Size = new System.Drawing.Size(1364, 522);
            this.dgvTraidPoints.TabIndex = 0;
            // 
            // traidPointsBindingSource
            // 
            this.traidPointsBindingSource.DataSource = typeof(Mavtozavr.TraidPoints);
            // 
            // columnNum
            // 
            this.columnNum.HeaderText = "№ п/п";
            this.columnNum.Name = "columnNum";
            // 
            // orgIdDataGridViewTextBoxColumn
            // 
            this.orgIdDataGridViewTextBoxColumn.DataPropertyName = "OrgId";
            this.orgIdDataGridViewTextBoxColumn.HeaderText = "ООО";
            this.orgIdDataGridViewTextBoxColumn.Name = "orgIdDataGridViewTextBoxColumn";
            // 
            // kppDataGridViewTextBoxColumn
            // 
            this.kppDataGridViewTextBoxColumn.DataPropertyName = "Kpp";
            this.kppDataGridViewTextBoxColumn.HeaderText = "КПП";
            this.kppDataGridViewTextBoxColumn.Name = "kppDataGridViewTextBoxColumn";
            // 
            // cityIdDataGridViewTextBoxColumn
            // 
            this.cityIdDataGridViewTextBoxColumn.DataPropertyName = "CityId";
            this.cityIdDataGridViewTextBoxColumn.HeaderText = "Город";
            this.cityIdDataGridViewTextBoxColumn.Name = "cityIdDataGridViewTextBoxColumn";
            // 
            // addressDataGridViewTextBoxColumn
            // 
            this.addressDataGridViewTextBoxColumn.DataPropertyName = "Address";
            this.addressDataGridViewTextBoxColumn.HeaderText = "Адрес";
            this.addressDataGridViewTextBoxColumn.Name = "addressDataGridViewTextBoxColumn";
            // 
            // traidPointTypeDataGridViewTextBoxColumn
            // 
            this.traidPointTypeDataGridViewTextBoxColumn.DataPropertyName = "TraidPointType";
            this.traidPointTypeDataGridViewTextBoxColumn.HeaderText = "Тип ТТ";
            this.traidPointTypeDataGridViewTextBoxColumn.Name = "traidPointTypeDataGridViewTextBoxColumn";
            // 
            // egaisDataGridViewTextBoxColumn
            // 
            this.egaisDataGridViewTextBoxColumn.DataPropertyName = "Egais";
            this.egaisDataGridViewTextBoxColumn.HeaderText = "ЕГАИС";
            this.egaisDataGridViewTextBoxColumn.Name = "egaisDataGridViewTextBoxColumn";
            // 
            // uTMVersionDataGridViewTextBoxColumn
            // 
            this.uTMVersionDataGridViewTextBoxColumn.DataPropertyName = "UTMVersion";
            this.uTMVersionDataGridViewTextBoxColumn.HeaderText = "УТМ версия";
            this.uTMVersionDataGridViewTextBoxColumn.Name = "uTMVersionDataGridViewTextBoxColumn";
            // 
            // gOSTDateDataGridViewTextBoxColumn
            // 
            this.gOSTDateDataGridViewTextBoxColumn.DataPropertyName = "GOSTDate";
            this.gOSTDateDataGridViewTextBoxColumn.HeaderText = "дата ГОСТ";
            this.gOSTDateDataGridViewTextBoxColumn.Name = "gOSTDateDataGridViewTextBoxColumn";
            // 
            // pKIDateDataGridViewTextBoxColumn
            // 
            this.pKIDateDataGridViewTextBoxColumn.DataPropertyName = "PKIDate";
            this.pKIDateDataGridViewTextBoxColumn.HeaderText = "дата PKI";
            this.pKIDateDataGridViewTextBoxColumn.Name = "pKIDateDataGridViewTextBoxColumn";
            // 
            // syncTimeDataGridViewTextBoxColumn
            // 
            this.syncTimeDataGridViewTextBoxColumn.DataPropertyName = "SyncTime";
            this.syncTimeDataGridViewTextBoxColumn.HeaderText = "Дата синхронизация";
            this.syncTimeDataGridViewTextBoxColumn.Name = "syncTimeDataGridViewTextBoxColumn";
            // 
            // frmTraidPointsList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1400, 781);
            this.Controls.Add(this.dgvTraidPoints);
            this.Name = "frmTraidPointsList";
            this.Text = "frmTraidPointsList";
            ((System.ComponentModel.ISupportInitialize)(this.dgvTraidPoints)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.traidPointsBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvTraidPoints;
        private System.Windows.Forms.BindingSource traidPointsBindingSource;
        private System.Windows.Forms.DataGridViewTextBoxColumn columnNum;
        private System.Windows.Forms.DataGridViewTextBoxColumn orgIdDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn kppDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn cityIdDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn addressDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn traidPointTypeDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn egaisDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn uTMVersionDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn gOSTDateDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn pKIDateDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn syncTimeDataGridViewTextBoxColumn;
    }
}