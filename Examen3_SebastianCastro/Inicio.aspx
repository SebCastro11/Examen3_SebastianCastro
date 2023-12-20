<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Examen3_SebastianCastro.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="EncuestaCSS.css" rel="stylesheet" />

    <div class="form-button mt-3">
        <asp:Button ID="btnAgregar" runat="server" Text="Reporte de encuestas" CssClass="btn btn-primary" OnClick="btnAgregar_Click" />
    </div>

    <br />

    <asp:GridView ID="GridViewEncuestas" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered">
        <Columns>

            <asp:BoundField DataField="NumeroEncuesta" HeaderText="Número de Encuesta" SortExpression="NumeroEncuesta" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
            <asp:BoundField DataField="CorreoElectronico" HeaderText="Correo Electrónico" SortExpression="CorreoElectronico" />
            <asp:BoundField DataField="PartidoPolitico" HeaderText="Partido Político" SortExpression="PartidoPolitico" />

        </Columns>
    </asp:GridView>

    <br />
    <br />

    <div class="card container text-center" style="width: 18rem;">
        <img src="Images/Query.PNG" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">Query</h5>
            <p class="card-text">Query realizado para la base de datos que se utiliza en este proyecto.</p>
        </div>
    </div>

    <br />
    <br />

    <div class="card container text-center" style="width: 18rem;">
        <img src="Images/Goku.jpg" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">Firma</h5>
            <p class="card-text">Examen 3 realizado por Sebastian Castro Nuñez.</p>
        </div>
    </div>

</asp:Content>
