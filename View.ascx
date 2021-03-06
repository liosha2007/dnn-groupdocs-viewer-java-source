﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="View.ascx.cs" Inherits="Christoc.Modules.dnn_groupdocs_viewer_java.View" %>

<asp:HiddenField runat="server" ID="Url" />
<asp:HiddenField runat="server" ID="Width" Value="800" />
<asp:HiddenField runat="server" ID="Height" Value="600" />
<asp:HiddenField runat="server" ID="DefaultFileName" />
<asp:HiddenField runat="server" ID="UseHttpHandlers" Value="true" />
<!--
<script type="text/javascript" src="<%= Url.Value %>/assets/js/libs/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="<%= Url.Value %>/assets/js/libs/jquery-ui-1.10.3.min.js"></script>
-->
<script type="text/javascript" src="<%= Url.Value %>/assets/js/libs/knockout-2.2.1.js"></script>
<script type="text/javascript" src="<%= Url.Value %>/assets/js/libs/turn.min.js"></script>
<script type="text/javascript" src="<%= Url.Value %>/assets/js/libs/modernizr.2.6.2.Transform2d.min.js"></script>
<script type="text/javascript">
    if (!window.Modernizr.csstransforms) {
        var scriptLoad = document.createElement('script');
        scriptLoad.setAttribute("type", "text/javascript");
        scriptLoad.setAttribute("src", '<%= Url.Value %>/assets/js/libs/turn.html4.min.js');
        document.getElementsByTagName("head")[0].appendChild(scriptLoad);
    }
</script>
<script type="text/javascript" src="<%= Url.Value %>/assets/js/installableViewer.min.js"></script>
<script type="text/javascript">
    $.ui.groupdocsViewer.prototype.applicationPath = '<%= Url.Value %>/';
</script>
<script type="text/javascript">
    $.ui.groupdocsViewer.prototype.useHttpHandlers = <%= UseHttpHandlers.Value.ToString().ToLower() %>;
</script>
<script type="text/javascript" src="<%= Url.Value %>/assets/js/GroupdocsViewer.all.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%= Url.Value %>/assets/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="<%= Url.Value %>/assets/css/GroupdocsViewer.all.min.css">
<link rel="stylesheet" type="text/css" href="<%= Url.Value %>/assets/css/jquery-ui-1.10.3.dialog.min.css">
<style type="text/css">
    #java_groupdocs_viewer p 
    {
        color: #737373;
    }
</style>
<div id="java_groupdocs_viewer" style="width: <%= Width.Value %>; height: <%= Height.Value %>; overflow: hidden; position: relative;
    margin-bottom: 20px; background-color: gray; border: 1px solid #ccc;">
</div>
<script>
    $(function () {
        var localizedStrings = null;
        var thumbsImageBase64Encoded = null;
        $('#java_groupdocs_viewer').groupdocsViewer({
            filePath: '<%= DefaultFileName.Value %>',
            docViewerId: 'doc_viewer1',
            quality: 100,
            showHeader: true,
            showThumbnails: true,
            openThumbnails: true,
            initialZoom: 100,
            zoomToFitWidth: true,
            zoomToFitHeight: false,
            backgroundColor: '',
            showFolderBrowser: true,
            showPrint: true,
            showDownload: true,
            showZoom: true,
            showPaging: true,
            showViewerStyleControl: true,
            showSearch: true,
            preloadPagesCount: 0,
            viewerStyle: 1,
            supportTextSelection: true,
            localizedStrings: localizedStrings,
            thumbsImageBase64Encoded: thumbsImageBase64Encoded,
            showDownloadErrorsInPopup: true
        });
    });
</script>
