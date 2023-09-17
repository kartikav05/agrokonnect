var calendarEl = document.getElementById('calendar');
var calendar = new FullCalendar.Calendar(calendarEl, {
    themeSystem: 'bootstrap5',
    height: 750,
    events: {
        url: '/events',
        method: 'GET'
    }
});
calendar.render();