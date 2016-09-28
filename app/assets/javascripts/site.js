// Raty plugin
$(document).on('turbolinks:load', function(){
	// raty images path changed from /assets to /images/ratyrate:
  $('.rating').raty( { path: '/images/ratyrate', scoreName: 'comment[rating]' });
  // raty images path changed from /assets to /images/ratyrate:
  $('.rated').raty({ path: '/images/ratyrate',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  });
});