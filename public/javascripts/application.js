// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
    $('#add_images').bind({
        click: function() {
            $.ajax({
                url: this.href,
                success: function(data) {
                     $('#add_images').before(data);
                },
                complete: function(){          
                    alert("complete");
                }
            });
            return false;
        }
    });
});