<link rel="stylesheet" href="videojs.ads.css">
  
<video id="video" src="movie.mp4" controls></video>
<script src="video.js"></script>
<script src="videojs.ads.js"></script>
<script>
videojs('video', {}, function() {
  var player = this;
  player.ads(); // initialize the ad framework
  // your custom ad integration code
});
</script>
