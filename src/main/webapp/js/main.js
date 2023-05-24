main();

function main() {
	$('.slide_gallery').bxSlider({
		mode: 'horizontal',
		maxSlides: 3,
		minSlides: 1,
		moveSlides: 1,
		slideMargin: 5,
		auto: true,
		slideWidth : 400,
		shrinkItems : true
	});
};