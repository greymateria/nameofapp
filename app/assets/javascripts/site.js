var refreshRating = function() {
	$('.rating').raty( { path: '/images/ratyrate', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/images/ratyrate',
		readOnly: true,
		score: function() {
			return $(this).attr('data-score');
		}
	});
};

$(document).on('turbolinks:load', function() {
	refreshRating();
});

// old version

// Raty plugin
//$(document).on('turbolinks:load', function(){
//	// raty images path changed from /assets to /images/ratyrate:
//  $('.rating').raty( { path: '/images/ratyrate', scoreName: 'comment[rating]' });
//  // raty images path changed from /assets to /images/ratyrate:
//  $('.rated').raty({ path: '/images/ratyrate',
//    readOnly: true,
//    score: function() {
//      return $(this).attr('data-score');
//    }
//  });
//});