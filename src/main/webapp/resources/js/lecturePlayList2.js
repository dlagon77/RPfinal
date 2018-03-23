var channelID = 'UCMPoq1lKBnqk2UlJ_QlT0CQ';
var apiKey = 'AIzaSyDMNDM5Kr0QdP2n9Rpb5xVn68waXWRsGmw';

$.ajax({
	url:'https://www.googleapis.com/youtube/v3/search?key=' + apiKey +'&channelId=' + channelID + '&part=snippet,id&order=date&maxResults=20',
	dataType: 'jsonp',
	success: function(data){
		$.each(data.items, function(key, value){
			var fragment = $(document.createDocumentFragment());
			fragment
				.append([
					'<li>',
						'<a href="#">',
							'<div class="style1">',
								'<iframe width="560" height="315" src="https://www.youtube.com/embed/'+ value.id.videoId + '"frameborder="0" allowfullscreen></iframe>',
							'</div>',
							'<div class="style2">',
								'<strong>' + value.snippet.title + '</strong>',
							'</div>',
						'</a>',
					'</li>'
				].join(''));
			$('#results').append(fragment);
		});
	}
})