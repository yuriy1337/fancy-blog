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
                	init_drag_n_drop();
                	div.slideDown();
                },
                complete: function(){          
                }
            });
            return false;
        }
    });

  $("a.grouped_elements").fancybox({
    'transitionIn'  : 'elastic',
    'transitionOut' : 'elastic',
	'speedIn'  		: 600, 
    'speedOut'    	: 200, 
    'cyclic'		: true,
    'overlayShow' 	: true,
  });

});

function init_drag_n_drop(){
	$('.upload').fileUploadUI({
	  uploadTable: $('.upload_files'),
	  downloadTable: $('.download_files'),
	  buildUploadRow: function (files, index) {
	    var file = files[index];
	    return $("<tr><td>" + file.name + "<\/td>" +
	            "<td class='file_upload_progress'><div><\/div><\/td>" +
	            "<td class='file_upload_cancel'>" +
	            "<button class='ui-state-default ui-corner-all' title='Cancel'>" +
	            "<span class='ui-icon ui-icon-cancel'>Cancel<\/span>" +
	            "<\/button><\/td><\/tr>");
	  },
	  buildDownloadRow: function (file) {
	    return $("<tr><td><img alt='Photo' width='40' height='40' src='' + file.pic_path + ''>' + file.name + '<\/td><\/tr>");
	  },
	});
}