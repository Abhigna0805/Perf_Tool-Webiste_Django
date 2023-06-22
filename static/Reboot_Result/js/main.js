var getFolderContentsUrl = document.getElementById('urls').getAttribute('data-get-folder-contents-url');
var getFileContentsUrl = document.getElementById('urls').getAttribute('data-get-file-contents-url');

var previousContents = [];

$(document).on('click', '.clickable', function(e) {
  e.preventDefault();
  const el = $(this);
  if (el.hasClass('loaded')) {
    el.next('ul').toggleClass('collapsed');
    return;
  }
  const path = el.data('path');
  const type = el.data('filetype');
  if (type == "folder") {
    getFolderContents(path, el);
    el.addClass('loaded');
  } else {
    previousContents.push($('.display-content').html());
    getFileContents(path, type);
  }
});

function getFolderContents(path, el) {
  $.ajax({
    url: getFolderContentsUrl,
    data: { "path": path },
    success: function(data) {
      var ul_tag = "<ul>";
      data['folder_content'].forEach(function(i) {
        li = `<li>
          <a data-path="${data.path + '/' + i.file_name}"
            data-filetype="${i.file_type}" class="clickable"> 
            <i class="fa fa-${i.icon}"></i>
            <strong>${i.file_name}</strong>
          </a>
        </li>`;
        ul_tag += li;
      });
      ul_tag += '</ul>';
      el.after(ul_tag);
    }
  });
}

function getFileContents(path, type) {
  if (type == "unknown") {
    alert("No preview available");
  }
  $.ajax({
    url: getFileContentsUrl,
    data: { "path": path, "type": type },
    success: function(data) {
      $('.display-content').html(data.contents);
      $(".display-content").get(0).scrollIntoView({ behavior: 'smooth' });
      console.log(path);
      subpath = path.substr(0, path.lastIndexOf('/') + 1);
      console.log(subpath);
      $.each($('.display-content a'), function() {
        let h = $(this).attr('href');
        $(this).attr('data-path', subpath + h);
        $(this).attr('data-filetype', 'md');
        $(this).addClass('clickable');
      });

      if (type === 'md') {
        addBackButton();
        displaySvg(path); 
      } else {
        removeBackButton();
      }
    }
  });
}
function displaySvg(mdFilePath) {
  const filePathSegments = mdFilePath.replace('results','media');
  $.ajax({
    url: svgFilePath,
    success: function(data) {
      $('.display-content').append(data);
    },
    error: function() {
      console.log('SVG file not found:', svgFilePath);
    }
  });
}




function addBackButton() {
  $('.back-button').remove(); 
  if (previousContents.length > 0) {
    $('.display-content').prepend('<button class="back-button">Go Back</button>');
  }
}

$(document).on('click', '.back-button', function() {
  if (previousContents.length > 0) {
    const previousContent = previousContents.pop();
    $('.display-content').html(previousContent);
    $(".display-content").get(0).scrollIntoView({ behavior: 'smooth' });
    addBackButton();
  }
});

function backpage() {
  if (window.location.pathname === '/') {
    return;
  }
  window.history.back();
}
