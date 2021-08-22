<script>
    import { flip } from 'svelte/animate'
	export let title;
	export let playlistSource;
	 let playlistTransitionSpeed = 350;
     let playlisyTransitionOpacity = 2;

    const back = ()=>{
        const transitioningPlaylist = playlistSource[playlistSource.length - 1]
        document.getElementById(transitioningPlaylist.id).style.opacity = 0;
        playlistSource = [playlistSource[playlistSource.length -1],...playlistSource.slice(0, playlistSource.length - 1)]
        setTimeout(() => {document.getElementById(transitioningPlaylist.id).style.opacity = playlisyTransitionOpacity}, playlistTransitionSpeed);
    }
    const next = ()=>{
        const transitioningPlaylist = playlistSource[0]
        document.getElementById(transitioningPlaylist.id).style.opacity = 0;
        playlistSource = [...playlistSource.slice(1, playlistSource.length), playlistSource[0]]
        setTimeout(() => {document.getElementById(transitioningPlaylist.id).style.opacity = playlisyTransitionOpacity}, playlistTransitionSpeed)
    }
</script>

<div class="playlist-bar">
    <!--playlist name-->
	<h1 class="playlist-title">{title}</h1>
    <!--playlist carousel-->
	<center>
	<div class="playlist-carousel-view">
        {#each playlistSource as playlist, index(playlist)}
        <div class="playlist" id={playlist.id}>
            <div class="playlist-thumbnail-overlay">
                <span class="material-icons">play_arrow</span>
            </div>
            <img src={playlist.image} alt="view" class="playlist-thumbnail" />
            <span class="playlist-meta">
                <p class="playlist-name">{playlist.name}</p>
                <span class="material-icons">more_vert</span>
            </span>
        </div>
		{/each}
        <span class="material-icons playlist-carousel-control-back" on:click={back}>navigate_before</span>
        <span class="material-icons playlist-carousel-control-next" on:click={next}>navigate_next</span>
	</div>		
	</center>

</div>

<style>
	:root {
		--playlist-width:250px;
		--playlist-height: 250px;
	}

	.playlist-bar {
		margin: 1%;
		padding-bottom: 5%;
	}

	.playlist-bar .playlist-title {
		text-align: left;
		font-family: 'Rokkitt', serif;
		font-weight: lighter;
		color: #ffffff;
		opacity: 50%;
	}
	.playlist-bar .playlist-carousel-view {
		display: flex;
		flex-direction: row;
	}

    .playlist-bar .playlist-carousel-view .playlist-carousel-control-back{
        position: absolute;
        margin-top: 5%;
		left: 0;
		padding: 10px;
		background-color: whitesmoke;
		border-radius: 50%;
		-webkit-user-select: none; /* Safari */        
		-moz-user-select: none; /* Firefox */
		-ms-user-select: none; /* IE10+/Edge */
		user-select: none; /* Standard */
    }

	.playlist-bar .playlist-carousel-view .playlist-carousel-control-next{
        position: absolute;
        margin-top: 5%;
		right: 0;
		padding: 10px;
		background-color: whitesmoke;
		border-radius: 50%;
		-webkit-user-select: none; /* Safari */        
		-moz-user-select: none; /* Firefox */
		-ms-user-select: none; /* IE10+/Edge */
		user-select: none; /* Standard */
    }



	.playlist-bar .playlist-carousel-view .playlist {
		padding-right: 25px;
	}
	.playlist-bar .playlist-carousel-view .playlist:hover .playlist-thumbnail-overlay {
		display: block;
	}

	.playlist-bar .playlist-carousel-view .playlist .playlist-thumbnail {
		object-fit: cover;
		-webkit-user-select: none; /* Safari */        
		-moz-user-select: none; /* Firefox */
		-ms-user-select: none; /* IE10+/Edge */
		user-select: none; /* Standard */
		border-radius: 10px;
		width: var(--playlist-width);
		height: var(--playlist-height);
	}

	.playlist-bar .playlist-thumbnail-overlay {
		-webkit-user-select: none; /* Safari */        
		-moz-user-select: none; /* Firefox */
		-ms-user-select: none; /* IE10+/Edge */
		user-select: none; /* Standard */
		text-align: left;
		position: absolute;
		animation: fadeIn 200ms;
		display: none;
		float: right;
		width: var(--playlist-width);
		height: var(--playlist-height);
		border-radius: 10px;
		background: rgb(43, 35, 35);
		background: linear-gradient(
			180deg,
			rgba(43, 35, 35, 0) 0%,
			rgba(1, 0, 0, 0.804359243697479) 98%
		);
	}
	.playlist-bar .playlist-thumbnail-overlay span {
		cursor: pointer;
		border-radius: 50%;
		margin: 10px;
		padding: 5px;
		font-size: x-large;
		background-color: rgba(0, 0, 0, 0.233);
		color: white;
	}

	.playlist-bar .playlist-carousel-view .playlist .playlist-meta {
		color: white;
		display: flex;
		justify-content: space-between;
	}

	.playlist-bar .playlist-carousel-view .playlist .playlist-meta .playlist-name {
		font-family: 'Ropa Sans', sans-serif;
		font-weight: lighter;
		color: white;
	}
	.playlist-bar .playlist-carousel-view .playlist .playlist-meta span {
		cursor: pointer;
	}
</style>
