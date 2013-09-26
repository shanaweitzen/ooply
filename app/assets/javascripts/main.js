$(document).ready(function(){
	$('.front').click(function(){
			$(this).parents('.card_holder').addClass('flip')
			console.log(this) //this is a ref to the card_holder i clicked

	});

	$('.back').click(function(){
			$(this).parents('.card_holder').removeClass('flip')
			console.log(this) 
	}); //ends the .back click fxn
		
		$('.next').click(function(){
			card = $('.card_holder').last().detach();
			$('.card_holder').first().before(card)
	}); // ends next card fxn
		$('.back-button').click(function(){
		card = $('.card_holder').first().detach();
		$('.card_holder').last().after(card)
	});
}); // ends document ready 

	function regisrant_sent(){
	$('.register form').submit();
	$('.email').val("");
	return false;
}