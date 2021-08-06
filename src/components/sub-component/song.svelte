<script>
  String.prototype.limit = function(length) {
    return this.length > length ? (this.substring(0, length) + '...') : this;
  }
	export let song;
</script>

<span class="song">
	<!--song image-->
	<img src={song.image} alt="song-cover" class="song-cover" />
	<!--song meta-data-->
	<div class="song-meta-data">
		<h4 class="song-name">{song.name}</h4>
		<h6 class="song-author">-{song.author}</h6>
	</div>
	<!--buttons-->
	<div class="buttons">
		<span class="material-icons play">play_arrow</span>
		<span class="material-icons more">more_vert</span>
	</div>
</span>

<style>
	.song {
		font-weight: lighter;
		font-family: 'Rokkitt', serif;
		color: white;
		display: flex;
		flex-direction: row;  
		justify-content: space-between;
		background-color: #726b6b;
    width:250px;
		margin-bottom: 5%;
		max-height: 26%;
		border-radius: 5px;
	}

 .song .song-cover {
		margin: 1%;
		max-width: 40px;
		max-height: 40px;
		border-radius: 10%;
	}
 .song .song-meta-data {
    margin-top:1%;
		margin-left: 2%;
		color: white;
	}
 .song .song-meta-data h6,h4 {
	 text-align: left;
	}

 .song .song-meta-data .song-name {
		font-weight: lighter;
	}

  .song .song-meta-data .song-author {
		font-weight: lighter;
		font-size: small;
	}

 .song .buttons {
		margin-top: 1%;
		color: black;
	}

  .song .buttons span {
		font-size: xx-large;
		padding-left: 5px;
	}
</style>
