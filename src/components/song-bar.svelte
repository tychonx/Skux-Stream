<script>
 import SongColumn from "./sub-component/Song-column.svelte";
 export let SongSource;
</script>

<div class="song-bar">
    {#each SongSource as sources}
      <SongColumn songs={sources.source}/>
    {/each}
</div>


<style>
 .song-bar{
     display: flex;
     flex-direction: row;
     margin: 1%;
 }

</style>