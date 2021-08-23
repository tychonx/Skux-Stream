<script>
    import Song from './song.svelte'
    export let songs;
</script>

<div class="song-column">
    {#each songs as song}     
       <Song song={song}/>
    {/each}
</div>


<style>
  .song-column{
      display: flex;
      flex-direction: column;
  }
</style>