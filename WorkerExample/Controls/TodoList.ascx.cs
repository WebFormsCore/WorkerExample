using System;
using System.Threading.Tasks;
using WebFormsCore;
using WebFormsCore.UI;
using WebFormsCore.UI.WebControls;

namespace WorkerExample.Controls;

public partial class TodoList : Control
{
    protected async Task tbItem_OnEnterPressed(object? sender, EventArgs e)
    {
        if (tbItem.Text is {} value)
        {
            await rptItems.AddAsync(value);
            tbItem.Text = "";
        }
    }

    protected void rptItems_OnItemDataBound(object? sender, RepeaterItemEventArgs<string> e)
    {
        if (e.Item.DataItem is not { } dataItem) return;

        var controls = e.Item.FindControls<ItemControls>();

        controls.litValue.Text = dataItem;
    }

    protected void btnRemove_OnClick(object? sender, EventArgs e)
    {
        var button = (Button) sender!;
        var item = (RepeaterItem<string>) button.NamingContainer!;

        rptItems.Remove(item);
    }
}
