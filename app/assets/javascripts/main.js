$(document).ready(function(){
	$('.front').click(function(){
			$(this).parents('.card_holder').addClass('flip')
			console.log(this) //this is a ref to the card_holder i clicked

	});

	$('.back').click(function(){
			$(this).parents('.card_holder').removeClass('flip')
			console.log(this) //this is a ref to the card_holder i clicked

	});
		
});




