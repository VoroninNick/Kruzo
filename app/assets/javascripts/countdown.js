/**
 * Created by pnaryanua on 22.08.14.
 */

function updateTimeSpan() {
    var theSpan = document.getElementById('clock');
    var d = new Date();
    var t = new Date();
    var ms;
    var s, m, h;

    // if it's after 5pm, set today to tomorrow
    if (d.getHours() > 16){ d.setDate(d.getDate() + 1); }
    // get the next monday
    while (d.getDay() != 1){ d.setDate(d.getDate() + 1); }
    // set the time
    d.setHours(23);
    d.setMinutes(18);
    d.setSeconds(0);
    // get the difference between right now and next monday
    ms = d - t;
    // get the days between now and then
    d = parseInt(ms / (1000 * 60 * 60 * 24));
    ms -= (d * 1000 * 60 * 60 * 24);
    // get hours
    h = parseInt(ms / (1000 * 60 * 60));
    ms -= (h * 1000 * 60 * 60);
    // get minutes
    m = parseInt(ms / (1000 * 60));
    ms -= (m * 1000 * 60);
    // get seconds
    s = parseInt(ms / 1000);
    theSpan.innerHTML = '<div class="countdown_timer">'+d+'</div>' + '<div class="two_points">:</div>' + '<div class="countdown_timer">' + h + '</div>' + ' <div class="two_points">:</div> ' + '<div class="countdown_timer">' + m + '</div>' + ' <div class="two_points">:</div> ' + '<div class="countdown_timer">'+ s + '</div>' ;
    setTimeout('updateTimeSpan()', 100);
}
$(document).ready(function(){
    onload = updateTimeSpan();
});