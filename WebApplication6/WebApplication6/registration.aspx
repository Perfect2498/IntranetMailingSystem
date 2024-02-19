<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="WebApplication6.registration" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        
    <style>

       div.lastLogin{
           display:none ;
       }

       /*div.card-body{*/
           /*padding: 20px;*/
           /*padding-bottom: 100px;*/
           /*margin-bottom: 120px;
           
       }*/

   </style>
    <div class="container">
        <h3 class="text-center mt-5 mb-4">Registration</h3>
        <div class="row justify-content-center">
            <!-- First Partition -->
            <%--<div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Account Information</h5>
                        <div class="form-group">
                            <label for="TextBox2">Name</label>
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="TextBox3">Phone Number</label>
                            <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="TextBox4">Email</label>
                            <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="TextBox8">Password</label>
                            <asp:TextBox ID="TextBox8" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>--%>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Account Information</h5>
                        <div class="form-group">
                            <label for="TextBox2">Name</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server"
                                 ControlToValidate="TextBox2" ForeColor="Red" Display="Dynamic" ErrorMessage="(Name is required)"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        
                        <div class="form-group">
                            <label for="TextBox3">Phone Number</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="TextBox3" ForeColor="Red" Display="Dynamic" ErrorMessage="(Phone Number required)"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ControlToValidate="TextBox3" Display="Dynamic" ValidationExpression="\d{10}">
                            </asp:RegularExpressionValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server"
                                 ControlToValidate="TextBox3" ForeColor="Red" Display="Dynamic"
                                 ErrorMessage="Invalid Phone Number" ValidationExpression="\d{10}">
                             </asp:RegularExpressionValidator>
                            <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server"
                                ControlToValidate="TextBox3" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <label for="TextBox4">Email</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server"
                                ControlToValidate="TextBox4" ForeColor="Red" Display="Dynamic" ErrorMessage="(Email required)"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server"
                                ControlToValidate="TextBox4" ForeColor="Red" Display="Dynamic"
                                ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                            </asp:RegularExpressionValidator>
                            <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="TextBox8">Password</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                 ControlToValidate="TextBox8" ForeColor="Red" Display="Dynamic" ErrorMessage="(Password required)"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox8" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server"
                                ControlToValidate="TextBox8" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
          </div>


            <!-- Second Partition -->
            <%--<div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Personal Information</h5>
                        <div class="form-group">
                            <label for="DropDownList1">Occupation</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                <asp:ListItem>--Select Here---</asp:ListItem>
                                <asp:ListItem>Human Resource</asp:ListItem>
                                <asp:ListItem>Development Operation</asp:ListItem>
                                <asp:ListItem>Finance</asp:ListItem>
                                <asp:ListItem>IT-HelpDesk</asp:ListItem>
                                <asp:ListItem>Software Tester</asp:ListItem>
                                <asp:ListItem>Manager</asp:ListItem>
                                <asp:ListItem>Software Developer</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label for="TextBox5" typeof="date">Date Of Birth</label>
                            <asp:TextBox ID="TextBox5" runat="server" class="form-control" type="date" OnTextChanged="TextBox5_TextChanged1"></asp:TextBox>
                        </div><br /><br />
                         
                        <div class="form-group">    
                            <label for="RadioButtonList1">Gender</label>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="form-check-inline">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                </div>
            </div>--%>
                        <div class="col-md-4">
                          <div class="card">
                             <div class="card-body">
                                <h5 class="card-title">Personal Information</h5>
                                <div class="form-group">
                                    <label for="DropDownList1">Occupation</label>
				                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorOccupation" runat="server"
                                        ControlToValidate="DropDownList1" ForeColor="Red" Display="Dynamic" InitialValue="--Select Here---"
                                    ErrorMessage="(Occupation required)"></asp:RequiredFieldValidator>
                                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                    <asp:ListItem>--Select Here---</asp:ListItem>
                                    <asp:ListItem>Human Resource</asp:ListItem>
                                    <asp:ListItem>Development Operation</asp:ListItem>
                                    <asp:ListItem>Finance</asp:ListItem>
                                    <asp:ListItem>IT-HelpDesk</asp:ListItem>
                                    <asp:ListItem>Software Tester</asp:ListItem>
                                    <asp:ListItem>Manager</asp:ListItem>
                                    <asp:ListItem>Software Developer</asp:ListItem>
                                </asp:DropDownList>
                            </div>
			
                            <div class="form-group">
                                <label for="TextBox5" typeof="date">Date Of Birth</label>
				                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDOB" runat="server"
                                    ControlToValidate="TextBox5" ForeColor="Red" Display="Dynamic" ErrorMessage="(Date of Birth required)"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorDOB" runat="server"
                                    ControlToValidate="TextBox5" Display="Dynamic"
                                    ErrorMessage="Invalid Date of Birth" ValidationExpression="\d{4}-\d{2}-\d{2}">
                                </asp:RegularExpressionValidator>
                                <asp:TextBox ID="TextBox5" runat="server" class="form-control" type="date" OnTextChanged="TextBox5_TextChanged1"></asp:TextBox>
                
                            </div>
			                <br />
                            <%--<div class="form-group">
                               <label>Gender</label>
				                <asp:RadioButton ID="RadioMale" Text="Male" runat="server" GroupName="gender" />
                                <asp:RadioButton ID="RadioFemale" Text="FeMale" runat="server" GroupName="gender" />
                                <asp:RadioButton ID="RadioOthers" Text="Others" runat="server" GroupName="gender" />
                            </div>--%>
                            <%--<div class="form-group">    
                                <label for="RadioButtonList1">Gender</label>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="form-check-inline">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>--%>
                                 <div class="form-group">
                                    <label for="RadioButtonList1">Gender</label>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="form-check-inline">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Other</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server"
                                        ControlToValidate="RadioButtonList1"
                                        InitialValue=""
                                        ErrorMessage="(Required)" Forecolor="Red"
                                        Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                                 <br />

                       </div>
                  </div>
                </div>


            <!-- Third Partition -->
         <%--   <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Additional Information</h5>
                        <br />
                        <div class="form-group">
                            <label for="TextBox6">Joining Date</label>
                            <asp:TextBox ID="TextBox6" runat="server" type="date" class="form-control"></asp:TextBox>
                        </div>
                        <br />
                        <div class="form-group">
                            <label for="RadioButtonList2">Is Admin?</label>
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="form-check-inline">
                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                <asp:ListItem Value="0">No</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div class="form-group">
                            <label for="RadioButtonList3">IsActive?</label>
                            <asp:RadioButtonList ID="RadioButtonList3" runat="server" CssClass="form-check-inline">
                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                <asp:ListItem Value="0">No</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        <div class="form-group lastLogin">
                            <label for="TextBox7">Last Login</label>
                            <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
        
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Additional Information</h5>
                            <%--<br />--%>
                            <div class="form-group">
                                <label for="TextBox6">Joining Date</label>
				                <asp:RequiredFieldValidator ID="RequiredFieldValidatorJoiningDate" runat="server"
                                    ControlToValidate="TextBox6" ForeColor="Red" Display="Dynamic" ErrorMessage="(Joining Date required)"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBox6" runat="server" type="date" class="form-control"></asp:TextBox>
                
                            </div>
                            <br />
                            
                            
                            <%--<div class="form-group">
                                <label for="RadioButtonYes">Is Admin?</label>
				                <asp:RadioButton ID="RadioButtonYes" Text="Yes" runat="server" GroupName="IsAdmin" />
                                <asp:RadioButton ID="RadioButtonNo" Text="No" runat="server" GroupName="IsAdmin" />
                            </div>
                            <br />--%>
                            


                            <%--<div class="form-group">
                                <label for="RadioButton1Yes">IsActive?</label>
				                <asp:RadioButton ID="RadioButton1Yes" Text="Yes" runat="server" GroupName="IsActive" />
                                <asp:RadioButton ID="RadioButton1No" Text="No" runat="server" GroupName="IsActive" />
                
                            </div>--%>

                            <div class="form-group">
                                <label for="RadioButtonList2">Is Admin?</label>
                                 <asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="form-check-inline">
                                     <asp:ListItem Value="1">Yes</asp:ListItem>
                                     <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:RadioButtonList>
	                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorIsAdmin" runat="server"
                                    ControlToValidate="RadioButtonList2"
                                    InitialValue=""
                                    ErrorMessage="(Required)" ForeColor="Red"
                                    Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>
                            <br />

                            <div class="form-group">
                                <label for="RadioButtonList3">IsActive?</label>
                                <asp:RadioButtonList ID="RadioButtonList3" runat="server" CssClass="form-check-inline">
                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                        <asp:ListItem Value="0">No</asp:ListItem>
                                 </asp:RadioButtonList>
	                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorIsActive" runat="server"
                                    ControlToValidate="RadioButtonList3"
                                    InitialValue=""
                                    ErrorMessage="(Required)" ForeColor="Red"
                                    Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>
                            <br />

                            <div class="form-group lastLogin">
                                    <label for="TextBox7">Last Login</label>
                                    <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>

                         </div>
                     </div>

        <div class="row justify-content-center mt-4">
                   <!-- Submit Button -->
        <div class="form-group text-center mt-4">
            <div class="col-md-12">
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" CssClass="btn btn-primary" />
            </div>
            <asp:Label ID="errorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>

        </div>
    </div>

</asp:Content>
