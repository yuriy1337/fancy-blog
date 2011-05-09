  $(function () {
    $('.upload').fileUploadUI({
      uploadTable: $('.upload_files'),
      downloadTable: $('.download_files'),
      buildUploadRow: function (files, index) {
        var file = files[index];
        return $('<tr><td>' + file.name + '<\/td>' +
                '<td class='file_upload_progress'><div><\/div><\/td>' +
                '<td class='file_upload_cancel'>' +
                '<button class='ui-state-default ui-corner-all' title='Cancel'>' +
                '<span class='ui-icon ui-icon-cancel'>Cancel<\/span>' +
                '<\/button><\/td><\/tr>');
      },
      buildDownloadRow: function (file) {
        return $('<tr><td><img alt='Photo' width='40' height='40' src='' + file.pic_path + ''>' + file.name + '<\/td><\/tr>');
      },
    });
  });
