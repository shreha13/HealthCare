$(document).ready(function () {
    $('#modalMenuContainer').hide()
    $('#patientMenuContainer').hide()
    showTab('appCalendar', 'schedule', 'calendarApp1');
    window.onresize = resizeFn;
});

var selectedPatientId = "";
var selectedId = "";

function showTab(id, hideId, buttonId) {
    $(`#modalMenuContainer`).hide();
    $(`#patientMenuContainer`).hide();
    $(`#${hideId}`).hide();
    $(`#${id}`).show();
    $('.gridButton').css('background-color', '#2966A6')
    $(`#${buttonId}`).css("cssText", 'background-color: #2D79CA !important')
}

function showMenu(id, modalId, containerId) {
    var el = document.getElementById(id);
    var top = el.getBoundingClientRect().top + window.pageYOffset + 15 // 15 padding
    var left = el.getBoundingClientRect().left + window.pageXOffset - 125 + 10 // 125 width 10 padding
    $(`#${modalId}`).css('top', `${top}px`)
    $(`#${modalId}`).css('left', `${left}px`)
    if (selectedId === id || selectedPatientId === id) {
        $(`#${containerId}`).toggle();
    } else {
        $(`#${containerId}`).show();
    }

    if ($(`#${containerId}`).is(":visible")) {
        modalId === 'patientMenu' ? selectedPatientId = id : selectedId = id;
    } else {
        modalId === 'patientMenu' ? selectedPatientId = "" : selectedId = "";
    }
}

function resizeFn() {
    var id = ""
    if (selectedId) {
        id = selectedId;
        selectedId = ""
        showMenu(id, 'appMenu', 'modalMenuContainer')
    }
    if (selectedPatientId) {
        id = selectedPatientId;
        selectedPatientId = ""
        showMenu(id, 'patientMenu', 'patientMenuContainer')
    }

}

