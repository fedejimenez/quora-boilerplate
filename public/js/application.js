function vote(id, type){
	let url = "/question/"+id+"/"+type;
	// 1. Call the AJAX function
	let request = $.ajax({
	  method: "POST", // Set request type
	  url: url, // Set URL for AJAX to point to
	  // data: {"key_name": "value"} // Specify data to post
	  cache: false
	});
	
	request.done(function(response) {
	  // 2. What to do after receiving a response from the server	
	   let array = response.split(",");
	   $().html(array[2]);
	   let message = "#message-vote-"+id.toString()
	   let upvote = "#upvote-"+id.toString();
	   let downvote = "#downvote-"+id.toString();
	   $(message).html(array[2]);
	   $(upvote).replaceWith("<span id=upvote-"+id+"> | "+ array[0] + "</span>") ;
	   $(downvote).replaceWith("<span id=downvote-"+id+"> | "+ array[1] + "</span>") ;
	});

	request.fail(function() {
    alert( "error" );
  	});
};
