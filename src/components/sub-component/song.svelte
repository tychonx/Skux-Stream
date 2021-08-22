<script>
  String.prototype.limit = function(length) {
    return this.length > length ? (this.substring(0, length) + '...') : this;
  }
	export let song;
	console.log(song)
</script>
<div class="border">
	<span class="song">
	<img src={song.image} class="cover" alt="song cover">
	<span class="song-detail">

	</span>
	</span>	
</div>


<style>
  .border{
	  margin: 50px;
  }
  .song{
	  display: flex;
	  justify-content: stretch;
	  border-bottom: 1px solid black;
  }

  .song .cover{
	  width: 75px;
	  height: 75px;
	  border-radius: 2.5px;
  }
</style>
