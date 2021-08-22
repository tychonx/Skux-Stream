<script>
	import {onMount} from 'svelte'
	import PlaylistBar from '../components/Playlist-bar.svelte';
	import AlbumBar from '../components/Album-bar.svelte';
	import SongBar from '../components/song-bar.svelte';
	import Nav from '../components/Nav.svelte';
	import Border from '../components/border.svelte'
	import Song from '../components/sub-component/song.svelte'


	onMount(
	async()=>{
			try {
			let d = await (await fetch("http://localhost:5050/", {mode: "cors"})).text();
			console.log(d);	
			} catch (error) {
				console.log(error.message);
			}

		}		
	) 
	const playlistSources = [
		{
			image : 'https://www.dropbox.com/s/ufh1hmrfiu4pp1s/album_cover_covers_header.original.jpg?raw=1',
			name : 'Rucle',
			id : 0

		},
		{
			image: 'https://www.dropbox.com/s/sj59b8a17fg0pmn/view-1.jpg?raw=1',
			name: 'Another dimension',
			id : 1
		},
		{
			image: 'https://www.dropbox.com/s/9d43c3amq7z18iv/view-2.jpg?raw=1',
			name: 'Retro mix',
			id : 2
		},
		{
			image: 'https://www.dropbox.com/s/hig472ov2ubys05/view-3.jpg?raw=1',
			name: 'Grief Love',
			id : 3
		},
		{
			image: 'https://www.dropbox.com/s/nnnhipa7gdqzjhd/view-4.jpg?raw=1',
			name: 'mystical adagio',
			id : 4
		},
		{
			image: 'https://www.dropbox.com/s/wfwd597x46fw867/view-5.jpg?raw=1',
			name: '野生の場所',
			id : 5
		},
		{
			image: 'https://www.dropbox.com/s/fxsiqxmb8tupqzi/album-1.jpg?raw=1',
			name: 'Love',
			id : 7
		},
		{
			image: 'https://www.dropbox.com/s/qkllzrnsfo5jpvj/view-6.jpg?raw=1',
			name: 'for you',
			id : 8
		},
		{
			image: 'https://www.dropbox.com/s/vsx9llzz2kpy294/album-4.jpg?raw=1',
			name: "'00s Indie Classics",
			id: 9
		}
	];

	const albumSource = [
		{
			image: 'https://www.dropbox.com/s/fxsiqxmb8tupqzi/album-1.jpg?raw=1',
			name: 'Art vs Science',
			id: 0
		},
		{
			image: 'https://www.dropbox.com/s/vsx9llzz2kpy294/album-4.jpg?raw=1',
			name: "'00s Indie Classics",
			id: 1
		},
		{
			image:
				'https://www.dropbox.com/s/ufh1hmrfiu4pp1s/album_cover_covers_header.original.jpg?raw=1',
			name: 'honey colors',
			id: 2
		},
		{
			image: 'https://www.dropbox.com/s/5etan463h9blf1c/album-2.jpg?raw=1',
			name: 'Comfort Arc',
			id: 3
		}
	];

const SongSources = [
    {		
	 source : [
			{
				image: 'https://www.dropbox.com/s/fxsiqxmb8tupqzi/album-1.jpg?raw=1',
				name: 'Art vs Science',
				author: 'Dillon Francis'
			},
			{
				image: 'https://www.dropbox.com/s/vsx9llzz2kpy294/album-4.jpg?raw=1',
				name: 'The Moment',
				author: 'KSI'
			},
			{
				image:
					'https://www.dropbox.com/s/ufh1hmrfiu4pp1s/album_cover_covers_header.original.jpg?raw=1',
				name: 'honey colors',
				author: 'Dillon Francis'
			},
			{
				image: 'https://www.dropbox.com/s/5etan463h9blf1c/album-2.jpg?raw=1',
				name: 'Comfort Arc',
				author: 'Dillon Francis'
			},
			{
				image:
					'https://www.dropbox.com/s/ufh1hmrfiu4pp1s/album_cover_covers_header.original.jpg?raw=1',
				name: 'honey colors',
				author: 'Dillon Francis'
			},
			{
				image:
					'https://www.dropbox.com/s/ufh1hmrfiu4pp1s/album_cover_covers_header.original.jpg?raw=1',
				name: 'honey colors',
				author: 'Dillon Francis'
			},
	   ]
   },
   {		
	 source : [
			{
				image: 'https://www.dropbox.com/s/fxsiqxmb8tupqzi/album-1.jpg?raw=1',
				name: 'Art vs Science',
				author: 'Dillon Francis'
			},
			{
				image: 'https://www.dropbox.com/s/vsx9llzz2kpy294/album-4.jpg?raw=1',
				name: 'The Moment',
				author: 'KSI'
			},
			{
				image:
					'https://www.dropbox.com/s/ufh1hmrfiu4pp1s/album_cover_covers_header.original.jpg?raw=1',
				name: 'honey colors',
				author: 'Dillon Francis'
			},
			{
				image: 'https://www.dropbox.com/s/5etan463h9blf1c/album-2.jpg?raw=1',
				name: 'Comfort Arc',
				author: 'Dillon Francis'
			},
			{
				image:
					'https://www.dropbox.com/s/ufh1hmrfiu4pp1s/album_cover_covers_header.original.jpg?raw=1',
				name: 'honey colors',
				author: 'Dillon Francis'
			},
			{
				image:
					'https://www.dropbox.com/s/ufh1hmrfiu4pp1s/album_cover_covers_header.original.jpg?raw=1',
				name: 'honey colors',
				author: 'Dillon Francis'
			},
	   ]
   },
   {		
	 source : [
			{
				image: 'https://www.dropbox.com/s/fxsiqxmb8tupqzi/album-1.jpg?raw=1',
				name: 'Art vs Science',
				author: 'Dillon Francis'
			},
			{
				image: 'https://www.dropbox.com/s/vsx9llzz2kpy294/album-4.jpg?raw=1',
				name: 'The Moment',
				author: 'KSI'
			},
			{
				image:
					'https://www.dropbox.com/s/ufh1hmrfiu4pp1s/album_cover_covers_header.original.jpg?raw=1',
				name: 'honey colors',
				author: 'Dillon Francis'
			},
			{
				image: 'https://www.dropbox.com/s/5etan463h9blf1c/album-2.jpg?raw=1',
				name: 'Comfort Arc',
				author: 'Dillon Francis'
			},
			{
				image:
					'https://www.dropbox.com/s/ufh1hmrfiu4pp1s/album_cover_covers_header.original.jpg?raw=1',
				name: 'honey colors',
				author: 'Dillon Francis'
			},
			{
				image:
					'https://www.dropbox.com/s/ufh1hmrfiu4pp1s/album_cover_covers_header.original.jpg?raw=1',
				name: 'honey colors',
				author: 'Dillon Francis'
			},
	   ]
   },    {		
	 source : [
			{
				image: 'https://www.dropbox.com/s/fxsiqxmb8tupqzi/album-1.jpg?raw=1',
				name: 'Art vs Science',
				author: 'Dillon Francis'
			},
			{
				image: 'https://www.dropbox.com/s/vsx9llzz2kpy294/album-4.jpg?raw=1',
				name: 'The Moment',
				author: 'KSI'
			},
			{
				image:
					'https://www.dropbox.com/s/ufh1hmrfiu4pp1s/album_cover_covers_header.original.jpg?raw=1',
				name: 'honey colors',
				author: 'Dillon Francis'
			},
			{
				image: 'https://www.dropbox.com/s/5etan463h9blf1c/album-2.jpg?raw=1',
				name: 'Comfort Arc',
				author: 'Dillon Francis'
			},
			{
				image:
					'https://www.dropbox.com/s/ufh1hmrfiu4pp1s/album_cover_covers_header.original.jpg?raw=1',
				name: 'honey colors',
				author: 'Dillon Francis'
			},
			{
				image:
					'https://www.dropbox.com/s/ufh1hmrfiu4pp1s/album_cover_covers_header.original.jpg?raw=1',
				name: 'honey colors',
				author: 'Dillon Francis'
			},
	   ]
   },
   
]  
</script>

<svelte:head>
	<title>Skux</title>
</svelte:head>

<main>
	<Border>
		<Nav />
		<PlaylistBar title="Recommended playlist" playlistSource={playlistSources} />
		<AlbumBar title="Albums" albums={albumSource} />
		<PlaylistBar title="Recommended playlist" playlistSource={playlistSources} />
		<Song song={SongSources[0].source[0]} />		
	</Border>

</main>
