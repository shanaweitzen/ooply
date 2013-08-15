$(document).ready(function(){
	$('.front').click(function(){
			$(this).parents('.card_holder').addClass('flip')
			console.log(this) //this is a ref to the card_holder i clicked

	}); 

	$('.back').click(function(){
			$(this).parents('.card_holder').removeClass('flip')
			console.log(this) //this is a ref to the card_holder i clicked

	}); //ends the .back click function

	$('.next').click(function(){
			card = $('.card_holder').last().detach();
			$('.card_holder').first().before(card)
	});
}); // ends the document.ready function 



// card # 
// $(#cardA).hide();
// $(#cardB).show();

// next week make a branch 



