<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128548953/17.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T583014)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [RSS.xml](./CS/App_Data/RSS.xml) (VB: [RSS.xml](./VB/App_Data/RSS.xml))
* [RSS.xslt](./CS/App_Data/RSS.xslt) (VB: [RSS.xslt](./VB/App_Data/RSS.xslt))
* [Style.css](./CS/Content/Style.css)
* **[Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))**
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# BootstrapCardView - How to replicate ASPxNewsControl behavior
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t583014/)**
<!-- run online end -->


<p>This example demonstrates how to create a <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxNewsControl.class">ASPxNewsControl</a>-like layout and functionality using the <a href="https://documentation.devexpress.com/AspNetBootstrap/119629/Card-View">BootstrapCardView</a> control.<br>For this, create a <a href="https://demos.devexpress.com/Bootstrap/CardView/Templates.aspx">card template</a>. This template renders images, news texts, news dates, and news headers. Use Style.css for styling a template layout. Use javascript functions to get news text, a cursor position, and show details of text in the <a href="https://documentation.devexpress.com/AspNetBootstrap/117843/Site-Layout/Popup-Control">BootstrapPopup</a> control window.</p>
To render content in one column, like in ASPxNewControl, BootstrapCardView control settings are set to ItemsPerPage="3" and CardColSpan="12" (for any screen size).

<br/>


