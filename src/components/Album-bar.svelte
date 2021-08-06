<script>
  import { onMount } from "svelte";
  export let albums;
  export let title;

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
  </div>
</div>

<style>
    :root{
      --Album-height : 200px;
      --Album-width : 420px;
    }

  .album-bar {
    margin-top: 2.5%;
    margin-left: 1%;
    padding-bottom: 5%;
  }

  .album-bar .album-name {
    text-align: left;
    font-family: "Rokkitt", serif;
    font-weight: lighter;
    color: #ffffff83;
  }

  .album-bar .album-bar-view {
    display: flex;
    flex-direction: row;
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
    width:var(--Album-width);
    height:var(--Album-height);
    position: absolute;
    border-radius: 10px;
    display: none;
  }

  .album-bar .album-bar-view .album:hover .album-thumbnail-overlay {
    display: block;
  }

  .album-bar .album-bar-view .album .album-thumbnail-overlay .album-overlay-btn {
    display: flex;
    width:var(--Album-width);
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
    width:var(--Album-width);
    height:var(--Album-height);
    object-fit: cover;
    border-radius: 10px;
  }

  .album-bar .album-bar-view .album .album-name{
    font-family: 'Ropa Sans', sans-serif;
    color: whitesmoke;
    font-weight: lighter;
  }

</style>
