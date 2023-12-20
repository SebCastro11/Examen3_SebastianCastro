<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Encuesta.aspx.cs" Inherits="Examen3_SebastianCastro.Encuesta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="EncuestaCSS.css" rel="stylesheet" />
    <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Encuesta</h3>
                        <p>Ingrese los datos requeridos.</p>
                        <form id="encuestaForm" class="requires-validation" novalidate>
                            <div class="col-md-12">
                                <input class="form-control" type="text" name="nombre" placeholder="Nombre" required>
                                <div class="valid-feedback">Nombre invalido</div>
                                <div class="invalid-feedback">No puede estar en blanco!</div>
                            </div>

                            <div class="col-md-12">
                                <input class="form-control" type="email" name="correo" placeholder="Correo Electronico" required>
                                <div class="valid-feedback">Email es invalido!</div>
                                <div class="invalid-feedback">No puede estar en blanco!</div>
                            </div>

                            <div class="col-md-12">
                                <select class="form-select mt-3" name="partido" required>
                                    <option selected disabled value="">Seleccione partido politico</option>
                                    <option value="PLN">PLN</option>
                                    <option value="PUSC">PUSC</option>
                                    <option value="PAC">PAC</option>
                                </select>
                                <div class="valid-feedback">Selecciono un partido politico</div>
                                <div class="invalid-feedback">Por favor seleccione un partido politico</div>
                            </div>
                            <br />

                            <div class="col-md-12">
                                <label for="fechaNacimiento">Fecha de Nacimiento</label>
                                <input class="form-control" type="date" name="fechaNacimiento" required>
                                <div class="valid-feedback">Fecha de Nacimiento válida</div>
                                <div class="invalid-feedback">Fecha de Nacimiento válida</div>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="confirmCheck" required>
                                <label class="form-check-label">Todos los datos son correctos</label>
                                <div class="invalid-feedback">Por favor confirme los datos son ingresados correctamente</div>
                            </div>

                            <div class="form-button mt-3">
                                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary" OnClick="btnAgregar_Click" />
                            </div>

                            <asp:Label ID="lblMensaje" runat="server" Visible="false" ForeColor="Red"></asp:Label>


                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
