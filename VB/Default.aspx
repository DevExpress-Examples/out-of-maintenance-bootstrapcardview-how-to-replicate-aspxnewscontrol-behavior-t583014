<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>BootstrapCardView - How to replicate ASPxNewsControl behavior</title>
    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Style.css" rel="stylesheet" />
    <script type="text/javascript">
        var mouseX, mouseY;
        $(document).mousemove(function (e) {
            mouseX = e.pageX;
            mouseY = e.pageY;
        }).mouseover();
        function OnDetailsClick(ID) {
            NewsCallback.PerformCallback(ID);
        }
        function OnCallbackComplete(result) {
            ShowPopup(result);
        }
        function ShowPopup(result) {
            bootstrapPopup.SetContentHTML(result);
            bootstrapPopup.ShowAtPos(mouseX, mouseY);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:BootstrapPopupControl ID="BootstrapPopupControl1" ClientInstanceName="bootstrapPopup" runat="server"
                 AllowDragging="true" HeaderText="Details" Width="250"></dx:BootstrapPopupControl>
            <dx:ASPxCallback ID="ASPxCallback1" runat="server" ClientInstanceName="NewsCallback" OnCallback="ASPxCallback1_Callback">
                <ClientSideEvents CallbackComplete="function(s, e) { OnCallbackComplete(e.result); }" />
            </dx:ASPxCallback>
            <dx:BootstrapCardView ID="BootstrapCardView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1" Width="450">
                <Columns>
                    <dx:BootstrapCardViewImageColumn FieldName="ImageUrl" Width="100px">
                        <PropertiesImage ImageUrlFormatString="{0}" ImageHeight="75px" />
                    </dx:BootstrapCardViewImageColumn>
                    <dx:BootstrapCardViewTextColumn FieldName="HeaderText" VisibleIndex="0"></dx:BootstrapCardViewTextColumn>
                    <dx:BootstrapCardViewTextColumn FieldName="Date" VisibleIndex="1"></dx:BootstrapCardViewTextColumn>
                    <dx:BootstrapCardViewTextColumn FieldName="Text" VisibleIndex="2"></dx:BootstrapCardViewTextColumn>
                    <dx:BootstrapCardViewTextColumn FieldName="NavigateUrl" VisibleIndex="3"></dx:BootstrapCardViewTextColumn>
                    <dx:BootstrapCardViewTextColumn FieldName="ID" VisibleIndex="4" Visible="false"></dx:BootstrapCardViewTextColumn>
                </Columns>
                <Templates>
                    <Card>
                        <div class="mycard">
                            <illustration>
                                <div>
                                    <dx:BootstrapImage ID="Photo1" runat="server" ImageUrl='<%#Eval("ImageUrl")%>'></dx:BootstrapImage>
                                </div>
                            </illustration>
                            <article>
                                <h4><%#Eval("HeaderText")%></h4>
                                <p class="text-muted"><%#Eval("Date")%></p>
                                <p><%#(Eval("Text")).ToString().Substring(0, 100) & "..."%></p>
                                <p><a href="javascript:OnDetailsClick(<%#Eval("ID")%>)">Details</a></p>
                            </article>
                        </div>
                    </Card>
                </Templates>
                <SettingsPager ItemsPerPage="3"></SettingsPager>
                <SettingsLayout CardColSpanLg="12" CardColSpanMd="12" CardColSpanSm="12" CardColSpanXs="12" />
            </dx:BootstrapCardView>
            <asp:XmlDataSource runat="server" ID="XmlDataSource1" DataFile="~/App_Data/RSS.xml" TransformFile="~/App_Data/RSS.xslt" XPath="//item"></asp:XmlDataSource>
        </div>
    </form>
</body>
</html>