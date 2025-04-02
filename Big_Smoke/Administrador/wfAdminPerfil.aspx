<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/mpAdmin.Master" AutoEventWireup="true" CodeBehind="wfAdminPerfil.aspx.cs" Inherits="Big_Smoke.Administrador.Formulario_web14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="br-mainpanel">
      <div class="br-pageheader pd-y-15 pd-l-20">
        <nav class="breadcrumb pd-0 mg-0 tx-12">
          <a class="breadcrumb-item" href="#">Perfil</a>
        </nav>
      </div><!-- br-pageheader -->
      <div class="pd-x-20 pd-sm-x-30 pd-t-20 pd-sm-t-30">
        <h4 class="tx-gray-800 mg-b-5">Perfil</h4>
        <p class="mg-b-0">Estas En La Pantalla de Perfil</p>
      </div>

      <div class="br-pagebody">
        
        <div class="form-layout form-layout-1">
            <div class="row mg-b-25">
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label">Nombres: <span class="tx-danger">*</span></label>
                  <asp:TextBox class="form-control" name="usu_nom" id="usu_nom"  placeholder="Introduce tu nombre" runat="server"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label">Apellido Paterno: <span class="tx-danger">*</span></label>
                  <asp:TextBox class="form-control" id="usu_apep"  placeholder="Introduce tu apellido paterno" runat="server"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label">Apellido Materno: <span class="tx-danger">*</span></label>
                  <asp:TextBox class="form-control" name="usu_apem" id="usu_apem"  placeholder="Introduce tu apellido materno" runat="server"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label">Email: <span class="tx-danger">*</span></label>
                  <asp:TextBox class="form-control"  name="usu_email" id="usu_email" placeholder="Introduce tu email" runat="server"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-5">
                <div class="form-group">
                  <label class="form-control-label">Contraseña: <span class="tx-danger">*</span></label>
                  <asp:TextBox class="form-control" name="usu_contr" id="usu_contr" placeholder="Introduce tu contraseña" runat="server"></asp:TextBox>
                </div>
              </div><!-- col-4 -->
              <div class="col-lg-3">
                <div class="form-group mg-b-10-force">
                  <label class="form-control-label">Telefono: <span class="tx-danger">*</span></label>
                  <asp:TextBox class="form-control" name="usu_tel" id="usu_tel" placeholder="Introduce tu telefono" runat="server"></asp:TextBox>
                </div>
              </div><!-- col-8 -->
            </div><!-- row -->

            <div class="form-layout-footer">
                <asp:Button class="btn btn-success m-1" Text="Guardar" id="btnActualizar" OnClick="btnActualizar_Click" runat="server"/>
                <asp:Button class="btn btn-danger m-1" Text="Cancel" id="btnCancelar" OnClick="btnCancelar_Click" runat="server"/>
            </div><!-- form-layout-footer -->
          </div>

      </div><!-- br-pagebody -->
    </div><!-- br-mainpanel -->

    <script>
        function GuardadoExi() {
            Swal.fire({
                title: "Cambios Guardados!",
                text: "Los Cambios Fueron Guardados Correctamente",
                icon: "success"
            });
        }

    </script>
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</asp:Content>
