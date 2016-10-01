var refreshRating = function() {
	$('.rating').raty( { path: '/images/ratyrate', scoreName: 'comment[rating]' });
	$('.rated').raty({ path: '/images/ratyrate',
		readOnly: true,
		score: function() {
			return $(this).attr('data-score');
		}
	});
};

$(document).on('turbolinks:load ajaxSuccess', function() {
	refreshRating(); 

  $('.img-zoom').elevateZoom({
    zoomType: "lens",
    lensShape: "round",
    lensSize: 200,
		lensFadeIn: 300,
		lensFadeOut: 500
  });


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