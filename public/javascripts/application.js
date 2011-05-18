// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
    $('#add_images').bind({
        click: function() {
            $.ajax({
                url: this.href,
                success: function(data) {
                	var div = $("#elements").append("<div></div>");
                	div.hide();
                	div.html(data);
                	div.slideDown();
                },
                complete: function(){          
                }
            });
            return false;
        }
    });
});