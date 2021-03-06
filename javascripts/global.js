/* This document details site-wide jquery functions */
$(document).ready(function() {
	
	// Show any notifications
	showNotifications();
	
});

/*
 * Functions for showing the Flash messages to the user - message drops down from the top of the screen now
 */
function showNotifications() {

    var notification = $("#notification");

    // Make sure it's visible even when top of the page not visible
    notification.css("top", $(window).scrollTop());
    notification.css("width", $(document).width());

    //show the notification
    notification.slideDown("slow", function() {
        setTimeout(hideNotifications,
            10000 // 10 seconds
            )
    });
}

/*
 * Quick function to auto hide the flash messages after 10 secs
 */
function hideNotifications() {
    $("#notification").slideUp("slow");
}
