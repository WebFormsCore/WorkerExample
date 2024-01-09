<%@ Control language="C#" Inherits="WorkerExample.Controls.Counter" %>
<%@ Register TagPrefix="wfc" Namespace="WebFormsCore.UI.WebControls" %>

<div class="mb-2">Counter: <wfc:Literal runat="server" ID="litCounter" /></div>
<wfc:LinkButton runat="server" ID="btnIncrement" Text="Increment" OnClick="btnIncrement_OnClick" class="btn btn-primary" />

<% if (Count > 0) { %>
    <div class="alert alert-info p-2 mb-0 mt-4">
        🎉 Counter is greater than 0. It is <%= Count %>.
    </div>
<% } %>
