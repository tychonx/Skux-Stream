<script>
 import SongColumn from "./sub-component/Song-column.svelte";
 export let SongSource;
 console.log(SongSource);
</script>

<div class="song-bar">
    <SongColumn songs={SongSource}/>
    <SongColumn songs={SongSource}/>
    <SongColumn songs={SongSource}/>
    <SongColumn songs={SongSource}/>
    <SongColumn songs={SongSource}/>
</div>


<style>
 .song-bar{
     display: flex;
     flex-direction: row;
     margin: 1%;
 }

</style>