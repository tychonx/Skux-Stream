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
      <h5>{song.name}</h5>
	  <h5 class="xvy">{song.author} | {song.album}</h5>
	</span>
    <span class="button">
		<span class="material-icons">play_arrow</span>
		<span class="material-icons">more_vert</span>
	</span>
	</span>	
</div>


<style>
  .border{
	  margin: 50px;
  }
  .song{
	  display: flex;
	  border-bottom: 1px solid black;
	  min-width: fit-content;
  }

  .song .cover{
	  width: 65px;
	  height: 65px;
	  border-radius: 2.5px; 
  }

  .song .song-detail{
	  text-align: left;
	  margin-top: 1.5%;
	  display: flex;
	  flex-direction: column;
	  margin-left: 1%;
	  flex-wrap: nowrap;
	}
	
	.song .song-detail h5{
	  font-family: 'Rokkitt', serif;
	  font-weight:normal;
	  color: white;
    }

	.song .song-detail .xvy{
		margin-top: 10%;
		opacity: 50%;
	}
</style>
