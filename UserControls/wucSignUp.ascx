<%@ control language="C#" autoeventwireup="true" inherits="UserControls_wucSignUp, App_Web_lmk5d2fp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<div style="height: 400px; background-color: white; position: absolute; top: 65px; width: 500px; padding: 60px;">
    <table style="width: 100%; position: relative;">
        <tr>
            <td>User Sign Up
            </td>
        </tr>
        <tr>
            <td>
                <div style="background-color: rgb(39, 39, 39); padding: 17px 30px;">
                    <div style="color: white; text-align: center; font-size: 20px;">SIGN UP USING FACEBOOK</div>
                </div>
            </td>
        </tr>
        <tr>
            <td style="height: 30px;">....................................................................................................
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="inputtext" ClientIDMode="Static"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtEmail" runat="server" SetFocusOnError="true" ValidationExpression="" ErrorMessage="Enter valid Email Id"></asp:RegularExpressionValidator>

                <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="txtEmail"
                    WatermarkText="EMAIL">
                </cc1:TextBoxWatermarkExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="inputtext" TextMode="Password" ToolTip="PASSWORD" ClientIDMode="Static"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtRePassword" runat="server" CssClass="inputtext" TextMode="Password" ToolTip="RETYPE PASSWORD" ClientIDMode="Static"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chkAccept" runat="server" />
                I have ready and agree
            </td>
        </tr>
        <tr>
            <td>
                <div id="btnSignUp" style="background-color: #EA6F6A; padding: 17px 30px; cursor: pointer;">
                    <div style="color: white; text-align: center; font-size: 20px;">Sign Up</div>
                </div>
                <div id="divSignUpSuccess" style="position: absolute; top: 51%; left: 23%; opacity: 0; background-color: #272727">
                    <div style="color: white;">Please check your Email for further process</div>
                </div>
            </td>
        </tr>
    </table>
</div>
