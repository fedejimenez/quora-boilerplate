function upvote(id){
	let url = "/question/"+id+"/upvote";
	// 1. Call the AJAX function
	let request = $.ajax({
	  method: "POST", // Set request type
	  url: url, // Set URL for AJAX to point to
	  // data: {"key_name": "value"} // Specify data to post
	});
	
	request.done(function(response) {
	  // 2. What to do after receiving a response from the server	
	  $('#message-vote').html(response);
	  // $("#upvote").load(location.href + " #upvote");
	  $("#upvote-count").load(location.href+" #upvote-count>*"," ");
	  $("#downvote-count").load(location.href+" #downvote-count>*"," ");
      
	});

	request.fail(function() {
    alert( "error" );
  	});
};

function downvote(id){
	let url = "/question/"+id+"/downvote";
	// 1. Call the AJAX function
	let request = $.ajax({
	  method: "POST", // Set request type
	  url: url, // Set URL for AJAX to point to
	  // data: {"key_name": "value"} // Specify data to post
	});
	
	request.done(function(response) {
	  // 2. What to do after receiving a response from the server	
	  $('#message-vote').html(response);
	  $("#upvote-count").load(location.href+" #upvote-count>*"," ");
	  $("#downvote-count").load(location.href+" #downvote-count>*"," ");
	});

	request.fail(function() {
    alert( "error" );
  	});
};