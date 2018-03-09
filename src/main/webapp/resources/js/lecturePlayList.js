var channelName = 'chul9hyung';

$(document).ready(function(){
	$.get(
		"https://www.googleapis.com/youtube/v3/channels",{
			part: 'contentDetails',
			forUsername: channelName,
			key: 'AIzaSyDMNDM5Kr0QdP2n9Rpb5xVn68waXWRsGmw'},
			function(data){
				$.each(data.items, function(i, item){
					console.log(item);
					pid = item.contentDetails.relatedPlaylists.uploads;
					getVids(pid);
				})
			}
	);

	function getVids(pid){
		$.get(
		"https://www.googleapis.com/youtube/v3/playlistItems",{
			part: 'snippet',
			maxResults: 10,
			playlistId: pid,
			key: 'AIzaSyDMNDM5Kr0QdP2n9Rpb5xVn68waXWRsGmw'},
			function(data){
				var output;
				$.each(data.items, function(i, item){
					console.log(item);
					videoTitle = item.snippet.title;
					videoId = item.snippet.resourceId.videoId;
					var iframeStyle = 'style="margin-top:25px; width:320px; height:180px;" scrolling = "no" frameborder="0"';
					var aTagStyle = '"style="text-decoration:none; color:black;"';
					
					/*output = '<a href="home.do"><li><iframe src=\"//www.youtube.com/embed/'+videoId+'\"></iframe></li>' +videoTitle +'</a>';*/
					output = '<li><a href="lectureDeatil.do?videoId='+videoId+aTagStyle+'>'+'<iframe '+iframeStyle+' src=\"//img.youtube.com/vi/'+videoId+'/mqdefault.jpg\" ></iframe><p style="display:inline;">' +videoTitle+'</p></a></li>';
					
					//Append to results listStyleType
					$('#results').append(output);
				})
			}
	);
	}
});