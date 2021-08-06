<script>
	import PlaylistBar from '../components/Playlist-bar.svelte';
	import AlbumBar from '../components/Album-bar.svelte';
	import SongBar from '../components/song-bar.svelte';
	import Nav from '../components/Nav.svelte';
	const playlistSources = [
		{
			image: 'https://www.dropbox.com/s/sj59b8a17fg0pmn/view-1.jpg?raw=1',
			name: 'Another dimension'
		},
		{
			image: 'https://www.dropbox.com/s/9d43c3amq7z18iv/view-2.jpg?raw=1',
			name: 'Retro mix'
		},
		{
			image: 'https://www.dropbox.com/s/hig472ov2ubys05/view-3.jpg?raw=1',
			name: 'Grief Love'
		},
		{
			image: 'https://www.dropbox.com/s/nnnhipa7gdqzjhd/view-4.jpg?raw=1',
			name: 'mystical adagio'
		},
		{
			image: 'https://www.dropbox.com/s/wfwd597x46fw867/view-5.jpg?raw=1',
			name: '野生の場所'
		},
		{
			image: 'https://www.dropbox.com/s/qkllzrnsfo5jpvj/view-6.jpg?raw=1',
			name: 'for you'
		},
		{
			image: 'https://www.dropbox.com/s/qkllzrnsfo5jpvj/view-6.jpg?raw=1',
			name: 'for you'
		}
	];

	const albumSource = [
		{
			image: 'https://www.dropbox.com/s/fxsiqxmb8tupqzi/album-1.jpg?raw=1',
			name: 'Art vs Science'
		},
		{
			image: 'https://www.dropbox.com/s/vsx9llzz2kpy294/album-4.jpg?raw=1',
			name: "'00s Indie Classics"
		},
		{
			image:
				'https://www.dropbox.com/s/ufh1hmrfiu4pp1s/album_cover_covers_header.original.jpg?raw=1',
			name: 'honey colors'
		},
		{
			image: 'https://www.dropbox.com/s/5etan463h9blf1c/album-2.jpg?raw=1',
			name: 'Comfort Arc'
		}
	];

	const SongSources = [
		[
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
			}
		],
		[
			{
				image:'https://www.dropbox.com/s/136sv7p8jyud3ho/song-1.jpg?raw=1',
				name: 'Darkness',
				author: 'Francis'
			},			
		]
	];
</script>

<svelte:head>
	<title>Skux</title>
</svelte:head>

<main>
	<Nav />
	<PlaylistBar title="Recommended playlist" playlistSource={playlistSources} />
	<AlbumBar title="Albums" albums={albumSource} />
	<PlaylistBar title="Recommended playlist" playlistSource={playlistSources} />
	<SongBar SongSource={SongSources} />
</main>
