﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Settings.ascx.cs" Inherits="Christoc.Modules.dnn_groupdocs_viewer_java.Settings" %>
<%@ Register TagName="label" TagPrefix="dnn" Src="~/controls/labelcontrol.ascx" %>


<h2 id="dnnSitePanel-BasicSettings" class="dnnFormSectionHead"><a href="" class="dnnSectionExpanded"><%=LocalizeString("BasicSettings")%></a></h2>
<fieldset>
    <div class="dnnFormItem">
        <dnn:Label ID="lblUrl" Text="Server Url" runat="server" /> 
        <asp:TextBox ID="txtUrl" runat="server" />
    </div>
    <div class="dnnFormItem">
        <dnn:Label ID="lblWidth" Text="Width" runat="server" /> 
        <asp:TextBox ID="txtWidth" runat="server" Text="800px" />
    </div>
    <div class="dnnFormItem">
        <dnn:Label ID="lblHeight" Text="Height" runat="server" /> 
        <asp:TextBox ID="txtHeight" runat="server" Text="600px" />
    </div>
    <div class="dnnFormItem">
        <dnn:Label ID="lblDefaultFileName" Text="Default file name" runat="server" /> 
        <asp:TextBox ID="txtDefaultFileName" runat="server" />
    </div>
    <div class="dnnFormItem">
        <dnn:Label ID="lblUseHttpHandlers" Text="Use Http Handlers" runat="server" />
        <asp:CheckBox runat="server" ID="ckbUseHttpHandlers" />
    </div>
</fieldset>