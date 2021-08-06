<script>
    export let title;
    export let playlistSource;
</script>

<div class="playlist-bar">
  <h1 class="playlist-title">{title}</h1>
  <div class="playlist-bar-view">
      {#each playlistSource as playlist}
        <div class="playlist">
            <div class="playlist-thumbnail-overlay">
                <span class="material-icons">play_arrow</span>
            </div>
            <img src={playlist.image} alt="view" class="playlist-thumbnail">
            <span class="playlist-meta">
                <p class="playlist-name">{playlist.name}</p>
                <span class="material-icons">more_vert</span>
            </span>
        </div>
      {/each}

  </div>
</div>

<style>
    :root{
      --playlist-height : 200px;
      --playlist-width : 200px;
    }
    
   .playlist-bar{
       margin: 1%;
       padding-bottom: 5%;
    }
    
    .playlist-bar .playlist-title{
        text-align: left;
        font-family: 'Rokkitt', serif;
        font-weight:lighter;
        color: #FFFFFF;
        opacity: 50%;
    }
    .playlist-bar .playlist-bar-view{
       display: flex;
       flex-direction: row;
    }
    
    .playlist-bar .playlist-bar-view .playlist{
        padding-right: 25px;
    }
    .playlist-bar .playlist-bar-view .playlist:hover .playlist-thumbnail-overlay{
       display: block;
    }
    
    .playlist-bar .playlist-bar-view .playlist .playlist-thumbnail{
        border-radius: 10px;
        width:var(--playlist-width);
        height:var(--playlist-height);
    }
    
    .playlist-bar .playlist-thumbnail-overlay{
        text-align: left;
        position: absolute;
        animation: fadeIn 200ms;
        display: none;
        float:right;
        width:var(--playlist-width);
        height:var(--playlist-height);
        border-radius: 10px;
        background: rgb(43,35,35);
        background: linear-gradient(180deg, rgba(43,35,35,0) 0%, rgba(1,0,0,0.804359243697479) 98%);
    }
    .playlist-bar .playlist-thumbnail-overlay span{
        cursor: pointer;
        border-radius: 50%;
        margin: 10px;
        padding: 5px;
        font-size: x-large;
        background-color: rgba(0, 0, 0, 0.233);
        color: white;       
    }
    
   .playlist-bar .playlist-bar-view .playlist .playlist-meta{
       color:white;
       display: flex;
       justify-content: space-between;
    }

    .playlist-bar .playlist-bar-view .playlist .playlist-meta .playlist-name{
     font-family: 'Ropa Sans', sans-serif;
     font-weight: lighter;
     color: white;
    }
    .playlist-bar .playlist-bar-view .playlist .playlist-meta span{
        cursor: pointer;
    }

</style>