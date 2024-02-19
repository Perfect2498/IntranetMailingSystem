<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebApplication6.profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <%--  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
    <!------ Include the above in your HEAD tag ---------->

    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <style>
             
              .navbar-brand {
                float: left;
                height: 48px;
                padding: 7px 10px;
                font-size: 16px;
                line-height: 30px;
                }

              .col-xs-12{
                  position: relative;
                  min-height: 1px;
                  padding-right: 10px;
                  padding-left: 50px;
              }
              .col-sm-9{
                    position: relative;
                    min-height: 0px;
                    padding-right: 0px;
                    padding-left: 150px;
              }
               h1{
                    margin-top: 0px;
                    margin-bottom: 10px;
                }
               
        </style>
    </head>

    <hr>
    <div class="container bootstrap snippet">
        <div class="row">
            <div class="col-sm-10 text-center center-block "><h1>User Profile</h1></div>
        </div>
        <div class="row">
            
            <div class="col-sm-9">
                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <hr>
                        <form class="form" action="##" method="post" id="registrationForm">
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="Name"><h4>Name</h4></label>
                                    <asp:TextBox ID="Name" runat="server" CssClass="form-control" placeholder="Name" title="enter your name if any."></asp:TextBox>
                                </div>
                            </div>
                              <div class="form-group">
                                  <div class="col-xs-6">
                                      <label for="dob"><h4>Date Of Birth</h4></label>
                                      <asp:TextBox ID="DOB" runat="server" type="date" CssClass="form-control"  placeholder="DOB" title="enter your dob."></asp:TextBox>
                                  </div>
                              </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="mobile"><h4>Phone No.</h4></label>
                                    <asp:TextBox ID="mobile" runat="server" CssClass="form-control" placeholder="enter mobile number" title="enter your mobile number if any."></asp:TextBox>
                                </div>
                            </div>
                             <div class="form-group">
                                 <div class="col-xs-6">
                                     <label for="gender"><h4>Gender</h4></label>
                                     <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                                         <asp:ListItem>--Select Here---</asp:ListItem>
                                         <asp:ListItem>Male</asp:ListItem>
                                         <asp:ListItem>Female</asp:ListItem>
                                         <asp:ListItem>Others</asp:ListItem>
                                      </asp:DropDownList>
                                     <%--<asp:TextBox ID="gender" runat="server" CssClass="form-control" placeholder="Gender" title="enter your gender if any."></asp:TextBox>--%>
                                 </div>
                             </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="occupation"><h4>Occupation</h4></label>
                                     <%--<label for="DropDownList1">Occupation</label>--%>
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
                                    <%--<asp:TextBox ID="occupation" runat="server" CssClass="form-control" placeholder="occupation" title="enter your occupation if any."></asp:TextBox>--%>
                                </div>
                            </div>
                           
                            
                            
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="joiningdate"><h4>Joining Date</h4></label> 
                                    <asp:TextBox ID="joiningdate" runat="server" type="date" CssClass="form-control" placeholder="Joining Date" title="enter a Joining Date"></asp:TextBox>
                                </div>
                            </div>
                          <div class="form-group">
                                <div class="col-xs-6"> 
                                    <label for="email"><h4>Email</h4></label>
                                    <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="example@email.com" title="enter your email."></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label for="password"><h4>Password</h4></label>
                                    <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode ="Password" placeholder="password" title="enter your password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <br />
                                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-lg btn-success" OnClick="btnSave_Click" />
                                    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-lg" OnClientClick="return confirm('Are you sure you want to reset?');" />
                                </div>
                            </div>
                        </form>
                        <hr>
                    </div>
                    <div class="tab-pane" id="messages">
                        <h2></h2>
                        <hr>
                        <!-- Message Tab Content -->
                    </div>
                    <div class="tab-pane" id="settings">
                        <hr>
                        <!-- Settings Tab Content -->
                    </div>
                </div><!--/tab-content-->
            </div><!--/col-9-->
        </div><!--/row-->
    </div><!--/container-->

</asp:Content>
