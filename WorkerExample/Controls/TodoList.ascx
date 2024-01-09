<%@ Control language="C#" Inherits="WorkerExample.Controls.TodoList" %>
<%@ Register TagPrefix="wfc" Namespace="WebFormsCore.UI.WebControls" %>

<wfc:Label runat="server" AssociatedControlID="tbItem" Text="Text:" /><br />
<wfc:TextBox runat="server" ID="tbItem" class="form-control" OnEnterPressed="tbItem_OnEnterPressed" />
<wfc:RequiredFieldValidator runat="server" ControlToValidate="tbItem" Text="Required!" ValidationGroup="NewTodoItem" />

<wfc:Repeater runat="server" ID="rptItems" OnItemDataBound="rptItems_OnItemDataBound" ItemType="System.String">
    <ItemTemplate ControlsType="ItemControls">
        <div class="mt-2">
            <div class="row align-items-center">
                <div class="col">
                    <strong><wfc:Literal ID="litValue" runat="server" /></strong>
                </div>
                <div class="col-auto">
                    <wfc:Button runat="server" ID="btnRemove" Text="Remove" class="btn btn-danger btn-small" OnClick="btnRemove_OnClick" />
                </div>
            </div>
        </div>
    </ItemTemplate>
    <SeparatorTemplate>
        <hr />
    </SeparatorTemplate>
</wfc:Repeater>
