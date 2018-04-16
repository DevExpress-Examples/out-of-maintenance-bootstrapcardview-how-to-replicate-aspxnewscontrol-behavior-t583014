using DevExpress.Web;
using System;
using System.ComponentModel;
using System.Web.UI;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
    }
    protected void ASPxCallback1_Callback(object sender, CallbackEventArgs e) {
        int newsID = int.Parse(e.Parameter);
        IHierarchicalDataSource dataSource = (IHierarchicalDataSource)XmlDataSource1;
        HierarchicalDataSourceView view = dataSource.GetHierarchicalView("");
        IHierarchicalEnumerable enumerable = view.Select();
        int index = 1;
        string text = "";

        foreach(object obj in enumerable) {
            if(newsID == index) {
                IHierarchyData data = enumerable.GetHierarchyData(obj);
                PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(data);
                PropertyDescriptor descriptor = properties.Find("Text", true);
                text = descriptor.GetValue(obj).ToString();
                break;
            }
            index++;
        }
        e.Result = text;
    }
}