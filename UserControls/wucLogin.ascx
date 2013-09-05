<%@ control language="C#" autoeventwireup="true" inherits="UserControls_wucLogin, App_Web_lmk5d2fp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<div style="height: 400px; background-color: white; position: absolute; top: 65px; width: 570px; padding: 60px;">
    <table style="width: 100%; position: relative;">
        <tr>
            <td>User Login
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="panelLogin" runat="server" DefaultButton="TAPDLogin1$LoginButton">
                    <asp:Login ID="TAPDLogin1" runat="server" OnAuthenticate="TAPDLogin_Authenticate"
                        Width="100%">
                        <LayoutTemplate>
                            <table cellpadding="4" cellspacing="4" width="77%" align="center">
                                <tr>
                                    <td align="center">
                                        <asp:ImageButton ID="imgbtnFacebook" runat="server" ImageUrl="~/imgs/btnfacebook.png"
                                            ClientIDMode="Static" OnClientClick="alert('Comming Soon..!!');return false;" />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td height="30px">------------------------------------------------------------------------------
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="left" style="width: 99%;">
                                        <asp:TextBox CssClass="inputtext" ID="UserName" runat="server" ClientIDMode="Static"
                                            ToolTip="USERNAME" Style="width: 95% !important; padding-left: 20px;"></asp:TextBox>
                                        <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="UserName"
                                            WatermarkText="EMAIL">
                                        </cc1:TextBoxWatermarkExtender>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" Display="Static"
                                            ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required."
                                            ValidationGroup="ctl00$TAPDLogin" Text="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 0px;"></td>
                                </tr>
                                <tr>
                                    <td align="left" style="width: 99%;">
                                        <asp:TextBox CssClass="inputtext" ID="Password" runat="server" TextMode="Password"
                                            ClientIDMode="Static" ToolTip="PASSWORD" Style="width: 95% !important; padding-left: 20px;"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" Display="Static" runat="server"
                                            ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required."
                                            ValidationGroup="ctl00$TAPDLogin" Text="*"></asp:RequiredFieldValidator>

                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <a href="#" style="color: #000; text-decoration: none; padding-left: 20px;">Forget password?
                                    / Are you a dinosaur?</a>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="center" style="color: #00FFFF;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:ImageButton ID="LoginButton" ImageUrl="~/imgs/login_simple.png" runat="server"
                                            CommandName="Login" ValidationGroup="ctl00$TAPDLogin" ClientIDMode="Static" />
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true"
                                            ShowSummary="false" ValidationGroup="ctl00$TAPDLogin" />
                                    </td>
                                    <td></td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                    </asp:Login>
                </asp:Panel>
            </td>
        </tr>
        <%-- <tr>
            <td>
                <div style="background-color: rgb(39, 39, 39); padding: 17px 30px;">
                    <div style="color: white; text-align: center; font-size: 20px;">SIGN UP USING FACEBOOK</div>
                </div>
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
                <div id="btnLogin" style="background-color: #EA6F6A; padding: 17px 30px; cursor: pointer;">
                    <div style="color: white; text-align: center; font-size: 20px;">Login</div>
                </div>
            </td>
        </tr>--%>
    </table>
</div>
