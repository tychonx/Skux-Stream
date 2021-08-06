<script>
	export let segment;
</script>

<style>
   nav{
    font-family: "Rokkitt", serif;
    display: flex;
    justify-content: space-around;
  }
  nav ul{
      display: flex;
      justify-content: end;
  }
  nav ul li{
      padding-left: 3rem;
      padding-right: 3rem;
      list-style: none;
  }
  nav ul li a{
      text-decoration: none;
      font-weight: lighter;
      color:#AFACAC;
      font-size: 1.3rem;
  }
</style>

<nav>
	<ul>
		<li><a aria-current="{segment === undefined ? 'page' : undefined}" href=".">Home</a></li>
		<li><a aria-current="{segment === 'about' ? 'page' : undefined}" href="about">Library</a></li>
		<!-- svelte-ignore a11y-missing-attribute -->
		<li><a >Search</a></li>
	</ul>
</nav>
