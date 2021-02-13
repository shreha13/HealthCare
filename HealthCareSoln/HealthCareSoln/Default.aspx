<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HealthCareSoln._Default" %>

<%@ Register TagPrefix="uc1" TagName="Appointments" Src="~/Common/Appointments.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CheckedIn" Src="~/Common/CheckedIn.ascx" %>
<%@ Register TagPrefix="uc3" TagName="Patients" Src="~/Common/Patients.ascx" %>
<%@ Register TagPrefix="uc4" TagName="GridButtons" Src="~/Common/GridButtons.ascx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="default.js"></script>
    <div style="padding: 15px;">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="col-lg-9 col-md-6 col-sm-12 col-xs-12" style="padding: 15px">
                <div class="col-md-12 col-sm-12 col-xs-12 col-lg-12 search">
                    <span class="fa fa-search"></span>
                    <input class="searchInput" placeholder="Search by Name, Phone Number" />
                </div>

            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 col-xs-12 buttonContainer" style="padding: 15px">
                <button class="button" type="button"><i class="fa fa-building headerIcons" aria-hidden="true"></i><span class="headerTitle">LOCATION</span><i class="fa fa-caret-down generalColor" aria-hidden="true"></i></button>
                <button class="button noMargin" type="button"><i class="fa fa-filter headerIcons" aria-hidden="true"></i><span class="headerTitle">FILTER</span><i class="fa fa-caret-down generalColor" aria-hidden="true"></i></button>
            </div>
        </div>

        <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12" id="schedule">
            <div class="col-md-6 col-sm-12 col-lg-10 col-xs-12 detailsGrid">Work In progress</div>
            <div class="col-md-6 col-sm-12 col-lg-2 col-xs-12 detailsGrid detailsButtons">
                <button class="gridButton" id="add" type="button" onclick="showTab('schedule', 'appCalendar', 'add')">Add Schedule</button>
                <button class="gridButton" id="calendarApp" type="button" onclick="showTab('appCalendar', 'schedule', 'calendarApp1')">Appointments Calendar</button>
                <button class="gridButton" id="view" type="button" onclick="showTab('schedule', 'appCalendar', 'view')">View Schedule</button>
            </div>
        </div>

        <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12" id="appCalendar">
            <div class="col-md-6 col-sm-12 col-lg-4 col-xs-12 detailsGrid">
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 card">
                    <div>
                        <i class="fa fa-calendar generalColor" aria-hidden="true"></i><span class="generalColor title">Appointments Today</span>
                    </div>
                    <span class="patientCount">Today-85</span>
                </div>
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 card">
                    <div>
                        <div class="generalColor title bottomMargin alignText">12:30pm</div>
                        <div class="divButton">Check - In</div>
                    </div>
                    <div class="flexDisplay">
                        <div class="patientDetails">
                            <div class="titleContainer"><span class="title">Patient Name (#534351)</span></div>
                            <div class="titleContainer"><span class="title">Room:</span> 201</div>
                            <div class="titleContainer"><span class="title">Phone:</span> +1 84613158658</div>
                        </div>
                        <div class="leftMargin"><i class="fa fa-ellipsis-v iconTop" id="ell1" onclick="showMenu('ell1',  'appMenu', 'modalMenuContainer')" aria-hidden="true"></i></div>
                    </div>
                </div>

                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 card">
                    <div>
                        <div class="generalColor title bottomMargin alignText">12:30pm</div>
                        <div class="divButton">Check - In</div>
                    </div>
                    <div class="flexDisplay">
                        <div class="patientDetails">
                            <div class="titleContainer"><span class="title">Patient Name (#534351)</span></div>
                            <div class="titleContainer"><span class="title">Room:</span> 201</div>
                            <div class="titleContainer"><span class="title">Phone:</span> +1 84613158658</div>
                        </div>
                        <div class="leftMargin"><i class="fa fa-ellipsis-v iconTop" id="ell2" onclick="showMenu('ell2',  'appMenu', 'modalMenuContainer')" aria-hidden="true"></i></div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 card">
                    <div>
                        <div class="generalColor title bottomMargin alignText">12:30pm</div>
                        <div class="divButton">Check - In</div>
                    </div>
                    <div class="flexDisplay">
                        <div class="patientDetails">
                            <div class="titleContainer"><span class="title">Patient Name (#534351)</span></div>
                            <div class="titleContainer"><span class="title">Room:</span> 201</div>
                            <div class="titleContainer"><span class="title">Phone:</span> +1 84613158658</div>
                        </div>
                        <div class="leftMargin"><i class="fa fa-ellipsis-v iconTop" id="ell3" onclick="showMenu('ell3', 'appMenu', 'modalMenuContainer')" aria-hidden="true"></i></div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 card">
                    <div>
                        <div class="generalColor title bottomMargin alignText">12:30pm</div>
                        <div class="divButton">Check - In</div>
                    </div>
                    <div class="flexDisplay">
                        <div class="patientDetails">
                            <div class="titleContainer"><span class="title">Patient Name (#534351)</span></div>
                            <div class="titleContainer"><span class="title">Room:</span> 201</div>
                            <div class="titleContainer"><span class="title">Phone:</span> +1 84613158658</div>
                        </div>
                        <div class="leftMargin"><i class="fa fa-ellipsis-v iconTop" id="ell4" onclick="showMenu('ell4',  'appMenu', 'modalMenuContainer')" aria-hidden="true"></i></div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 card">
                    <div>
                        <div class="generalColor title bottomMargin alignText">12:30pm</div>
                        <div class="divButton">Check - In</div>
                    </div>
                    <div class="flexDisplay">
                        <div class="patientDetails">
                            <div class="titleContainer"><span class="title">Patient Name (#534351)</span></div>
                            <div class="titleContainer"><span class="title">Room:</span> 201</div>
                            <div class="titleContainer"><span class="title">Phone:</span> +1 84613158658</div>
                        </div>
                        <div class="leftMargin"><i class="fa fa-ellipsis-v iconTop" id="ell5" onclick="showMenu('ell5', 'appMenu', 'modalMenuContainer')" aria-hidden="true"></i></div>
                    </div>
                </div>
            </div>
            <div class="detailsGrid col-lg-4 col-md-6 col-sm-12 col-xs-12">
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 card">
                    <span class="generalColor title">Patients Checked In</span>
                    <span class="patientCountRed">Cancelled-5</span>
                </div>
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 card">
                    <div>
                        <div class="generalColor title bottomMargin alignText">12mins</div>
                        <div class="divButton danger">Check - Out</div>
                    </div>
                    <div class="flexDisplay">
                        <div class="patientDetails">
                            <div class="titleContainer"><span class="title">Patient Name (#534351)</span></div>
                            <div class="titleContainer"><span class="title">Room:</span> 201</div>
                            <div class="titleContainer"><span class="title">Phone:</span> +1 84613158658</div>
                        </div>
                        <div class="leftMargin"><i class="fa fa-ellipsis-v iconTop" id="ell6" onclick="showMenu('ell6', 'patientMenu', 'patientMenuContainer')" aria-hidden="true"></i></div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 card">
                    <div>
                        <div class="generalColor title bottomMargin alignText">12mins</div>
                        <div class="divButton danger">Check - Out</div>
                    </div>
                    <div class="flexDisplay">
                        <div class="patientDetails">
                            <div class="titleContainer"><span class="title">Patient Name (#534351)</span></div>
                            <div class="titleContainer"><span class="title">Room:</span> 201</div>
                            <div class="titleContainer"><span class="title">Phone:</span> +1 84613158658</div>
                        </div>
                        <div class="leftMargin"><i class="fa fa-ellipsis-v iconTop" id="ell7" onclick="showMenu('ell7', 'patientMenu', 'patientMenuContainer')"  aria-hidden="true"></i></div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 card">
                    <div>
                        <div class="generalColor title bottomMargin alignText">12mins</div>
                        <div class="divButton danger">Check - Out</div>
                    </div>
                    <div class="flexDisplay">
                        <div class="patientDetails">
                            <div class="titleContainer"><span class="title">Patient Name (#534351)</span></div>
                            <div class="titleContainer"><span class="title">Room:</span> 201</div>
                            <div class="titleContainer"><span class="title">Phone:</span> +1 84613158658</div>
                        </div>
                        <div class="leftMargin"><i class="fa fa-ellipsis-v iconTop" id="ell8" onclick="showMenu('ell8', 'patientMenu', 'patientMenuContainer')"  aria-hidden="true"></i></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 detailsGrid">
                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 card">
                    <span class="generalColor title">Patients Seen Today</span>
                    <span class="patientCount">Today-5</span>
                </div>
                <uc3:Patients ID="Patients" runat="server"></uc3:Patients>
                <uc3:Patients ID="Patients1" runat="server"></uc3:Patients>
                <uc3:Patients ID="Patients2" runat="server"></uc3:Patients>
            </div>
            <div class="col-md-6 col-sm-12 col-lg-2 col-xs-12 detailsGrid detailsButtons">
                <button class="gridButton" id="add1" type="button" onclick="showTab('schedule', 'appCalendar', 'add')">Add Schedule</button>
                <button class="gridButton" id="calendarApp1" type="button" onclick="showTab('appCalendar', 'schedule', 'calendarApp1')">Appointments Calendar</button>
                <button class="gridButton" id="view1" type="button" onclick="showTab('schedule', 'appCalendar', 'view')">View Schedule</button>
            </div>
        </div>
    </div>
    <uc1:Appointments ID="Appointments" runat="server"></uc1:Appointments>
     <uc2:CheckedIn ID="CheckedIn" runat="server"></uc2:CheckedIn>


</asp:Content>
