<script>
	import { onMount } from 'svelte';
	export let albums;
	export let title;
	 let transitionSpeed = 350;
	 let albumTransitionOpacity = 1;


  const back = ()=>{
        const transitioningAlbumn = albums[albums.length - 1]
        document.getElementById(transitioningAlbumn.id).style.opacity = 0;
        albums = [albums[albums.length -1],...albums.slice(0, albums.length - 1)]
        setTimeout(() => {document.getElementById(transitioningAlbumn.id).style.opacity = albumTransitionOpacity}, transitionSpeed);
    }
    const next = ()=>{
        const transitioningAlbumn = albums[0]
        document.getElementById(transitioningAlbumn.id).style.opacity = 0;
        albums = [...albums.slice(1, albums.length), albums[0]]
        setTimeout(() => {document.getElementById(transitioningAlbumn.id).style.opacity = albumTransitionOpacity}, transitionSpeed)
    }
</script>

<div class="album-bar">
	<!--headline-->
	<h1 class="album-name">{title}</h1>
	<div class="album-bar-view">
		{#each albums as album}
			<div class="album">
				<!--album overlay-->
				<div class="album-thumbnail-overlay">
					<!--buttons-->
					<div class="album-overlay-btn">
						<span class="material-icons options">more_vert</span>
						<span class="material-icons play">play_arrow</span>
					</div>
				</div>

				<!--Album Cover-->
				<img src={album.image} alt="album-pic" class="album-cover" />

				<h1 class="album-name">{album.name}</h1>
			</div>
		{/each}
		<span class="material-icons playlist-carousel-control-back" on:click={back}
			>navigate_before</span
		>
		<span class="material-icons playlist-carousel-control-next" on:click={next}>navigate_next</span>
	</div>
</div>

<style>
	:root {
		--Album-height: 200px;
		--Album-width: 420px;
	}

	.album-bar {
		margin-top: 2.5%;
		margin-left: 1%;
		padding-bottom: 5%;
	}

	.album-bar .album-name {
		text-align: left;
		font-family: 'Rokkitt', serif;
		font-weight: lighter;
		color: #ffffff83;
	}

	.album-bar .album-bar-view {
		display: flex;
		flex-direction: row;
	}

	.album-bar .album-bar-view .playlist-carousel-control-back {
		-webkit-user-select: none; /* Safari */        
		-moz-user-select: none; /* Firefox */
		-ms-user-select: none; /* IE10+/Edge */
		user-select: none; /* Standard */
		position: absolute;
		margin-top: 5%;
		left: 0;
		padding: 10px;
		background-color: whitesmoke;
		border-radius: 50%;
	}

	.album-bar .album-bar-view .playlist-carousel-control-next {
		-webkit-user-select: none; /* Safari */        
		-moz-user-select: none; /* Firefox */
		-ms-user-select: none; /* IE10+/Edge */
		user-select: none; /* Standard */
		position: absolute;
		margin-top: 5%; 
		right: 0;
		padding: 10px;
		background-color: whitesmoke;
		border-radius: 50%;
	}

	.album-bar .album-bar-view .album {
		margin-right: 35px;
	}

	.album-bar .album-bar-view .album .album-thumbnail-overlay {
		background: rgb(43, 35, 35);
		background: linear-gradient(
			180deg,
			rgba(43, 35, 35, 0) 0%,
			rgba(1, 0, 0, 0.804359243697479) 98%
		);
		width: var(--Album-width);
		height: var(--Album-height);
		position: absolute;
		border-radius: 10px;
		display: none;
		-webkit-user-select: none; /* Safari */        
		-moz-user-select: none; /* Firefox */
		-ms-user-select: none; /* IE10+/Edge */
		user-select: none; /* Standard */
	}

	.album-bar .album-bar-view .album:hover .album-thumbnail-overlay {
		display: block;
	}

	.album-bar .album-bar-view .album .album-thumbnail-overlay .album-overlay-btn {
		display: flex;
		width: var(--Album-width);
		justify-content: space-between;
		position: absolute;
		color: black;
	}

	.album-bar .album-bar-view .album .album-overlay-btn .material-icons {
		cursor: pointer;
		color: white;
		font-size: 2rem;
	}

	.album-bar .album-bar-view .album .album-cover {
		width: var(--Album-width);
		height: var(--Album-height);
		object-fit: cover;
		border-radius: 10px;
        object-fit: cover;
		-webkit-user-select: none; /* Safari */        
		-moz-user-select: none; /* Firefox */
		-ms-user-select: none; /* IE10+/Edge */
		user-select: none; /* Standard */
	}

	.album-bar .album-bar-view .album .album-name {
		font-family: 'Ropa Sans', sans-serif;
		color: whitesmoke;
		font-weight: lighter;
	}
</style>
